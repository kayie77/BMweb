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
    if (r != null) return unescape(r[2]); return null;
    }
    
    $().ready(function(){ //如果参数error不为空，则显示用户名或者密码错误
        if(getQueryString("error")==1){
            $(".error_message1").removeClass("hide");
        }
         if(getQueryString("error")==2){
            $(".error_message2").removeClass("hide");
        } 
         if(getQueryString("error")==3){
            $(".error_message3").removeClass("hide");
        } 
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
					您的身份证号码：${currUser.identity}</span> <span style="float:right;">
					<a href="/BMweb/user/index">系统首页</a>　<a href="/BMweb/user/editpwd/${currUser.identity}">修改密码</a>　<a href="/BMweb/user/index?logout">退出登陆</a></span>
			</div>
		</div>

		<div style="width: 960px;margin: 30px auto;font-size: 14px;">
		
		<sf:form method="post" id="editPwd" modelAttribute="user" action="/BMweb/user/updatePwd?update">
			<input  name="u_id" type="hidden"  value="${user.u_id}">
			<table class="table table-bordered" style="margin-top:20px;">
				<tr>
					<td style="font-weight:bold;"><font color="#0D69D3">修改密码</font></td>
					<td></td>
				</tr>
				<tr>
					<td>身份证号：</td>
					<td>${user.identity }<input name="identity" type="hidden"
						value="${user.identity}"></td>
				</tr>
				<tr>
					<td>原密码：</td>
					<td><input type="password" class="form-control" name="oldpwd">
					<a style="color:#a94442 " class="hide error_message1">原密码错误</a></td>
				</tr>
				<tr>
					<td>新密码：</td>
					<td><input type="password" class="form-control" name="newpwd">
					<a style="color:#a94442 " class="hide error_message3">密码长度在6-16位之间</a></td>
				</tr>
				<tr>
					<td>新密码确认：</td>
					<td><input type="password" class="form-control" name="cfnewpwd">
					<a style="color:#a94442 " class="hide error_message2">两次输入密码不一致</a></td>
				</tr>

			</table>
			<button type="submit" class="btn btn-danger center-block" style="margin-bottom:30px;" onclick="$(editPwd).submit();">保存</button>
		</sf:form>
		</div>

		<div
			style="background-color:#EEE;height:140px;width:100%;margin-top:200px;text-align: center;">
			</br>
			</br>
			</br>
			<span style="">广西高校联合招生网报名系统 版权所有 © 2015</br></span>
		</div>

	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>