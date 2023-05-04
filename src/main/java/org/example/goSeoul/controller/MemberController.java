package org.example.goSeoul.controller;

import org.example.goSeoul.model.MemberBean;
import org.example.goSeoul.service.MemberService;
import org.example.goSeoul.service.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MemberController {

    @Autowired
    private MemberServiceImpl service;
    //  회원가입
    @RequestMapping("/member_form.do")
    public String member_form() {
        System.out.println("회원가입 완~");
        return "member/member_form";
    }

   //  ID 중복검사;
    @RequestMapping(value="/member_idcheck.do", method = RequestMethod.POST)
    public String member_idcheck(@RequestParam("memid") String id, Model model) throws Exception{
        System.out.println("id:" + id);

        int result = service.checkMemberId(id);
        model.addAttribute("result", result);
        System.out.println("아이디 중복검사 완 ~");
        return "member/idcheckResult";
    }

    //  Nick 중복검사
    @RequestMapping(value="/member_nickcheck.do", method = RequestMethod.POST)
    public String member_nickcheck(@RequestParam("memnick") String nick, Model model) throws Exception{
        System.out.println("nick:" + nick);

        int result = service.checkMemberNick(nick);
        model.addAttribute("result", result);
        System.out.println("아이디 중복검사 완 ~");
        return "member/nickcheckResult";
    }
    //  회원정보저장
    @RequestMapping(value = "/member_join_ok.do", method= RequestMethod.POST)
    public String member_join(@ModelAttribute MemberBean member) throws Exception {
        System.out.println("member:"+member);
        service.insert(member);
        System.out.println("회원저장 완~");
        return "member/member_login";
    }
}
