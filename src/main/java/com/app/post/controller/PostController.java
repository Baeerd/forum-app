package com.app.post.controller;

import com.app.common.controller.BaseController;
import com.app.post.entity.Post;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Scope("prototype")
@RequestMapping("/post")
public class PostController extends BaseController<Post> {

}
