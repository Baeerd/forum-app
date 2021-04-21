package com.app.comment.service;

import com.app.comment.entity.Comment;
import com.app.common.service.BaseService;

import java.util.List;

public interface CommentService extends BaseService<Comment> {

    /**
     * 根据帖子ID查询评论信息
     * @param postId
     * @return
     */
    List<Comment> findByPostId(Long postId);
}
