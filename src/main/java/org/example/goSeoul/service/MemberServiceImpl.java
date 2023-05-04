package org.example.goSeoul.service;

import org.example.goSeoul.dao.MemberDao;
import org.example.goSeoul.dao.MemberDaoImpl;
import org.example.goSeoul.model.MemberBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDaoImpl dao;
    public void insert(MemberBean member) throws Exception {
        dao.insert(member);
    }
    public int checkMemberId(String id) throws Exception{
        int result = dao.checkMemberId(id);
        return result;
    }
    public int checkMemberNick(String nick) throws Exception{
        int result = dao.checkMemberNick(nick);
        return result;
    }
}
