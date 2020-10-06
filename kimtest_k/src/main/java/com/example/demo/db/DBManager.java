package com.example.demo.db;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BookVo;
import com.example.demo.vo.DeptVo;

public class DBManager {
	public static SqlSessionFactory sqlSessionFactory = null;
	
	static {
		try {
			String resource = "com/example/demo/db/sqlMapConfig.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory =
			  new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			System.out.println("예외-"+e.getMessage());
		}
	}
	
	public static List<DeptVo> selectAllDept(){
		SqlSession session = 
				sqlSessionFactory.openSession();
		List<DeptVo> list = session.selectList("dept.selectAll");
		session.close();
		return list;
	}
	
	public static List<BookVo> selectAllBook(){
		SqlSession session = 
				sqlSessionFactory.openSession();
		List<BookVo> blist = session.selectList("book.selectAll");
		session.close();
		return blist;
	}
	
}
