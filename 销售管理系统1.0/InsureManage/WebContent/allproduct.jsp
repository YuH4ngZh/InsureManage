<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-所有产品</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<br /><br />
	<s:iterator value="#session['INSURE_INFO']" id="info" status="status">
		<table align="center" width="80%" frame="box" rules="rows">
			<tr>
				<th colspan="3" style="font-size: 20px" align="left"><s:property
						value="#info.name" /></th>
			</tr>
			<tr>
				<td width="242px"><img
					src="images/type_<s:property value='#info.type' />.jpg"
					width="242px" height="182px" /></td>
				<td align="center" style="font-size: 15px">投保年龄:<s:property
						value="#info.minage" />岁-<s:property value="#info.maxage" />岁 <br /><br />
					保障年限:<s:property value="#info.time" />年 <br /><br /> 保障金额:<s:property
						value="#info.compensate" />¥
				</td>
				<td style="font-size: 20px; color: red" align="center" width="30%"><s:property
						value="#info.price" />¥起 <br /> <br />
				<a
					href="${pageContext.request.contextPath}/Detail.action?Infoid=<s:property value='#info.infoid' />"><img
						src="images/detail_button.png" width="100px" height="50px"></a>
				</td>
		</table>
		<br />
	</s:iterator>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>