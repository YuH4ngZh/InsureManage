<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div>
		<a href="index.jsp"><img src="images/Index.jpg" width="300"
			height="150 "></a>
	</div>
	<s:form action="Regist" method="post">
		<table align="center" border="0" style="margin-top: 50px"
			cellspacing="5">
			<tr>
				<th colspan="3">用户注册(带*为必填项)</th>
			</tr>
			<tr>
				<td>用户名</td>
				<td><s:textfield name="user.username" label="用户名" /></td>
				<td>*您用来登录的用户名</td>
			</tr>
			<tr>
				<td>密码</td>
				<td><s:password name="user.password" label="密码" /></td>
				<td>*长度必须大于5个小于16个字符</td>
			</tr>
			<tr>
				<td>密码确认</td>
				<td><s:password name="password2" label="密码确认" /></td>
				<td>*请在此输入密码</td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><s:textfield name="user.name" label="姓名" /></td>
				<td>*请填写您的真实姓名</td>
			</tr>
			<tr>
				<td>职业</td>
				<td><s:textfield name="user.job" label="职业" /></td>
				<td>&nbsp;请填写您的真实信息</td>
			</tr>
			<tr>
				<td>联系方式</td>
				<td><s:textfield name="user.mobile" label="手机" /></td>
				<td>&nbsp;请填写您的真实信息</td>
			</tr>
			<tr>
				<td>出生日期</td>
				<td><s:textfield name="user.birth" label="生日" /></td>
				<td>&nbsp;输入格式: 2000-01-01</td>
			</tr>
			<tr>
				<td><a href="login.jsp"><u>返回登录</u></a></td>
				<td align="right" colspan="2"><s:submit value="注册" /></td>
			</tr>
		</table>
	</s:form>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>