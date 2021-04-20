package com.app.post.service;

import com.app.common.service.BaseService;
import com.app.post.entity.Post;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

public interface PostService extends BaseService<Post> {

    void addOrUpdatePost(HttpServletRequest request, Post post, MultipartFile file);
    
}
