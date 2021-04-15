package com.app.role.entity;

import com.app.common.entity.AbstractEntity;
import java.util.Date;
import java.math.BigDecimal;

public class UserRole extends AbstractEntity {

    /**
    * 人员id
    */
    private String userId;

    /**
    * 角色id
    */
    private String roleId;


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

    /**
    * 获取角色id
    */
    public String getRoleId() {
        return roleId;
    }

    /**
    * 设置角色id
    */
    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

}
