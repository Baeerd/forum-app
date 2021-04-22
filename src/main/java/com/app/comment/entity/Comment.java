package com.app.comment.entity;

import com.app.common.entity.AbstractEntity;
import com.app.common.util.LoginUtil;
import com.app.common.util.Util;

import java.util.Date;
import java.math.BigDecimal;

public class Comment extends AbstractEntity {

    /**
    * 帖子id
    */
    private String postId;

    /**
    * 评价内容
    */
    private String evaluateContent;

    /**
    * 评价时间
    */
    private Date evaluateDt;

    /**
    * 人员id
    */
    private String userId;

    /**
     * 人员中文名称
     */
    private String name;

    /**
     * 帖子标题
     */
    private String postTitle;

    /**
    * 获取帖子id
    */
    public String getPostId() {
        return postId;
    }

    /**
    * 设置帖子id
    */
    public void setPostId(String postId) {
        this.postId = postId;
    }

    /**
    * 获取评价内容
    */
    public String getEvaluateContent() {
        return evaluateContent;
    }

    /**
    * 设置评价内容
    */
    public void setEvaluateContent(String evaluateContent) {
        this.evaluateContent = evaluateContent;
    }

    /**
    * 获取评价时间
    */
    public Date getEvaluateDt() {
        return evaluateDt;
    }

    /**
    * 设置评价时间
    */
    public void setEvaluateDt(Date evaluateDt) {
        this.evaluateDt = evaluateDt;
    }

    /**
    * 获取人员id
    */
    public String getUserId() {
        return userId;
    }

    /**
    * 设置人员id
    */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEvaluateDtView() {
        if(this.getEvaluateDt() != null) {
            return Util.formatDateTime(this.getEvaluateDt());
        }
        return null;
    }

}
