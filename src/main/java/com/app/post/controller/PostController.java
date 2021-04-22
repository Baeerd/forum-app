package com.app.post.controller;

import com.app.common.controller.BaseController;
import com.app.common.entity.PageModel;
import com.app.common.exception.MessageException;
import com.app.common.util.Util;
import com.app.post.entity.Post;
import com.app.post.entity.PostBrowse;
import com.app.post.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Scope("prototype")
@RequestMapping("/post")
public class PostController extends BaseController<Post> {

    @Autowired
    private PostService postService;

    /**
     * 首页查询帖子列表
     * @param request
     * @return
     */
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/index");
        Map<String, String> param = new HashMap<>();
        if(null!=request){
            String jsonFromRequest = super.getJsonFromRequest(request);
            param = Util.jsonToMap(jsonFromRequest);
        }
        PageModel<Post> page = postService.findByPage(param);
        modelAndView.addObject("page", page);
        return modelAndView;
    }

    /**
     * 帖子详情界面
     * @param request
     * @return
     */
    @RequestMapping("/postDetail")
    public ModelAndView postDetail(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("/post/postDetail");
        Map<String, String> params = new HashMap<>();
        if(null!=request){
            String jsonFromRequest = super.getJsonFromRequest(request);
            params = Util.jsonToMap(jsonFromRequest);
        }
        if(!params.isEmpty()) {
            List<Post> postList = postService.findByParam(params);
            mv.addObject("post", postList.get(0));
        }
        return mv;
    }

    /**
     * 添加或更新帖子
     * @param request
     * @param response
     * @param post
     * @param file
     */
    @RequestMapping(value="/addOrUpdatePost", consumes="multipart/form-data", method= RequestMethod.POST)
    public void addOrUpdatePost(HttpServletRequest request, HttpServletResponse response, Post post,
                           @RequestParam(value ="file", required = false) MultipartFile file) {
        postService.addOrUpdatePost(request, post, file);
        try {
            response.sendRedirect("/");
        } catch (IOException e) {
            throw new MessageException(e.getMessage());
        }
    }
    
    @RequestMapping("/postBrowse")
    public ModelAndView postBrowse(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("/post/postBrowse");
        String jsonFromRequest = super.getJsonFromRequest(request);
        Map<String, String> params = Util.jsonToMap(jsonFromRequest);
        PostBrowse postBrowse = postService.findPostBrowse(params);
        mv.addObject("postBrowse", postBrowse);
        return mv;
    }
    
}
