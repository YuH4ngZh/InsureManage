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
	<jsp:include page="worker_head.jsp"></jsp:include>
	<br /><br /><br />
	<table align="center" width="70%" frame="box" rules="rows">
		<tr height="40px">
			<th colspan="2">请选择您要配置的产品</th>
		</tr>
		<s:iterator value="#session.INSURE_INFO" id="info">
			<s:textfield name="info.infoid" value="%{#info.infoid}" type="hidden"></s:textfield>
			<tr height="40px">
				<td align="center" width="50%"><s:property value="#info.name" /></td>
				<td align="center" width="50%"><a
					href="${pageContext.request.contextPath}/ConfigUpdate.action?name=<s:property value='#info.name' />">参数配置</a></td>
				
			</tr>
		</s:iterator>

	</table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>