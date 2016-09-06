<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-保单提交成功！</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<table align="center">
		<tr>
			<td align="center" colspan="2"><img src="images\addsuccess.jpg" /></td>
		</tr>
		<tr>
			<td align="right"><input type="button" value="查看保单"
				onClick="window.location.href='mycontract.jsp'"></td>
			<td align="left"><input type="button" value="返回首页"
				onClick="window.location.href='index.jsp'"></td>
		</tr>
	</table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>