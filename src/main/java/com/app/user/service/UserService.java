package com.app.user.service;

import com.app.common.service.BaseService;
import com.app.user.entity.User;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

public interface UserService extends BaseService<User> {

    /**
     *  登陆校验
     * @param username
     * @param password
     * @return
     */
    public User validateLogin(String username, String password);

    /**
     * 更新个人信息
     * @param request
     * @param user
     * @param file
     */
    void updateUser(HttpServletRequest request, User user, MultipartFile file);

    /**
     * 根据用户名查询用户信息
     * @param username
     * @return
     */
    User findByUserName(String username);
    
}
