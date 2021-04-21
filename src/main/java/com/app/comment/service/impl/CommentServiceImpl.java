package com.app.comment.service.impl;

import com.app.comment.entity.Comment;
import com.app.comment.mapper.CommentMapper;
import com.app.comment.service.CommentService;
import com.app.common.service.impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {

    @Autowired
    private CommentMapper commentMapper;
    
    @Override
    public List<Comment> findByPostId(Long postId) {
        Map<String, String> params = new HashMap<>();
        params.put("postId", postId.toString());
        return commentMapper.find(params);
    }
}
