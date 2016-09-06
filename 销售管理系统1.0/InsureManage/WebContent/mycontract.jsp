<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-我的保单</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<br />
	<br />
	<s:iterator value="#session['MYCONTRACT']" id="mycontract"
		status="status">
		<table width="60%" height="150px" frame="box" rules="all"
			align="center">
			<tr>
				<td align="center" width="30%">保单编号：<s:property
						value="#mycontract.id" /></td>
				<td colspan='2' align="center">保险类型：<s:property
						value="#mycontract.insurename" /></td>
			</tr>
			<tr>
				<td align="center">投保人：<s:property
						value="#mycontract.applicant" /></td>
				<td align="center" width="30%">被保险人：<s:property
						value="#mycontract.insured" /></td>
				<td align="center">身份证号：<s:property
						value="#mycontract.insuredid" /></td>
			</tr>
			<tr>
				<td align="center">生效日期：<s:property
						value="#mycontract.begindate" /></td>
				<td align="center" width="40%">有效期至：<s:property
						value="#mycontract.enddate" /></td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/DetailContract.action?Contractid=<s:property value='#mycontract.id' />">查看详单</a></td>
			</tr>
		</table>
		<br />
		<br />
	</s:iterator>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>