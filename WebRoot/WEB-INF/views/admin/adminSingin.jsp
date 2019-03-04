<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="zh-CN">
  <head>
    <meta charset="gbk">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>招生网测试</title>

    <!-- Bootstrap -->
    <link href="/BMweb/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/BMweb/resources/css/signin.css" rel="stylesheet">
	
	<script src="/BMweb/resources/js/jquery.2.js" type="text/javascript"></script>

	<script type="text/javascript">
    function getQueryString(name) {//获取某个url中所带的参数
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
    }
    
    $().ready(function(){ //如果参数error不为空，则显示用户名或者密码错误
        if(getQueryString("error")==1){
            $(".error_message").removeClass("hide");
        }
       /*  if(getQueryString("error")==2){
            $(".error_message1").removeClass("hide");
        } */
    });
    
	</script>

  </head>
  <body>
  <div class="container">
  <!-- 顶部 -->
	<div class="panel panel-default">
	
		<div class="panel-body">
			<div class="media">
		<div class="media-left"><img src="/BMweb/resources/images/logo.jpg" alt="..." class="img-rounded"></image></div>
		<div class="media-body"><h2 class="media-heading" style="margin-top:10px;"><b>广西高校联合招生网</b> <small>网上报名系统</small></h2></div>
		</div>
	</div>
	</div>
		
	<!-- 左面板 -->
	<div class="row">
	<!-- <div class="pull-left"> -->
	<div class="col-md-6">
	<img src="/BMweb/resources/images/index_02.jpg" class="img-responsive" alt="Responsive image">
	</div>
	
	<!-- 右面板 -->
	<!-- <div class="pull-right"> -->
	<div class="col-md-6">
	<!-- <div class="container" style="max-width:530px;"> -->
	<!-- 登陆模块 -->
	<form class="form-signin" method="post" role="form" action="process/login" id="login_form">
	
        <h3 class="form-signin-heading"><b>管理员登录</b></h3>
        <input type="text" class="form-control" placeholder="身份证号" name="identity" required autofocus>
        <input type="password" class="form-control" placeholder="密码" name="pwd" required>
        <a style="color:#a94442 " class="hide error_message">用户名密码不正确</a>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="$('#login_form').submit();">登录</button>
      </form>
	  
	  </div>
	</div>
	
	<!-- </div> -->
	</div>
	
	<div class="container">
	<!-- 底部 -->
		<div class="panel panel-default" style="background-color:#ECECEC;">
		<div class="panel-body">
			<p class="text-center">广西高校联合培养自主选拔招生办公室 版权所有    © 2015</p>
		</div>
		</div>
	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/BMweb/resources/js/bootstrap.min.js"></script>
  </body>
</html>