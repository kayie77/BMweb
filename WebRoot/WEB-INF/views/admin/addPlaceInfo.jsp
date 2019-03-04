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

<h2 class="sub-header">添加籍贯信息</h2><hr>
			<div class="col-sm-9  col-md-10  main">
				<div class="table-responsive">
					<!-- 基本信息 -->
					<sf:form method="post" id="place_info" modelAttribute="place"
						action="/BMweb/admin/addPlaceInfoIdex">
						<table class="table table-bordered">
							<tr>
								<td style="font-weight:bold;width: 340px;"><font
									color="#0D69D3">信息：</font></td>
								<td><a style="color:#a94442;" class="hide error_message ">请填写所有带"
										* "号的选项</a></td>
							</tr>
							<tr>
								<td style="text-align:right;"><font color="#FF0000"
									size="3px;"> * </font>名称</td>
								<td><input type="text" id="p_name" name="p_name"></td>
							</tr>
						
						</table>
						
						<button type="submit" class="btn btn-danger center-block"
							style="margin-bottom:30px;" onclick="$('#place_info').submit();">保存</button>
					</sf:form>
				</div>
			</div>
			
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/BMweb/resources/js/bootstrap.min.js"></script>
</body>
</html>