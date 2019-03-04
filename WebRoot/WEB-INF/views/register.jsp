<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>注册</title>

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
        if(getQueryString("error")==2){
            $(".error_message1").removeClass("hide");
        }
    });
    
	</script>

  </head>
  
  <style type="text/css">
  .aa{
  color:red;
  }
  </style>
  
  <body>
  <div class="container">
  <!-- 顶部 -->
	<div class="panel panel-default">
	
		<div class="panel-body">
			<div class="media">
		<div class="media-left"><img src="/BMweb/resources/images/logo.jpg" alt="..." class="img-rounded"></image></div>
		<div class="media-body"><h2 class="media-heading" style="margin-top:10px;"><b>广西高校联合招生网 </b><small>网上报名系统</small></h2></div>
		</div>
	</div>
	</div>
		
	<!-- 左面板 -->
	<div class="row">
	<!-- <div class="pull-left"> -->
	<div class="col-md-6" style="margin-top:14px;padding-left: 30px; font-size:12px;color: #444;line-height: 22px">
	<h3 style="color: #3071a9;"><b>系统使用说明</b></h3>
	1、 所有使用本平台的考生必须以真实的资料注册。</br>
	2、 每名考生只需注册一次，本平台提供各类别报名、结果查询、信息核对采集等功能。</br>
	3、 请勿在同一台电脑上同时登陆多个账号并修改申请表，以免您不小心把自己的信息填入了其他同学的表格里。</br>
	4、 若有任何疑问，请<a href="mailto:275061439@qq.com">通过邮件</a>联系我们。</br>
	</div>
	
	<!-- 右面板 -->
	<!-- <div class="pull-right"> -->
	<div class="col-md-6">
	<!-- <div class="container" style="max-width:530px;"> -->
	<!-- 登陆模块 -->
	<!-- <form class="form-signin" role="form"> -->
	<sf:form class="form-signin" action="/BMweb/user/process/register/" method="post" id="register_form" modelAttribute="user">
		<h3 class="form-signin-heading"><b>注册用户</b></h3>
        <sf:input class="form-control" path="identity" name="identity" placeholder="身份证号" tips="请输入正确的身份证号码" errortips="身份证长度不符合" /><sf:errors path="identity" cssClass="aa" />
        <sf:password class="form-control" path="u_pwd" name="u_pwd" placeholder="密码" tips="请输入 6-16 个字符，区分大小写" errortips="密码不符合规则" /><sf:errors path="u_pwd" cssClass="aa" />
	   <sf:password class="form-control" path="u_pwd1" name="u_pwd1" placeholder="确认密码" />				      
        <a style="color:#a94442 " class="hide error_message">该账户已存在，请重新输入</a>
        <a style="color:#a94442 " class="hide error_message1">两次输入的密码不相同，请重新输入</a>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" onclick="$('#register_form').submit();">注册</button>

      <!-- </form> -->
	    </sf:form>
	  <!-- 注册新用户 -->
	  <div class="container" style="margin:50px 0px 10px; width:530px;padding-left:160px;">
	  已经有系统账户？&nbsp;&nbsp;&nbsp;<a type="button" href="/BMweb/user/login" class="btn btn-default">点此登录</a>
	  </div>
	  
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
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>