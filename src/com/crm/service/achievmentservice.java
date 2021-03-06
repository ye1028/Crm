package com.crm.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crm.pojo.achievment;
import com.crm.pojo.page;

/**
 * 科技成果表
 * @author Administrator
 *
 */
public interface achievmentservice {
	//插入数据
	public void Achievmentadd(achievment a);
	//查询所有
	public List<achievment> Achievmentfindall();
	//根据id查询
	public achievment AchievmentByid(Integer id);
	//修改数据
	public void Achievmentudate(achievment achi);
	//删除数据
	public void Achievmentdelete(Integer id);
	//导入表格
	List<String> ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response) throws Exception;
	//条件查询
	public List<achievment> achiBynt(achievment a);
	//根据年份查询
	public List<achievment> AchievmentByyear(String id);
	//根据name查询
	public List<achievment> selectbyname(String s);
	public void achdelete(List<String> arr);
	
	public List<achievment> achfind(String uid);
	
	public List<achievment> Achievmentfindall1(Integer pg);
	
	public List<achievment> achfind1(page p);
}
