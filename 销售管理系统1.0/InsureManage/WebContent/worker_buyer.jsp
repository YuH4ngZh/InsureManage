<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理--产品销量</title>
</head>
<body>
	<jsp:include page="worker_head.jsp"></jsp:include>
	<br /><br /><br />
	<table align="center" width="80%"  frame="box"
		rules="rows">
		<tr height="40px">
			<th colspan="3"><span style=" font-size: 20px">产品销量表</span></th>
		</tr>
		<tr height="40px">
			<th>产品名称</th>
			<th>产品销量</th>
			<th>查看详情</th>
		</tr>
		<s:iterator value="#session.INSURE_INFO" id="info">
			<tr height="40px">
				<td align="center"><s:property value="#info.name" /></td>
				<td align="center"><s:property value="#info.buyer" /></td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/BuyerDetail.action?name=<s:property value='#info.name' />">销售详情</a></td>
			</tr>
		</s:iterator>
	</table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>