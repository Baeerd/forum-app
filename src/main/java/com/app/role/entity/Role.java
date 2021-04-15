package com.app.role.entity;

import com.app.common.entity.AbstractEntity;
import java.util.Date;
import java.math.BigDecimal;

public class Role extends AbstractEntity {

    /**
    * 角色id
    */
    private BigDecimal roleId;

    /**
    * 角色描述
    */
    private String roleDesc;


    /**
    * 获取角色id
    */
    public BigDecimal getRoleId() {
        return roleId;
    }

    /**
    * 设置角色id
    */
    public void setRoleId(BigDecimal roleId) {
        this.roleId = roleId;
    }

    /**
    * 获取角色描述
    */
    public String getRoleDesc() {
        return roleDesc;
    }

    /**
    * 设置角色描述
    */
    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
    }

}
