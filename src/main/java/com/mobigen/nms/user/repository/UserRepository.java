package com.mobigen.nms.user.repository;

import com.mobigen.nms.user.model.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
//@Repository

public interface UserRepository {

    List<UserVO> getUserList(UserVO userVo);
}
