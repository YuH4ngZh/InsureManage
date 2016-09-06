<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.opensymphony.xwork2.ognl.OgnlValueStack"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理--用户详单</title>
</head>
<body>
	<jsp:include page="manage_head.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<br />
	<s:iterator value="#session.CHOOSED" id="con">
		<table align="center" width="60%" frame="box" rules="rows">
			<tr height="40px">
				<th colspan="3" align="left">&nbsp;&nbsp;&nbsp;订单编号:&nbsp;&nbsp;<s:property
						value="#con.id" /></th>
			</tr>
			<tr height="40px">
				<td align="left" width="30%">&nbsp;&nbsp;&nbsp;申请人:<s:property
						value="#con.applicant" /></td>
				<td align="left" width="30%">&nbsp;&nbsp;&nbsp;被保险人:<s:property
						value="#con.insured" /></td>
				<td align="left" width="40%">&nbsp;&nbsp;&nbsp;被保人身份证：<s:property
						value="#con.insuredid" /></td>
			</tr>
			<tr height="40px">
				<td align="left" width="30%">&nbsp;&nbsp;&nbsp;联系电话:<s:property
						value="#con.mobile" /></td>
				<td align="left" width="30%">&nbsp;&nbsp;&nbsp;家庭住址:<s:property
						value="#con.location" /></td>
				<td align="left" width="40%">&nbsp;&nbsp;&nbsp;有效日期：<s:property
						value="#con.begindate" />~<s:property value="#con.enddate" /></td>
			</tr>
		</table>
		<br />
		<br />
	</s:iterator>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>