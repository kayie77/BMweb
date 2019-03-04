<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<b>广西高校联合招生网 本科生 报名系统 结果</b>
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
		</br></br></br>
			<span style="color:#0572B4">已添加报名信息，点击下面按钮查看相应信息</span></br></br>
					<a href="/BMweb/bminfo/showBuserInfo/${currUser.identity}" type="button" class="btn btn-default media-heading">
					个人基本信息
					</a>
					<a href="/BMweb/bminfo/showBbmInfo/${currUser.identity}" type="button" class="btn btn-default media-heading">
					志愿信息
					</a>

		</div>
		
		<div style="background-color:#EEE;height:140px;width:100%;margin-top:200px;text-align: center;">			
		</br></br></br><span style="">广西高校联合招生网报名系统 版权所有 © 2015</br></span>
		</div>

	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>