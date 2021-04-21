package com.app.post.service.impl;

import com.app.comment.entity.Comment;
import com.app.comment.service.CommentService;
import com.app.common.entity.Constant;
import com.app.common.util.LoginUtil;
import com.app.post.entity.Post;
import com.app.post.entity.PostBrowse;
import com.app.post.service.PostService;
import com.app.user.entity.User;
import com.app.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.common.service.impl.BaseServiceImpl;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class PostServiceImpl extends BaseServiceImpl<Post> implements PostService {

    @Autowired
    private UserService userService;
    @Autowired
    private CommentService commentService;
    
    @Override
    public void addOrUpdatePost(HttpServletRequest request, Post post, MultipartFile file) {
        String dirPath = request.getSession().getServletContext().getRealPath("/");
        String fileName = file.getOriginalFilename();
        post.setPostFile(Constant.POST_PORTRAIT_PATH + fileName);
        post.setPostContent(post.getPostContent().substring(1));
        if(post.getId() == null) {
            post.setPostCode("t"+new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
            post.setCreatedBy(LoginUtil.getUserName());
            post.setCreatedDt(new Date());
            post.setBrowseCount(new BigDecimal(0));
            this.insert(post);
        } else {
            this.update(post);
        }
        if(file.isEmpty()) {
            return;
        }
        File dest = new File(dirPath + post.getPostFile());
        try {
            file.transferTo(dest);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public PostBrowse findPostBrowse(Map<String, String> params) {
        PostBrowse postBrowse = new PostBrowse();
        // 查询帖子信息
        List<Post> posts = this.findByParam(params);
        Post post = posts.get(0);
        // 帖子浏览次数+1
        addBrowseCount(post);
        postBrowse.setPost(post);
        // 查询发表人信息
        User user = userService.findByUserName(post.getCreatedBy());
        postBrowse.setUser(user);
        // 查询帖子相关评论信息
        List<Comment> comments = commentService.findByPostId(post.getId());
        postBrowse.setComments(comments);
        return postBrowse;
    }

    /**
     * 浏览次数+1
     * @param post
     */
    private void addBrowseCount(Post post) {
        post.setBrowseCount(post.getBrowseCount().add(new BigDecimal(1)));
        this.update(post);
    }
}
