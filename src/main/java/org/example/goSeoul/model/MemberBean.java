package org.example.goSeoul.model;

import lombok.Data;
import org.apache.ibatis.type.Alias;
import scala.util.parsing.combinator.testing.Str;

@Data
//@Alias("member")
public class MemberBean {
    private String user_no;
    private String id;
    private String nick;
    private String pass;
    private String name;
    private int tel;
    private String email;
    private String region;
    private String gender;
    private String MBTI;
    private String interests;
    private String intro;
    private String file_name;
    private String file_path;
}
