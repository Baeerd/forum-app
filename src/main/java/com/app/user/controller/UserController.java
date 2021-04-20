package com.app.user.controller;

import com.app.common.controller.BaseController;
import com.app.common.entity.AppConfig;
import com.app.common.entity.PageModel;
import com.app.common.entity.Response;
import com.app.common.exception.MessageException;
import com.app.common.util.LoginUtil;
import com.app.common.util.Util;
import com.app.post.entity.Post;
import com.app.post.service.PostService;
import com.app.user.entity.User;
import com.app.user.service.UserService;
import com.github.pagehelper.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 注册登陆相关操作Controller
 */
@RequestMapping("/system")
@Controller
public class UserController extends BaseController<User> {

    @Autowired
    private UserService userService;
    
    @RequestMapping("/login")
    public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String json = getJsonFromRequest(request);
        Map<String, String> params = Util.jsonToMap(json);
        // 根据用户名密码查询数据库
        try {
            User user = userService.validateLogin(params.get("username"), params.get("password"));
            // 缓存用户信息
            LoginUtil.login(user);
            // 向session中放入用户信息
            request.getSession().setAttribute(LoginUtil.LOGINUSER, user);
            response.sendRedirect(LoginUtil.getInterceptorPath());
        } catch (MessageException e) {
            request.getSession().setAttribute("username", params.get("username"));
            request.getSession().setAttribute("error", e.getMessage());
            response.sendRedirect(LoginUtil.LOGINPAGE);
        }
    }

    @RequestMapping("/regist")
    public ModelAndView regist(HttpServletRequest request) {

        ModelAndView mv = new ModelAndView();

        String json = this.getJsonFromRequest(request);
        User user = Util.jsonToBean(json, User.class);
        mv.addObject(user);

        //用户名或密码为空，注册失败
        if(StringUtil.isEmpty(user.getUsername())||StringUtil.isEmpty(user.getPassword())){
            mv.setViewName("regist");
            mv.addObject("msg","注册失败！请输入用户名密码");
            return mv;
        }

        //已存在的用户名，注册失败
        Map<String,String> params = new HashMap<>();
        params.put("username",user.getUsername());
        List<User> userList = userService.findByParam(params);
        if(!userList.isEmpty()){
            mv.setViewName("/regist");
            mv.addObject("msg","注册失败！此用户名已存在");
            return mv;
        }


        user.setCreatedBy("NA");
        user.setCreatedDt(new Date());
        userService.insert(user);
        mv.setViewName("/login");
        mv.addObject("msg","注册成功，请登录！");
        return mv;
    }

    /**
     * 注销
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/login");
        request.getSession().invalidate();
        return modelAndView;
    }

    @RequestMapping("/userDetail")
    public ModelAndView userDetail(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("/user/userDetail");
        Map<String, String> params = new HashMap<>();
        if(null!=request){
            String jsonFromRequest = super.getJsonFromRequest(request);
            params = Util.jsonToMap(jsonFromRequest);
        }
        // 首页默认查询帖子信息
        List<User> userList = userService.findByParam(params);
        mv.addObject("user", userList.get(0));
        return mv;
    }

    @RequestMapping(value="/updateUser", consumes="multipart/form-data", method=RequestMethod.POST)
    public void updateUser(HttpServletRequest request, HttpServletResponse response, User user,
                                   @RequestParam(value ="file", required = false) MultipartFile file) {
        userService.updateUser(request, user, file);
        try {
            response.sendRedirect("/system/userDetail?username="+user.getUsername());
        } catch (IOException e) {
            throw new MessageException(e.getMessage());
        }
    }

}
