<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>主页</title>

<!-- Bootstrap -->
<link href="/BMweb/resources/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<div>

		<!-- 顶部 -->
		<div class="page-header"
			style="margin:40px 0px 0px;border-bottom: 2px solid #B40605;">
			<h2 style="width:960px;margin:0px auto;">
				<b>广西高校联合招生网 专科生 报名系统</b>
			</h2>
		</div>

		<div style="background-color:#EEE;height:41px;width:100%;">
			<div
				style="width: 960px;margin: 0px auto;font-size: 16px;line-height: 40px;">
				<span style="color:#B40605;float:left;">用户您好！
					您的身份证号码：${currUser.identity}</span> <span style="float:right;">
					<a href="/BMweb/user/index">系统首页</a>　<a href="/BMweb/user/editpwd/${currUser.identity}">修改密码</a>　<a href="/BMweb/user/index?logout">退出登陆</a></span>
			</div>
		</div>

		<div style="width: 960px;margin: 0px auto;font-size: 14px;">
			<table class="table table-bordered" style="margin-top:20px;">
				<tr>
					<td style="font-weight:bold;"><font color="#0D69D3">填写说明：</font></td>
				</tr>
				<tr>
					<td>（1）请认真填写以下信息，填完完毕后点击最下方的“立即报名”；</br> （2）先填写完整个人信息及通讯信息再填写志愿信息；</br>
						（3）“<font color="#FF0000" size="3px;"> * </font>”为必填项；</br>
					</td>
				</tr>
				<table>
					</div>

					<!-- 志愿信息 -->
					<sf:form method="post" id="zbm" modelAttribute="zbm_info" action="/BMweb/bminfo/createZbmFinalInfo${mode}">
					<table class="table table-bordered">
						<tr>
							<td style="font-weight:bold;"><font color="#0D69D3">志愿信息：</font></td>
							<td></td>
						</tr>
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>第一志愿</td>
							<td><select name="shool1" id="shool" onchange="getzhuceid()">
										<c:forEach var="shool" items="${shools}">
											<option value="${shool.s_id}">${shool.s_name}</option>
										</c:forEach></select></td>
						</tr>
						
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业一</td>
							<td><select name="pro1" id="pro_1">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach></select></td>
						</tr>
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业二</td>
							<td><select name="pro2" id="pro_2">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach></select></td>
						</tr>
						
 						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>第二志愿</td>
							<td><select name="shool2" id="shool_1">
										<c:forEach var="shool" items="${shools}">
											<option value="${shool.s_id}">${shool.s_name}</option>
										</c:forEach></select></td>
						</tr> 
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业二</td>
							<td><select name="pro3" id="pro_3">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach></select></td>
						</tr>
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业二</td>
							<td><select name="pro4" id="pro_4">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach></select></td>
						</tr>
					</table>
					<button type="submit" class="btn btn-danger center-block"
							style="margin-bottom:30px;" onclick="$(zbm).submit();">立即报名</button>
					</sf:form>
					</div>
		
					<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
					<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
					<!-- Include all compiled plugins (below), or include individual files as needed -->
					<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>