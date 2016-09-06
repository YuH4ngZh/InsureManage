<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-盈利查询</title>
</head>
<body>
	<jsp:include page="worker_head.jsp"></jsp:include>
	<table align="center" width="100%" frame="box" rules="rows">
		<tr>
			<th colspan="6" height="60px"><span style="font-size:20px;">已售出保险商品</span></th>
		</tr>
		<s:iterator value="#session.INSURE_INFO" id="info">
			<tr>
				<td align="center" height="40px" width="16%">商品名称</td>
				<td align="center" height="40px" width="16%"><s:property
						value="#info.name" /></td>


				<td align="center" height="40px" width="16%">已售出量</td>
				<td align="center" height="40px" width="16%"><s:property
						value="#info.buyer" /></td>


				<td align="center" height="40px" width="16%">商品单价</td>
				<td align="center" height="40px" width="16%"><s:property
						value="#info.price" /></td>
			</tr>
		</s:iterator>
		<tr>
			<td height="40px"></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td align="left"><span style="font-size:20px;">总营业额:<s:property value="#session.WINNER" /></span></td>
		</tr>
	</table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>