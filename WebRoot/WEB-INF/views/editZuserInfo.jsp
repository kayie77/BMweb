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
    });
    
	</script>
</head>
<body>
	<div>

		<!-- 顶部 -->
		<div class="page-header"
			style="margin:40px 0px 0px;border-bottom: 2px solid #B40605;">
			<h2 style="width:960px;margin:0px auto;">
				<b>广西高校联合招生网 本科生/专科生 报名系统 编辑个人基本信息</b>
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

		<div style="width: 960px;margin: 0px auto;font-size: 14px;">
			<table class="table table-bordered" style="margin-top:20px;">
				<tr>
					<td style="font-weight:bold;"><font color="#0D69D3">填写说明：</font></td>
				</tr>
				<tr>
					<td>（1）请认真填写以下信息，填写完毕后点击最下方的“确定”按钮；</br> （3）“<font color="#FF0000"
						size="3px;"> * </font>”为必填项；</br>
					</td>
				</tr>
				<table>
					</div>


					<!-- 基本信息 -->
					<sf:form method="post" id="Zusr_info" modelAttribute="u_info"
						action="/BMweb/bminfo/updateZuserInfo?update">
						<input name="u_id" type="hidden" value="${uinfo.u_id}">
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;width: 340px;"><font
									color="#0D69D3">个人信息：</font></td>
								<td><a style="color:#a94442;" class="hide error_message ">请填写所有带" * "号的选项</a></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>身份证号</td>
								<td>${uinfo.identity }<input name="identity" type="hidden"
									value="${uinfo.identity}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>姓名</td>
								<td><input type="text" name="name" value="${uinfo.name}"></td>
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
								<td><input type="text" name="gradShool"
									value="${uinfo.gradShool}"></td>
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
								<td><input type="text" name="results"
									value="${uinfo.results}"></td>
							</tr>
						</table>

						<!-- 通讯信息 -->
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;"><font color="#0D69D3">通讯信息：</font></td>
								<td></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>通讯地址</td>
								<td><input class="form-control" type="text" name="address"
									value="${uinfo.address}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>身份证地址</td>
								<td><input class="form-control" type="text"
									name="homeAddress" value="${uinfo.homeAddress}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>收信人</td>
								<td><input type="text" name="t_name"
									value="${uinfo.t_name}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>邮编</td>
								<td><input type="text" name="code" value="${uinfo.code}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>联系电话</td>
								<td><input type="text" name="telephone"
									value="${uinfo.telephone}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>邮箱</td>
								<td><input type="text" name="email" value="${uinfo.email}"></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>QQ</td>
								<td><input type="text" name="qq" value="${uinfo.qq}"></td>
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
					<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
					<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
					<!-- Include all compiled plugins (below), or include individual files as needed -->
					<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>