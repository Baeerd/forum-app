package com.app.comment.controller;

import com.app.comment.entity.Comment;
import com.app.comment.service.CommentService;
import com.app.common.controller.BaseController;
import com.app.common.entity.PageModel;
import com.app.common.util.Util;
import com.app.post.entity.Post;
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
@RequestMapping("/comment")
public class CommentController extends BaseController<Comment> {

    @Autowired
    private CommentService commentService;
    
    @RequestMapping("/commentList")
    public ModelAndView commentList(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("/comment/commentList");
        Map<String, String> param = new HashMap<>();
        if(null!=request){
            String jsonFromRequest = super.getJsonFromRequest(request);
            param = Util.jsonToMap(jsonFromRequest);
        }
        PageModel<Comment> page = commentService.findByPage(param);
        mv.addObject("commentSearch", param.get("evaluateContent"));
        mv.addObject("page", page);
        return mv;
    }
}
