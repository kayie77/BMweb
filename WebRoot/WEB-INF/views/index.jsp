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

<script src="/BMweb/resources/js/jquery.2.js" type="text/javascript"></script>

<script type="text/javascript">
	function getQueryString(name) {//获取某个url中所带的参数
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		var r = window.location.search.substr(1).match(reg);
		if (r != null)
			return unescape(r[2]);
		return null;
	}

	$().ready(function() { //如果参数message=1，已有报名信息
		if (getQueryString("message") == 1) {

			$(".message2_1").removeClass("hide");
			$(".message2_2").removeClass("hide");
			$(".message2_3").removeClass("hide");
		}
		if (getQueryString("message") == 2) {
			$(".message1_1").removeClass("hide");
			$(".message1_2").removeClass("hide");
		}
	});

	$(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>

</head>
<body>
	<div>

		<!-- 顶部 -->
		<div class="page-header"
			style="margin:40px 0px 0px;border-bottom: 2px solid #B40605;">
			<h2 style="width:960px;margin:0px auto;">
				<b>广西高校联合招生网 本科生/专科生 报名系统</b>
			</h2>
		</div>

		<div style="background-color:#EEE;height:41px;width:100%;">
			<div
				style="width: 960px;margin: 0px auto;font-size: 16px;line-height: 40px;">
				<span style="color:#B40605;float:left;">用户您好！
					您的身份证号码：${currUser.identity}</span> <span style="float:right;"> <a
					href="/BMweb/user/index">系统首页</a> <a
					href="/BMweb/user/editpwd/${currUser.identity}">修改密码</a> <a
					href="/BMweb/user/index?logout">退出登陆</a></span>
			</div>
		</div>

		<div style="width: 960px;margin: 30px auto;font-size: 14px;">

			（1）同一账户只能添加一次报名信息，不可重复提交。</br> （2）用户如果已经添加过报名信息，登录系统后可查看或者修改个人基本信息和志愿信息。</br> </br>
			</br>
			<c:if test="${currUser.identity!=uinfo.identity}">
				<span class="" style="color:#B40605">您还没有填写报名信息，请点击“立即报名”按钮。</span>
				<a href="/BMweb/bminfo/selectPro" type="button"
					class="btn btn-danger media-heading"> 立即报名 </a>
				</br>
				</br>
				<hr>
			</c:if>
			</br> </br> <span class="" style="color:#0572B4">已经添加过报名信息，则点击下面按钮查看相应信息</span></br>
			</br> <a href="/BMweb/bminfo/showZuserInfo/${currUser.identity}"
				type="button" class="btn btn-default media-heading "> 个人基本信息 </a>
			<!-- 					<hr> -->
			<a href="/BMweb/bminfo/showBbmInfo/${currUser.identity}"
				type="button" class="btn btn-default media-heading"> 本科志愿信息 </a> <a
				href="/BMweb/bminfo/showZbmInfo/${currUser.identity}" type="button"
				class="btn btn-default media-heading"> 专科志愿信息 </a>
		</div>

		<div
			style="background-color:#EEE;height:140px;width:100%;margin-top:200px;text-align: center;">
			</br> </br> <span style="">广西高校联合招生网报名系统 版权所有 © 2015</br></span> 
			<table class="table center-block" style="width:260px;"><tr>
			<td ><h6 data-toggle="tooltip" data-placement="bottom" title="电话：18776951566 QQ:275061439 ">联系方式 </h6></td>
			<td><h6 data-toggle="tooltip" data-placement="bottom" title="广西高校联合招生网报名系统">关于我们 </h6></td>
			<td><h6 data-toggle="tooltip" data-placement="bottom" title="广西高校联合招生网报名系统 版权所有 © 2015">版权信息 </h6></td>
			<td><h6 data-toggle="tooltip" data-placement="bottom" title="seven 技术团队">技术支持 </h6></td>
			</tr></table>
		</div>

	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>