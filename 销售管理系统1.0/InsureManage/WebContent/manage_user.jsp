<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-用户信息</title>
</head>
<body>
	<jsp:include page="manage_head.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<table align="center" width="80%" frame="box" rules="rows">
	<tr height="40px">
			<th colspan="4"><span style=" font-size: 20px">用户信息表</span></th>
		</tr>
	<tr height="40px">
	<th>用户编号</th>
	<th>用户账号</th>
	<th>用户姓名</th>
	<th>用户联系方式</th>
	</tr>
		<s:iterator value="#session.USER_INFO" id="user">
			<tr>
				<td height="40px" align="center"><s:property value="#user.id" /></td>
				<td height="40px" align="center"><s:property value="#user.username" /></td>
				<td height="40px" align="center"><s:property value="#user.name" /></td>
				<td height="40px" align="center"><s:property value="#user.mobile" /></td>
			</tr>
		</s:iterator>
	</table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>