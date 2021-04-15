package com.app.post.mapper;

import com.app.common.mapper.BaseMapper;
import com.app.post.entity.Post;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PostMapper extends BaseMapper<Post> {

}
