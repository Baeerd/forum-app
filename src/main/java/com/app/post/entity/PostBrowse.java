package com.app.post.entity;

import com.app.comment.entity.Comment;
import com.app.user.entity.User;

import java.util.List;

public class PostBrowse {
    
    // 发表人信息
    private User user;
    
    // 帖子信息
    private Post post;
    
    // 帖子相关评论信息
    private List<Comment> comments;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
