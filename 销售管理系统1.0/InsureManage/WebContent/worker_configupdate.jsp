<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-配置更新</title>
</head>
<body>
	<jsp:include page="worker_head.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<s:form action="AddOrUpdateConfig" method="post">
		<s:textfield name="info.infoid" value="%{#request.UPDATE.infoid}"
			type="hidden"></s:textfield>
		<s:textfield name="info.buyer" value="%{#request.UPDATE.buyer}"
			type="hidden"></s:textfield>
		<table align="center" width="100%" frame="box" rules="rows"
			bgcolor="#dddddd">
			<tr height="60px">
				<th colspan="2" style="font-size: 20px">新建(更新)产品配置</th>
			</tr>
			<tr height="60px">
				<td width="20%" align="center">产品名称</td>
				<td align="center"><s:textfield name="info.name" label="产品名称"
						value="%{#request.UPDATE.name}" /></td>
			</tr>
			<tr height="60px">
				<td width="20%" align="center">产品类型</td>
				<td align="center"><s:if
						test="#request.UPDATE.type=='automobile'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="1" />
					</s:if> <s:elseif test="#request.UPDATE.type=='travel'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="2" />
					</s:elseif> <s:elseif test="#request.UPDATE.type=='family'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="3" />
					</s:elseif> <s:elseif test="#request.UPDATE.type=='human'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="4" />
					</s:elseif> <s:elseif test="#request.UPDATE.type=='health'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="5" />
					</s:elseif> <s:elseif test="#request.UPDATE.type=='children'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="6" />
					</s:elseif> <s:elseif test="#request.UPDATE.type=='money'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="7" />
					</s:elseif> <s:elseif test="#request.UPDATE.type=='campany'">
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="8" />
					</s:elseif> <s:else>
						<s:select label="选择用户类型"
							list="#{'1':'车险','2':'旅游险','3':'家庭险','4':'个人险','5':'健康险','6':'儿童险','7':'金融险','8':'企业险'}"
							name="info.type" value="8" />
					</s:else></td>
			</tr>
			<tr height="60px">
				<td width="20%" align="center">产品售价</td>
				<td align="center"><s:textfield name="info.price" label="产品名称"
						value="%{#request.UPDATE.price}" /></td>
			</tr>
			<tr height="60px">
				<td width="20%" align="center">产品保额</td>
				<td align="center"><s:textfield name="info.compensate"
						label="产品名称" value="%{#request.UPDATE.compensate}" /></td>
			</tr>
			<tr height="60px">
				<td width="20%" align="center">产品年限</td>
				<td align="center"><s:textfield name="info.time" label="产品名称"
						value="%{#request.UPDATE.time}" />年</td>
			</tr>
			<tr height="60px">
				<td width="20%" align="center">产品简介</td>
				<td align="center"><s:textarea name="info.intro" label="产品名称"
						value="%{#request.UPDATE.intro}" style="width:600px; height:200px" /></td>
			</tr>
			<tr height="60px">
				<td width="20%" align="center">产品适用年龄</td>
				<td align="center"><s:textfield name="info.minage" label="产品名称"
						value="%{#request.UPDATE.minage}" />~ <s:textfield
						name="info.maxage" label="产品名称" value="%{#request.UPDATE.maxage}" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><s:submit value="提交" />
				<td>
			</tr>
		</table>
	</s:form>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>