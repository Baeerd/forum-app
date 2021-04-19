package com.app.user.entity;

import com.app.common.entity.AbstractEntity;
import org.apache.commons.lang.StringUtils;

import java.util.Date;
import java.math.BigDecimal;

public class User extends AbstractEntity {

    /**
    * 用户名
    */
    private String username;

    /**
    * 密码
    */
    private String password;

    /**
    * 姓名
    */
    private String name;

    /**
    * 学号
    */
    private String studyCode;

    /**
    * 性别
    */
    private String sex;

    /**
    * 年级
    */
    private String level;

    /**
    * 专业
    */
    private String subject;

    /**
    * 联系方式
    */
    private String phone;

    /**
    * 头像
    */
    private String portrait;

    /**
    * 简介
    */
    private String remark;

    /**
     * 角色
     */
    private String role;
    
    private String roleView;
    
    private String sexView;
    
    private String levelView;

    /**
    * 获取用户名
    */
    public String getUsername() {
        return username;
    }

    /**
    * 设置用户名
    */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
    * 获取密码
    */
    public String getPassword() {
        return password;
    }

    /**
    * 设置密码
    */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
    * 获取姓名
    */
    public String getName() {
        return name;
    }

    /**
    * 设置姓名
    */
    public void setName(String name) {
        this.name = name;
    }

    /**
    * 获取学号
    */
    public String getStudyCode() {
        return studyCode;
    }

    /**
    * 设置学号
    */
    public void setStudyCode(String studyCode) {
        this.studyCode = studyCode;
    }

    /**
    * 获取性别
    */
    public String getSex() {
        return sex;
    }

    /**
    * 设置性别
    */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
    * 获取年级
    */
    public String getLevel() {
        return level;
    }

    /**
    * 设置年级
    */
    public void setLevel(String level) {
        this.level = level;
    }

    /**
    * 获取专业
    */
    public String getSubject() {
        return subject;
    }

    /**
    * 设置专业
    */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
    * 获取联系方式
    */
    public String getPhone() {
        return phone;
    }

    /**
    * 设置联系方式
    */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
    * 获取头像
    */
    public String getPortrait() {
        return portrait;
    }

    /**
    * 设置头像
    */
    public void setPortrait(String portrait) {
        this.portrait = portrait;
    }

    /**
    * 获取简介
    */
    public String getRemark() {
        return remark;
    }

    /**
    * 设置简介
    */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * 获取角色
     */
    public String getRole() {
        return role;
    }

    /**
     * 设置角色
     */
    public void setRole(String role) {
        this.role = role;
    }

    public String getRoleView() {
        if(StringUtils.isEmpty(this.roleView)) {
            return  "管理员";
        } else {
            return roleView;
        }
    }

    public void setRoleView(String roleView) {
        this.roleView = roleView;
    }

    public String getSexView() {
        return sexView;
    }

    public void setSexView(String sexView) {
        this.sexView = sexView;
    }

    public String getLevelView() {
        return levelView;
    }

    public void setLevelView(String levelView) {
        this.levelView = levelView;
    }
}
