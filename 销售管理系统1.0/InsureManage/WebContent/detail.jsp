<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-详细信息</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<br />
	<s:iterator value="#request['DETAIL']" id="detail" status="status">
	<table align="center" width="80%" frame="box" rules="rows">
			<tr>
				<th colspan="3" style="font-size: 20px" align="left"><s:property
						value="#detail.name" /></th>
			</tr>
			<tr>
				<td width="242px"><img
					src="images/type_<s:property value='#detail.type' />.jpg"
					width="242px" height="182px" /></td>
				<td align="center" style="font-size: 15px">投保年龄:<s:property
						value="#detail.minage" />岁-<s:property value="#detail.maxage" />岁 <br />
					保障年限:<s:property value="#detail.time" />年 <br /> 保障金额:<s:property
						value="#detail.compensate" />¥
				</td>
				<td style="font-size: 20px; color: red" align="center" width="30%"><s:property
						value="#detail.price" />¥起 <br /> <br /><a
					href="${pageContext.request.contextPath}/ContractMessage.action?Infoid=<s:property value='#detail.infoid' />"><img
						src="images/shop_button.png" width="100px" height="50px"></a>
				</td></tr>
				<tr><td colspan="3" style="font-size: 15px">保险简介:<s:property value="#detail.intro" /></td></tr>
		</table>
		</s:iterator>
		<br />
		<table align="center">
		<tr><td><img src="images/detail_03.jpg" /></td></tr>
		<tr><td><img src="images/detail_04.jpg" /></td></tr>
		<tr><td><img src="images/detail_05.jpg" /></td></tr>
		<tr><td><img src="images/detail_01.jpg" /></td></tr>
		<tr><td><img src="images/detail_02.jpg" /></td></tr>
		</table>
	
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>