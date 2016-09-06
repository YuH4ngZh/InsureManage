<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css">
<title>销售管理系统-用户注册</title>
</head>
<body>
	<div>
		<a href="index.jsp"><img src="images/Index.jpg" width="300"
			height="150 "></a>
	</div>
	<s:form action="Login" method="post">
		<table align="center" style="margin-top: 100px">
			<tr>
				<th colspan="2">用户登录</th>
			</tr>
			<tr>
				<td>用户名</td>
				<td><s:textfield name="username" label="用户名" /></td>
				<td></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><s:password name="password" label="密码" /></td>
			</tr>
			<tr>
				<td>用户类型</td>
				<td><s:select label="选择用户类型"
						list="#{'1':'普通用户','2':'业务人员','3':'管理员'}" name="type" value="1" /></td>
			</tr>
			<tr>
				<td><a href="regist.jsp"><u>用户注册</u></a></td>
				<td align="right"><s:submit value="登录" /></td>
			</tr>
			<tr><td colspan="2" align="center"><s:fielderror /></td></tr>
		</table>
	</s:form>
	<jsp:include page="foot.jsp"></jsp:include>
	<!-- 需求分析：本项目的目标就是为一家保险公司开发基于本身业务的销售管理系统。系统用户有管理员、
	业务人员和消费者;管理员可以进行用户信息管理，增减保险种类，产品配置价格的调节，管理员后台登陆的日志；
	业务人员可以进行产品配置参数，管理可以选择保险的种类，查看产品销售情况，用户信息管理，盈利查询；
	消费者可以进行用户注册，选择产品，试算价格，填写购买信息，查看保单，查看自己已买到的产品的功能； -->
</body>
</html>