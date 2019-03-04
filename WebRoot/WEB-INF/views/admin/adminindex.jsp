<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>广西高校联合招生网报名系统 管理后台</title>

<link href="/BMweb/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/BMweb/resources/css/dashboard.css" rel="stylesheet">
<script src="/BMweb/resources/js/jquery.2.js" type="text/javascript"></script>

<script type="text/javascript">
	function SetWinHeight(obj) 
{ 
var win=obj; 
if (document.getElementById) 
{ 
if (win && !window.opera) 
{ 
if (win.contentDocument && win.contentDocument.body.offsetHeight) 
win.height = win.contentDocument.body.offsetHeight; 
else if(win.Document && win.Document.body.scrollHeight) 
win.height = win.Document.body.scrollHeight; 
} 
} 
} 
</script>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><b>广西高校联合招生网报名系统 管理后台</b></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/BMweb/admin/index">主页</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">帮助</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">

			<%@include file="/WEB-INF/views/admin/left.jsp"%>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="table-responsive">
					<!-- Button trigger modal -->
					<iframe id="win" name="win" style="width:1800px;height:600px;"
						src="/BMweb/admin/iframe" frameborder="0"
						onload="Javascript:SetWinHeight(this)"></iframe>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"><b>帮助文档</b></h4>
				</div>
				<div class="modal-body">1.民族与籍贯信息是用户填写个人信息时使用的。<br>
2.学校与专业信息是用户填写志愿信息时使用的。<br>
3.个人基本信息与志愿信息均提供查看，添加，修改，删除功能。<br>
4.民族、籍贯、学校、专业信息提供查看，添加，删除功能。</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>
