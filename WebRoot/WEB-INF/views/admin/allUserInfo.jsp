<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>广西高校联合招生网报名系统  管理后台</title>

    <link href="/BMweb/resources/css/bootstrap.min.css" rel="stylesheet">
 	<link href="/BMweb/resources/css/dashboard.css" rel="stylesheet">
	
	<script src="/BMweb/resources/js/jquery.2.js" type="text/javascript"></script>

  </head>

  <body>
  <h2 class="sub-header">用户个人基本信息<small>　<a class="btn btn-default " href="/BMweb/admin/UserInfoIdex" role="button"><font color="#CC6600" size="4px;"> + </font>添加</a></small></h2> 

            <table class="table table-striped">
              <thead>
                <tr>
               	  <th>id</th>
                  <th>身份证</th>
                  <th>名字</th>
                  <th>性别</th>
                  <th>出生日期</th>
                  <th>民族</th>
                  <th>籍贯</th>
                  <th>政治面貌</th>
                  <th>毕业学校</th>
                  <th>毕业时间</th>
                  <th>考生类型</th>
                  <th>学历</th>
                  <th>高考成绩</th>
                  <th>通讯地址</th>
                  <th>身份证地址</th>
                  <th>收信人</th>
                  <th>邮编</th>
                  <th>电话</th>
                  <th>QQ</th>
                  <th>身份证地址</th>
                  <th>备注</th>
                  <th>操作</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
              
              <c:forEach var="userinfo" items="${u_infoList}">
              <tr id="userinfo-item-${userinfo.u_id}">
              <td>${userinfo.u_id }</td>
              <td>${userinfo.identity }</td>
              <td>${userinfo.name }</td>
              <td>${userinfo.sex }</td>
              <td>${userinfo.birthday }</td>
              <td>${userinfo.nation.n_name}</td>
              <td>${userinfo.place.p_name}</td>
              <td>${userinfo.political }</td>
              <td>${userinfo.gradShool }</td>
              <td>${userinfo.gradTime }</td>
              <td>${userinfo.gradCate }</td>
              <td>${userinfo.education }</td>
              <td>${userinfo.results }</td>
              <td>${userinfo.homeAddress }</td>
              <td>${userinfo.address }</td>
              <td>${userinfo.t_name }</td>
              <td>${userinfo.code }</td>
              <td>${userinfo.telephone }</td>
              <td>${userinfo.email }</td>
              <td>${userinfo.qq }</td>
              <td>${userinfo.remarks }</td>
              <td><a id="bt-cfm-del-comment" href="javascript:;" onclick="deleteUserInfo('#userinfo-item-${userinfo.u_id}','${userinfo.u_id}');">删除</a></td>
              <td><a href="/BMweb/admin/editZuserInfo/${userinfo.identity}">修改</a></td>
              </tr>
              </c:forEach>

              </tbody>
            </table> 
                       
<script type="text/javascript">  														   
 function deleteUserInfo(odject,id){
            id = parseInt(id);
            $("#bt-cfm-del-comment").click(function(){
                    data="u_id="+id;
                    $.post(
                        "ajax/deleteUserInfo",
                        data,
                        function(result){
                            if(result=="success"){
                                $(odject).remove();
                            }
                        },
                        "text");    
                });
            $('#cfrm-del').modal({
             keyboard: false,
             backdrop:"static"
            });
        };	
        													   
</script>	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="/BMweb/resources/js/bootstrap.min.js"></script>
  </body>
</html>
