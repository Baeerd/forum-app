package com.app.post.entity;

import com.app.common.entity.AbstractEntity;
import java.util.Date;
import java.math.BigDecimal;

public class Post extends AbstractEntity {

    /**
    * 帖子id
    */
    private String postCode;

    /**
    * 帖子标题
    */
    private String postTitle;

    /**
    * 帖子主体内容
    */
    private String postContent;

    /**
    * 帖子附件
    */
    private String postFile;

    /**
    * 浏览次数
    */
    private BigDecimal browseCount;

    /**
    * 是否精品
    */
    private String boutique;


    /**
    * 获取帖子id
    */
    public String getPostCode() {
        return postCode;
    }

    /**
    * 设置帖子id
    */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    /**
    * 获取帖子标题
    */
    public String getPostTitle() {
        return postTitle;
    }

    /**
    * 设置帖子标题
    */
    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    /**
    * 获取帖子主体内容
    */
    public String getPostContent() {
        return postContent;
    }

    /**
    * 设置帖子主体内容
    */
    public void setPostContent(String postContent) {
        this.postContent = postContent;
    }

    /**
    * 获取帖子附件
    */
    public String getPostFile() {
        return postFile;
    }

    /**
    * 设置帖子附件
    */
    public void setPostFile(String postFile) {
        this.postFile = postFile;
    }

    /**
    * 获取浏览次数
    */
    public BigDecimal getBrowseCount() {
        return browseCount;
    }

    /**
    * 设置浏览次数
    */
    public void setBrowseCount(BigDecimal browseCount) {
        this.browseCount = browseCount;
    }

    /**
    * 获取是否精品
    */
    public String getBoutique() {
        return boutique;
    }

    /**
    * 设置是否精品
    */
    public void setBoutique(String boutique) {
        this.boutique = boutique;
    }

}
