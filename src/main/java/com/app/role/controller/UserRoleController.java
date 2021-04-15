package com.app.role.controller;

import com.app.common.controller.BaseController;
import com.app.role.entity.UserRole;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@Scope("prototype")
@RequestMapping("/user-role")
public class UserRoleController extends BaseController<UserRole> {

}
