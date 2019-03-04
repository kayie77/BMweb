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
<h2 class="sub-header">用户个人基本信息详情页</h2><hr>
			<div class="col-sm-9  col-md-10  main">
				<div class="table-responsive">
					<!-- 基本信息 -->
					<sf:form method="post" id="Zusr_info" modelAttribute="u_info" action="">
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;width: 340px;"><font color="#0D69D3">个人信息：</font></td>
								<td></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>身份证号</td>
								<td>${uinfo.identity }<input name="identity"
									type="hidden" value="${uinfo.identity}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>姓名</td>
								<td>${uinfo.name }</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>性别</td>
								<td>${uinfo.sex}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>出生日期</td>
								<td>${uinfo.birthday}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>民族</td>
								<td>${uinfo.nation.n_name}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>籍贯</td>
								<td>${uinfo.place.p_name}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>政治面貌</td>
								<td>${uinfo.political}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>毕业学校</td>
								<td>${uinfo.gradShool}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>毕业时间</td>
								<td>${uinfo.gradTime}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>考生类型</td>
								<td>${uinfo.gradCate}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>学历</td>
								<td>${uinfo.education}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>高考成绩</td>
								<td>${uinfo.results}</td>
							</tr>
						</table>

						<!-- 通讯信息 -->
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;width: 340px;"><font color="#0D69D3">通讯信息：</font></td>
								<td></td>
							</tr>
							<tr>
								<td  style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>通讯地址</td>
								<td>${uinfo.address}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>身份证地址</td>
								<td>${uinfo.homeAddress}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>收信人</td>
								<td>${uinfo.t_name}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>邮编</td>
								<td>${uinfo.code}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>联系电话</td>
								<td>${uinfo.telephone}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>邮箱</td>
								<td>${uinfo.email}</td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>QQ</td>
								<td>${uinfo.qq}</td>
							</tr>
							<tr>
								<td style="text-align:right;">备注</td>
								<td>${uinfo.remarks}</td>
							</tr>
						</table>
						<a href="/BMweb/admin/editZuserInfo/${uinfo.identity}" type="button" class="btn btn-danger center-block"
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