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
<h2 class="sub-header">用户志愿信息详情页</h2><hr>
			<div class="col-sm-9  col-md-10  main">
				<div class="table-responsive">

					<!-- 志愿信息 -->
					<sf:form method="post" id="bbm" modelAttribute="bbm_info" >
					<table class="table table-bordered">
						<tr>
							<td style="font-weight:bold;width:340px;"><font color="#0D69D3">志愿信息：</font></td>
							<td></td>
						</tr>
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>身份证号</td>
							<td>${bbm_info.identity}</td>
						</tr>
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>第一志愿</td>
							<td>${bbm_info.shool.s_name}</td>
						</tr>
						
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业一</td>
							<td>${bbm_info.pro_1.p_name}</td>
						</tr>
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业二</td>
							<td>${bbm_info.pro_2.p_name}</td>
						</tr>

						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业三</td>
							<td>${bbm_info.pro_3.p_name}</td>
						</tr>
						<tr>
							<td style="text-align:right;"><font color="#FF0000"
								size="3px;"> * </font>专业四</td>
							<td>${bbm_info.pro_4.p_name}</td>
						</tr>
					</table>
					
						<a href="/BMweb/admin/editBbmInfo/${bbm_info.identity}" type="button" class="btn btn-danger center-block"
							style="margin-bottom:30px;width: 100px;">修改</a>
					
					</sf:form>
					</div>
					</div>
					<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
					<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
					<!-- Include all compiled plugins (below), or include individual files as needed -->
					<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>