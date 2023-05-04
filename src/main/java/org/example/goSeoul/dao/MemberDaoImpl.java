package org.example.goSeoul.dao;

import org.apache.ibatis.session.SqlSession;
import org.example.goSeoul.model.MemberBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

    @Autowired
    private SqlSession sqlSession;

    //  회원가입
    public void insert(MemberBean member) throws Exception {
        sqlSession.insert("insertMember", member);
    }

    //   아이디 중복체크
    public int checkMemberId(String id) throws Exception{
        int re = -1;    //  사용 가능한 id
        MemberBean mb = sqlSession.selectOne("id_check", id);
        if(mb != null){
            re = 1;     //  중복 id
        }
        return re;
    }

    public int checkMemberNick(String nick) throws Exception{
        int re = -1;
        MemberBean mb = sqlSession.selectOne("nick_check", nick);
        if(mb != null){
            re = 1;
        }
        return re;
    }
}
