<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理--操作管理</title>
</head>
<body>
	<jsp:include page="manage_head.jsp"></jsp:include>
		<br />
		<br />
		<br />
		<table align="center" width="80%"  frame="box"
			rules="rows">
		<tr height="40px">
			<th colspan="4"><span style="font-size: 20px">操作信息表</span></th>
		</tr>
		<tr height="40px">
				<th width="25%">操作人</th>
				<th width="25%">用户类型</th>
				<th width="25%">操作类型</th>
				<th width="25%">操作时间</th>
			</tr>
			<s:iterator value="#session.OPERATION" id="us">
			<tr height="40px">
				<td align="center"><s:property value="#us.user" /></td>
				<td align="center"><s:property value="#us.user_type" /></td>
				<td align="center"><s:property value="#us.operate_type" /></td>
				<td align="center"><s:property value="#us.date" /></td>
			</tr>
		</s:iterator>
		</table>
		<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>