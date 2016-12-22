<%--
  Created by IntelliJ IDEA.
  User: ma
  Date: 2016/10/17
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>订单</title>
<%--<link type="text/css" rel="stylesheet" href="../stylesheets/style.css" />--%>
<link rel="stylesheet" href="<%=path%>/stylesheets/reset.css">

<link href="<%=path%>/stylesheets/bootstrap.min.css" rel="stylesheet" />
<link href="<%=path%>/stylesheets/bootstrap-theme.min.css"
	rel="stylesheet" />
<link href="<%=path%>/stylesheets/bootstrap-treeview.min.css"
	rel="stylesheet" />
<link href="<%=path%>/stylesheets/shujutongji.css" rel="stylesheet" />
<link href="<%=path%>/stylesheets/ddcss.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=path%>/stylesheets/header.css">

<script type="text/javascript"
	src="<%=path%>/javascripts/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="<%=path%>/javascripts/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/javascripts/bootstrap-treeview.min.js"></script>
<script src="<%=path%>/javascripts//knockout-3.4.0rc.js"></script>
<style>
* {
	box-sizing: content-box;
	-webkit-box-sizing: content-box;
}

.c_box {
	min-width: 1350px;
	width: 100%;
}

.c_box .col-md-2 {
	min-width: 189px;
	width: 12.4%;
}

.c_box .c_left_box {
	height: 850px;
}

.c_box .c_right_box {
	min-width: 1056.7px;
	width: 79%;
}

.table-1 tbody td {
	font-size: 12px;
}
</style>

</head>
<body>

	<header>
		<div class="">
			<div class="head-left fl">
				<img src="<%=path%>/images/logo.png" height="35" width="50" alt="">
				人事管理系统
			</div>

			<div class="head-nav fl" id="h-nav">
				<ul>
					<li>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								导入模块 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" style="background-color: #3792F2;">
								<li
										style="-webkit-border-radius: 10; -moz-border-radius: 10; border-radius: 10;"><a onclick="ajaxLoadPage('<%=basePath%>ExcelStaffInfo/homePage.do')"
								>花名册导入</a></li>
								<li><a onclick="ajaxLoadPage('<%=basePath%>/Import/navigator.do')">审批数据导入</a></li>
							</ul>
						</div>
					</li>
					<li>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								通讯录 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" style="background-color: #3792F2;">
								<li
										style="-webkit-border-radius: 10; -moz-border-radius: 10; border-radius: 10;"><a onclick="ajaxLoadPage('<%=basePath%>userinfo/testMethod.do')"
								>通讯录</a></li>
							</ul>
						</div>
					</li>
					<li>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								工资奖金 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" style="background-color: #3792F2;">
								<li
										style="-webkit-border-radius: 10; -moz-border-radius: 10; border-radius: 10;"><a onclick="ajaxLoadPage('<%=basePath%>userinfo/querys.do')"
								>奖金生成</a></li>
								<li><a onclick="ajaxLoadPage('<%=basePath%>usersalary/search_salary_page.do')">工资导出</a></li>
							</ul>
						</div>
					</li>
					<li>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								发文模块 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" style="background-color: #3792F2;">
								<li
										style="-webkit-border-radius: 10; -moz-border-radius: 10; border-radius: 10;"><a onclick="ajaxLoadPage('<%=basePath%>toAskForLeave.do')"
								>请假发文</a></li>
								<li><a onclick="ajaxLoadPage('<%=basePath%>usersalary/toOverTime.do')">加班发文</a></li>
								<li><a onclick="ajaxLoadPage('<%=basePath%>usersalary/toSocialSecurity.do')">社保发文</a></li>
								<%--<li><a onclick="ajaxLoadPage('<%=basePath%>usersalary/toItemChange.do')">项目变更发文</a></li>--%>
							</ul>
						</div>
					</li>
					<li>

						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								订单系统 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" style="background-color: #3792F2;">
								<li
									style="-webkit-border-radius: 10; -moz-border-radius: 10; border-radius: 10;"><a onclick="ajaxLoadPage('<%=basePath%>order/search_order_page.do')"
									>订单查询</a></li>
							 <%--<li><a onclick="ajaxLoadPage('<%=basePath%>usersalary/search_salary_page.do')">工资查询</a></li>--%>
							</ul>
						</div>
					</li>

				</ul>
			</div>
			<div class="head-right fl">
				欢迎您！管理员&nbsp;&nbsp;&nbsp; <a href=""><img
					src="<%=path%>/images/guanbi.png" height="22" width="22" alt=""></a>
			</div>
		</div>
	</header>

	<div class="row-fluid c_box" id="loadcontent">
		
	
	</div>
	<div class="row-fluid">
		<div class="footer" data-reactid=".0.a">
			<div style="margin-bottom: 5px;" data-reactid=".0.a.0">
				<span data-reactid=".0.a.0.0"> <img width="11px"
					src="https://gw.alicdn.com/tps/TB14UngLXXXXXXQapXXXXXXXXXX-22-26.png"
					data-reactid=".0.a.0.0.0"></span> <span data-reactid=".0.a.0.1">上海音达科技实业有限公司</span>
			</div>

		</div>
	</div>
	
</body>

<script type="text/javascript">
function ajaxLoadPage(url){
	
	$.post(url,function(result){
		
		$("#loadcontent").html(result).fadeIn();
		
	});
	
	
}
</script>
</html>