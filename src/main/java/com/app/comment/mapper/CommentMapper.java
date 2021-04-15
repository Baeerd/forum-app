package com.app.comment.mapper;

import com.app.comment.entity.Comment;
import com.app.common.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommentMapper extends BaseMapper<Comment> {

}
