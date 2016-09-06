<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售管理系统-详细保单</title>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<br />
	<br />
	<table align="center" width="60%" height="800px" frame="box"
		rules="all">
		<tr>
			<th colspan="4" align="center">平安保险公司<span style="color: red"><s:property
						value="#request.CONTRACT.name" /></span>保单(电子版)
			</th>
		</tr>
		<tr>
			<td width="15%" align="center">投保人</td>
			<td width="35%" align="center"><s:property
					value="#request.CONTRACT.applicant" /></td>
			<td width="15%" align="center">受理单位</td>
			<td align="center">平安保险公司</td>
		</tr>

		<tr>
			<td width="15%" align="center">被保险人</td>
			<td width="35%" align="center"><s:property
					value="#request.CONTRACT.insured" /></td>
			<td width="15%" align="center">被保险人身份证号码</td>
			<td align="center"><s:property
					value="#request.CONTRACT.insuredid" /></td>
		</tr>

		<tr>
			<td width="15%" align="center">联系电话</td>
			<td width="35%" align="center"><s:property
					value="#request.CONTRACT.mobile" /></td>
			<td width="15%" align="center">联系住址</td>
			<td align="center"><s:property
					value="#request.CONTRACT.location" /></td>
		</tr>
		<tr>
			<td width="15%" align="center">投资金额¥</td>
			<td width="35%" align="center"><s:property
					value="#request.INFO.price" />元</td>
			<td width="15%" align="center">保险金额¥</td>
			<td align="center"><s:property value="#request.INFO.compensate" />元</td>
		</tr>

		<tr>
			<td width="15%" align="center">保险年龄</td>
			<td width="35%" align="center"><s:property
					value="#request.INFO.minage" />周岁-<s:property
					value="#request.INFO.maxage" />周岁</td>
			<td width="15%" align="center">保险期限</td>
			<td align="center"><s:property value="#request.INFO.time" />年</td>
		</tr>

		<tr>
			<td width="15%" align="center">特别约定</td>
			<td colspan="3" align="center"><strong>本保险单涂改无效</strong></td>
		</tr>

		<tr>
			<td width="15%" align="center">重要提示</td>
			<td colspan="3" align="center"><strong>1.请仔细阅读保险条款，特别是责任免除和授保人、被保人义务。<br />
					2.收到本保险单后，请立即核对，如有不符或疏漏，请及时通知保险人并办理变更或补充手续。<br />
					3.保险费应一次性交清，请您及时核对保险单和发票（收据），如有不符，请及时与保险人联系。<br />
					4.投保人应如实告知对保险费计算有影响的重要事项，并及时通知保险人办理批改手续。<br />
					5.被保险人应当在保险生效时及时通知保险人。
			</strong></td>
		</tr>

		<tr>
			<td width="15%" align="center">产品条款</td>
			<td colspan="3" align="center"><strong><s:property
						value="#request.INFO.intro" /></strong></td>
		</tr>

		<tr>
			<td width="15%" align="center">生效日期</td>
			<td width="35%" align="center"><s:property
					value="#request.CONTRACT.begindate" /></td>
			<td width="15%" align="center">截止日期</td>
			<td width="35%" align="center"><s:property
					value="#request.CONTRACT.enddate" /></td>
		</tr>

		<tr>
			<td colspan="4" align="center"><a
				href="javascript:history.go(-1)">返回上一层</a></td>
		</tr>
	</table>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>