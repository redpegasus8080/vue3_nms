package com.mobigen.nms.user.service;

import com.mobigen.nms.user.model.UserVO;
import com.mobigen.nms.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;

    public List<UserVO> getUserList(UserVO userVO) {
        return userRepository.getUserList(userVO);
    }

}
