package com.app.comment.controller;

import com.app.comment.entity.Comment;
import com.app.common.controller.BaseController;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Scope("prototype")
@RequestMapping("/comment")
public class CommentController extends BaseController<Comment> {

}
