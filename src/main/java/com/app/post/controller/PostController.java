package com.app.post.controller;

import com.app.common.controller.BaseController;
import com.app.common.entity.PageModel;
import com.app.common.util.Util;
import com.app.part.entity.MoviePart;
import com.app.post.entity.Post;
import com.app.post.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
@Scope("prototype")
@RequestMapping("/post")
public class PostController extends BaseController<Post> {

    @Autowired
    private PostService postService;
    
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/index");
        Map<String, String> param = new HashMap<>();
        if(null!=request){
            String jsonFromRequest = super.getJsonFromRequest(request);
            param = Util.jsonToMap(jsonFromRequest);
        }
        PageModel<Post> page = postService.findByPage(param);
        modelAndView.addObject("partName", param.get("partName"));
        modelAndView.addObject("page", page);
        return modelAndView;
    }
    
}
