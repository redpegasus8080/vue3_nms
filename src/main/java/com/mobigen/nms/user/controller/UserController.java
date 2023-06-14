package com.mobigen.nms.user.controller;

import com.mobigen.nms.user.model.UserVO;
import com.mobigen.nms.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class UserController {
    private final UserService userService;

    @GetMapping("/getUserList")
    public List<UserVO> getUserList() {
        UserVO userVO = new UserVO();

        return userService.getUserList(userVO);
    }

    @PostMapping("/postUserList")
    public List<UserVO> postUserList() {
        UserVO userVO = new UserVO();

        return userService.getUserList(userVO);
    }
}
