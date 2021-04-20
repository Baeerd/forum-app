package com.app.post.service.impl;

import com.app.common.entity.Constant;
import com.app.common.util.LoginUtil;
import com.app.post.entity.Post;
import com.app.post.service.PostService;
import org.springframework.stereotype.Service;

import com.app.common.service.impl.BaseServiceImpl;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class PostServiceImpl extends BaseServiceImpl<Post> implements PostService {

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
}
