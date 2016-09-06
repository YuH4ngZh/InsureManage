<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table align="right" bgcolor="#66ccff" width="100%">
		<tr align="right">
			<td>欢迎回来&nbsp;<strong><s:property
						value="#session.USER_NAME" /></strong>&nbsp;&nbsp; 用户等级&nbsp;<strong><s:property
						value="#session.USER_TYPE" /></strong>&nbsp;&nbsp; <%-- <u><s:if
						test="#session.USER_TYPE=='普通用户'">
						<a href="userspace.jsp">个人中心</a>
					</s:if> <s:if test="#session.USER_TYPE=='业务人员'">
						<a href="workerspace.jsp">业务管理</a>
					</s:if> <s:if test="#session.USER_TYPE=='管理员'">
						<a href="controllerspace.jsp">后台管理</a>
					</s:if></u> --%>
			</td>
			<td width="5%"><s:form action="Cancel" method="post">
					<s:submit value="注销" />
				</s:form></td>
		</tr>
	</table>
	<div>
		<a href="index.jsp"><img src="images/controller_index.png" width="300"
			height="150 "></a>
	</div>
	<table frame="below" width=100% style="font-size:20px">
		<tr>
			<th bgcolor="#66ccff" align="center" width=25%>后台管理</th>
			<td align="center" width=15%><a href="index.jsp">首页</a></td>
			<td align="center" width=15%><a href="worker_config.jsp">产品参数配置</a></td>
			<td align="center" width=15%><a href="worker_buyer.jsp">查看产品销量</a></td>
			<td align="center" width=15%><a href="worker_user.jsp">用户信息管理</a></td>
			<td align="center" width=15%><a href="worker_winner.jsp">盈利查询</a></td>
		</tr>
	</table>
</body>
</html>