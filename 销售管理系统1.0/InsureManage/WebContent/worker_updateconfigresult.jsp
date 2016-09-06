<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-修改成功</title>
</head>
<body>
	<jsp:include page="worker_head.jsp"></jsp:include>
	<br /><br/><br />
	<table align="center"><tr><td align="center">
	数据配置修改成功！
	已生成的订单不会被修改，新产生的订单将以最新的数据为准！
	</td></tr>
	<tr><td align="center"><a href="index.jsp">返回首页</a></td></tr></table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>