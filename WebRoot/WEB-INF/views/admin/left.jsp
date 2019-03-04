<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  </head>

  <body>
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">用户个人信息管理</a></li>
            <li><a href="/BMweb/admin/allUserInfo" target="win">个人基本信息</a></li>
           	<li><a href="/BMweb/admin/allNationInfo"  target="win">民族</a></li>
            <li><a href="/BMweb/admin/allPlaceInfo" target="win">籍贯</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">志愿信息</a></li>
            <li><a href="/BMweb/admin/allBbmInfo" target="win">本科志愿信息</a></li>
            <li><a href="/BMweb/admin/allZbmInfo" target="win">专科志愿信息</a></li>
            <li><a href="/BMweb/admin/allShoolInfo" target="win">学校</a></li>
            <li><a href="/BMweb/admin/allProInfo" target="win">专业</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">其它</a></li>
			<li><a href="/BMweb/admin/index">首页</a></li>
			<li><a href="/BMweb/admin/login?logout">退出</a></li>
          </ul>
        </div>
  </body>
</html>
