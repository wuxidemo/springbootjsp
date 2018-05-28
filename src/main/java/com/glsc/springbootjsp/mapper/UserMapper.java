package com.glsc.springbootjsp.mapper;

import com.glsc.springbootjsp.entity.User;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {

    @Select("Select * from user")
    @Results({
            @Result(property = "name",column = "name"),
            @Result(property = "create_date",column = "createdate"),
            @Result(property = "email",column = "email")
    })
    //column对应数据库里列名字 property对应本程序里使用的名字User entity里使用的名字
    List<User> listAll();


}
