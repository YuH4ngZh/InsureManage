<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理--参数配置</title>
</head>
<body>
	<jsp:include page="manage_head.jsp"></jsp:include>

	<table align="left" width="30%" frame="box" rules="rows">
		<tr>
			<td align="center" colspan="4"><a href="manage_configupdate.jsp"><img
					src="images/manage_config.jpg" width="50px" height="50px"
					title="新建用户"> </a></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr height="30px">
			<th colspan="4">产品配置更新记录</th>
		</tr>
		<s:iterator value="#session.OPERATION" id="us">
			<s:if test="#us.operate_type=='配置信息'">
				<tr height="40px">
					<td align="center"><s:property value="#us.user" /></td>
					<td align="center"><s:property value="#us.user_type" /></td>
					<td align="center"><s:property value="#us.operate_type" /></td>
					<td align="center"><s:property value="#us.date" /></td>
				</tr>
			</s:if>
		</s:iterator>
	</table>
	<table align="right" width="70%" frame="box" rules="rows">
		<tr height="40px">
			<th colspan="3">请选择您要配置的产品</th>
		</tr>
		<s:iterator value="#session.INSURE_INFO" id="info">
			<s:textfield name="info.infoid" value="%{#info.infoid}" type="hidden"></s:textfield>
			<tr height="40px">
				<td align="center"><s:property value="#info.name" /></td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/ConfigUpdate.action?name=<s:property value='#info.name' />">参数配置</a></td>
				<td align="center"><a
					href="${pageContext.request.contextPath}/ConfigDelete.action?infoid=<s:property value='#info.infoid' />"
					onclick="if(confirm( '是否确定!本次操作将删除该保险信息，对已经生效的保险将不会产生影响。')==false)return false;">删除保险</a></td>
			</tr>
		</s:iterator>

	</table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>