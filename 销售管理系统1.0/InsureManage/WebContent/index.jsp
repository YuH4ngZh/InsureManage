<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-首页</title>
<style type="text/css">
img#home_png{
	width:100%;
	height:40%;
}
</style>
</head>
<body>
	<s:if test="#session.USER_TYPE=='普通用户'">
		<!--用户页面-->
		<jsp:include page="head.jsp"></jsp:include>
		<table align="left" width="20%" frame="hsides" rules="rows"
			height="350px" style="font-size: 15px">
			<tr>
				<th align="center"><span style="color: red; font-size: 15px">产品分类</span></th>
			</tr>
			<tr>
				<td align="center">汽车保险</td>
			</tr>
			<tr>
				<td align="center">旅游签证保险</td>
			</tr>
			<tr>
				<td align="center">人身意外保险</td>
			</tr>
			<tr>
				<td align="center">家庭保险</td>
			</tr>
			<tr>
				<td align="center">少儿保险</td>
			</tr>
			<tr>
				<td align="center">理财保险</td>
			</tr>
			<tr>
				<td align="center">健康保险</td>
			</tr>
			<tr>
				<td align="center">企业保险</td>
			</tr>
		</table>
		<h1>&nbsp;&nbsp;为您推荐：</h1>
		<s:iterator value="#session['INSURE_INFO']" id="info" status="status">
			<table align="right" width="77%" frame="box" rules="rows">
				<tr>
					<th colspan="3" style="font-size: 20px" align="left"><s:property
							value="#info.name" /></th>
				</tr>
				<tr>
					<td width="242px"><img
						src="images/type_<s:property value='#info.type' />.jpg"
						width="242px" height="182px" /></td>
					<td align="center" style="font-size: 15px">投保年龄:<s:property
							value="#info.minage" />岁-<s:property value="#info.maxage" />岁 <br />
						<br /> 保障年限:<s:property value="#info.time" />年 <br /> <br />
						保障金额:<s:property value="#info.compensate" />¥
					</td>
					<td style="font-size: 20px; color: red" align="center" width="30%"><s:property
							value="#info.price" />¥起 <br /> <br /> <a
						href="${pageContext.request.contextPath}/Detail.action?Infoid=<s:property value='#info.infoid' />"><img
							src="images/detail_button.png" width="100px" height="50px"></a>
					</td>
			</table>
			<br />
		</s:iterator>
	</s:if>

	<s:if test="#session.USER_TYPE=='业务人员'">
		<!--业务人员页面-->
		<jsp:include page="worker_head.jsp"></jsp:include>
	<img src="images/worker_head.jpg" id="home_png"/>
	</s:if>

	<s:if test="#session.USER_TYPE=='管理员'">
		<!-- 管理人员页面 -->
		<jsp:include page="manage_head.jsp"></jsp:include>
	<img src="images/manage_head.jpeg" id="home_png"/>
	</s:if>

	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>