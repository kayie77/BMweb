<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
        if(getQueryString("error")==2){
            $(".error_message").removeClass("hide");
        }
        if(getQueryString("error")==1){
            $(".error_message1").removeClass("hide");
        }
    });
    
	</script>

</head>
<body>

<h2 class="sub-header">添加用户个人基本信息</h2><hr>
			<div class="col-sm-9  col-md-10  main">
				<div class="table-responsive">
					<!-- 基本信息 -->
					<sf:form method="post" id="Zusr_info" modelAttribute="u_info"
						action="/BMweb/admin/addUserInfoIdex">
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;width: 340px;"><font
									color="#0D69D3">个人信息：</font></td>
								<td><a style="color:#a94442;" class="hide error_message ">请填写所有带" * "号的选项</a>
								<a style="color:#a94442;" class="hide error_message1">不能添加相同身份证号用户</a></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>身份证号</td>
								<td><input type="text" name="identity"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>姓名</td>
								<td><input type="text" name="name"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>性别</td>
								<td><select name="sex"><option>男</option>
										<option>女</option></select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>出生日期</td>
								<td><input type="date" name="birthday"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>民族</td>
								<td><select name="n_id" id="n_id">
										<c:forEach var="nation" items="${nations}">
											<option value="${nation.n_id}">${nation.n_name}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>籍贯</td>
								<td><select name="p_id" id="p_id">
										<c:forEach var="place" items="${places}">
											<option value="${place.p_id}">${place.p_name}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>政治面貌</td>
								<td><select name="political"><option>团员</option>
										<option>党员</option>
										<option>群众</option></select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>毕业学校</td>
								<td><input type="text" name="gradShool"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>毕业时间</td>
								<td><input type="date" name="gradTime"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>考生类型</td>
								<td><select name="gradCate"><option>普通考生</option>
										<option>艺术考生</option>
										<option>体育考生</option>
										<option>中专毕业生</option></select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>学历</td>
								<td><select name="education"><option>高中</option>
										<option>中专</option></select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>高考成绩</td>
								<td><input type="text" name="results"></td>
							</tr>
						</table>

						<!-- 通讯信息 -->
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;width:340px;"><font color="#0D69D3">通讯信息：</font></td>
								<td></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>通讯地址</td>
								<td><input class="form-control" type="text" name="address"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>身份证地址</td>
								<td><input class="form-control" type="text"
									name="homeAddress"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>收信人</td>
								<td><input type="text" name="t_name"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>邮编</td>
								<td><input type="text" name="code"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>联系电话</td>
								<td><input type="text" name="telephone"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>邮箱</td>
								<td><input type="text" name="email"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>QQ</td>
								<td><input type="text" name="qq"></td>
							</tr>
							<tr>
								<td style="text-align:right;">备注</td>
								<td><textarea class="form-control" name="remarks" rows="3"></textarea></td>
							</tr>
						</table>

						<button type="submit" class="btn btn-danger center-block"
							style="margin-bottom:30px;" onclick="$('#Zusr_info').submit();">保存</button>
					</sf:form>
				</div>
			</div>
			
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>