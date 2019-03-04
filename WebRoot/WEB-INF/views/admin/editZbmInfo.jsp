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
        if(getQueryString("error")==2){
            $(".error_message").removeClass("hide");
        }
    });
    
	</script>

</head>
<body>
	<h2 class="sub-header">修改志愿信息</h2>
	<hr>
	<div class="col-sm-9  col-md-10  main">
		<div class="table-responsive">

					<!-- 志愿信息 -->
					<sf:form method="post" id="zbm" modelAttribute="zbm_info"
						action="/BMweb/admin/updateZbmInfo?update">
						<input name="z_id" type="hidden" value="${zbminfo.z_id}">
						<input name="identity" type="hidden" value="${zbminfo.identity}">
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;"><font color="#0D69D3">志愿信息：</font></td>
								<td></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>第一志愿</td>
								<td><select name="shool1" id="shool">
										<c:forEach var="shool" items="${shools}">
											<option value="${shool.s_id}">${shool.s_name}</option>
										</c:forEach>
								</select></td>
							</tr>

							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>专业一</td>
								<td><select name="pro1" id="pro_1">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>专业二</td>
								<td><select name="pro2" id="pro_2">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach>
								</select></td>
							</tr>

							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>第二志愿</td>
								<td><select name="shool2" id="shool_1">
										<c:forEach var="shool" items="${shools}">
											<option value="${shool.s_id}">${shool.s_name}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>专业二</td>
								<td><select name="pro3" id="pro_3">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>专业二</td>
								<td><select name="pro4" id="pro_4">
										<c:forEach var="professional" items="${professionals}">
											<option value="${professional.pro_id}">${professional.p_name}</option>
										</c:forEach>
								</select></td>
							</tr>
						</table>
						<button type="submit" class="btn btn-danger center-block"
							style="margin-bottom:30px;" onclick="$(zbm).submit();">保存</button>
					</sf:form>
					</div>
					</div>
					<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
					<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
					<!-- Include all compiled plugins (below), or include individual files as needed -->
					<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>