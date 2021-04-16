package com.app.common.controller;

import com.app.common.entity.AbstractEntity;
import com.app.common.entity.AppConfig;
import com.app.common.entity.PageModel;
import com.app.common.util.Util;
import com.app.post.entity.Post;
import com.app.post.service.PostService;
import com.app.user.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 通用Controller，页面跳转等功能
 */
@Controller
public class CommonController extends BaseController<AbstractEntity>{

    @Autowired
    private AppConfig appConfig;
    @Autowired
    private PostService postService;

    @RequestMapping("/{page}.html")
    public String showPage(@PathVariable String page) {
        return page;
    }

    /**
     * 跳转到首页,首页路径在application.properties文件中配置
     * @param model 可以向请求中放值
     * @return
     */
    @RequestMapping("/")
    public String index(HttpServletRequest request, Model model) {
        Map<String, String> params = new HashMap<>();
        if(null!=request){
            String jsonFromRequest = super.getJsonFromRequest(request);
            params = Util.jsonToMap(jsonFromRequest);
        }
        // 首页默认查询帖子信息
        PageModel<Post> page = postService.findByPage(params);
        model.addAttribute("page", page);
        return appConfig.getIndex();
    }

}
