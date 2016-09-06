<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-业务人员信息</title>
</head>
<body>
	<jsp:include page="manage_head.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<table align="center" width="80%" frame="box" rules="rows">
		<tr height="40px">
			<th colspan="4"><span style="font-size: 20px">员工信息表</span></th>
		</tr>
		<tr>
			<th>业务员编号</th>
			<th>业务员账号</th>
			<th>业务员名字</th>
			<th>业务员操作</th>
		</tr>
		<s:iterator value="#session.WORKER_INFO" id="worker">
			<tr>
				<td align="center" height="40px"><s:property
						value="#worker.workerid" /></td>
				<td align="center" height="40px"><s:property
						value="#worker.username" /></td>
				<td align="center" height="40px"><s:property
						value="#worker.name" /></td>
				<td align="center" height="40px"><a
					href="${pageContext.request.contextPath}/WorkerDelete.action?workerid=<s:property value='#worker.workerid' />"
					onclick="if(confirm( '是否确定!本次操作将是不可逆的。')==false)return false;">删除员工</a></td>
			</tr>
		</s:iterator>
	</table>
	<jsp:include page="foot.jsp"></jsp:include>

</body>
</html>