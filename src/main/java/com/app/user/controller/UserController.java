package com.app.user.controller;

import com.app.common.controller.BaseController;
import com.app.user.entity.User;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Scope("prototype")
@RequestMapping("/user")
public class UserController extends BaseController<User> {

}
