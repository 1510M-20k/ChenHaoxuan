<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购票平台</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap-datetimepicker/2.4.2/css/bootstrap-datetimepicker.min.css"/>
</head>
<body class="container">
	<!-- 注册窗口 -->
     <div id="register" class="modal fade" tabindex="-1" >
         <div class="modal-dialog" >
             <div class="modal-content">
                 <div class="modal-body">
                     <button class="close" data-dismiss="modal">
                         <span>&times;</span>
                     </button>
                 </div>
                 <div class="modal-title">
                     <h1 class="text-center">注册</h1>
                 </div>
                 <div class="modal-body">
                     <form class="form-group" action="<%=request.getContextPath() %>/sign" method="get">
                             <div class="form-group">
                                 <label for="">用户名</label>
                                 <input class="form-control" type="text" name="username" placeholder="6-15位字母或数字">
                             </div>
                             <div class="form-group">
                                 <label for="">密码</label>
                                 <input class="form-control" type="password" name="password" placeholder="至少6位字母或数字">
                             </div>
                             <hr>
                             <div class="form-group">
                                 <label for="">真实姓名</label>
                                 <input class="form-control" type="text" name="name" placeholder="必须是真实姓名">
                             </div>
                             <div class="form-group">
                                 <label for="">性别</label><br>
                                 <label class="radio-inline">
									<input type="radio" name="gender" value="男" checked="checked"> 男
								 </label>
								 <label class="radio-inline">
								    <input type="radio" name="gender" value="女"> 女
								 </label>
                             </div>
                             <div class="form-group">
                                 <label for="">身份证号</label>
                                 <input class="form-control" type="text" name="idCard" placeholder="请输入18位身份证号">
                             </div>
                             <div class="form-group">
                                 <label for="">地址</label>
                                 <input class="form-control" type="text" name="address" placeholder="请输入您的住址">
                             </div>
                             <div class="form-group">
                                 <label for="">电话</label>
                                 <input class="form-control" type="text" name="teIno" placeholder="请输入您的电话号码">
                             </div>
                             <div class="text-right">
                                 <button class="btn btn-primary" type="submit">提交</button>
                                 <button class="btn btn-danger" data-dismiss="modal">取消</button>
                             </div>
                             <a href="" data-toggle="modal" data-dismiss="modal" data-target="#login">已有账号？点我登录</a>
                     </form>
                 </div>
             </div>
         </div>
     </div>
     <!-- 登录窗口 -->
     <div id="login" class="modal fade" >
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-body">
                     <button class="close" data-dismiss="modal">
                         <span>&times;</span>
                     </button>
                 </div>
                 <div class="modal-title">
                     <h1 class="text-center">登录</h1>
                 </div>
                 <div class="modal-body">
                     <form class="form-group" action="<%=request.getContextPath() %>/login">
                             <div class="form-group">
                                 <label for="">账户</label>
                                 <input class="form-control" type="text" name="uid" placeholder="">
                             </div>
                             <div class="form-group">
                                 <label for="">密码</label>
                                 <input class="form-control" type="password" name="password" placeholder="">
                             </div>
                             <div class="text-right">
                                 <button class="btn btn-primary" type="submit">登录</button>
                                 <button class="btn btn-danger" data-dismiss="modal">取消</button>
                             </div>
                             <a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
                     </form>
                 </div>
             </div>
        </div>
     </div>
	<nav class="navbar navbar-inverse" role="navigation">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse"
	                data-target="#example-navbar-collapse">
	            <span class="sr-only">切换导航</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="#">电子商务平台</a>
	    </div>
	    <div class="collapse navbar-collapse" id="example-navbar-collapse">
	        <ul class="nav navbar-nav navbar-right">
	            <c:if test="${sessionScope.user==null }">
	            	<li><a href="#" data-toggle="modal"  data-target="#register" ><span class="glyphicon glyphicon-user"></span> 注册</a></li> 
           			<li><a href="#" data-toggle="modal"  data-target="#login" ><span class="glyphicon glyphicon-log-in"></span> 登录</a></li> 
	            </c:if>
	            <c:if test="${sessionScope.user!=null }">
	            	<li><a href="#"><span class="glyphicon glyphicon-user"></span> ${sessionScope.user.username },欢迎您!</a></li> 
           			<li><a href="<%=request.getContextPath() %>/loginOff"><span class="glyphicon glyphicon-off"></span> 退出</a></li> 
	            </c:if>
	        </ul>
	    </div>
	</nav>
	<div class="row">
		<div class="col-md-2">
			<ul class="nav nav-pills nav-stacked" style="width: 150px">
				<li><a href="<%=request.getContextPath() %>/main">首页</a></li>   
				<li class="active"><a href="<%=request.getContextPath() %>/getAllTicket">实时订票</a></li>
				<li><a href="<%=request.getContextPath() %>/myOrder">我的订单 </a></li> 
				<li><a href="<%=request.getContextPath() %>/myInfo">会员信息</a></li> 
				<li><a href="<%=request.getContextPath() %>/payMoney">会员充值</a></li> 
			</ul>
		</div>
		<div class="col-md-10">
			<div class="row">
				<div class='col-md-9'>
					<form action="<%=request.getContextPath() %>/getAllTicket" method="post">
						<div style="width: 500px" class='input-group date' id='datetimepicker'>  
				                <input type='text' class="form-control" name="datetime" placeholder="请选择起始日期(查询7天以内票项)"/>  
				                <span class="input-group-addon">  
				                    <span class="glyphicon glyphicon-calendar"></span>  
				                </span>  
				                <span class="input-group-btn">
							        <button class="btn btn-default" type="submit">查询</button>
							    </span>
			            </div>
					</form>
		        </div>
	            <div class='col-md-1'>
	           		<a class="btn btn-default" style="margin-left: 100px" href="<%=request.getContextPath() %>/myCar" role="button">查看购物车</a>
	        	</div>
            </div>
			<div class="table-responsive">
			  	<table class="table table-hover">
			 		<thead>
			 			<tr>
			 				<td>序号</td>
			 				<td>票名</td>
			 				<td>时间</td>
			 				<td>总票数</td>
			 				<td>剩余票数</td>
			 				<td>单价(元)</td>
			 				<td>状态</td>
			 				<td>购票数</td>
			 				<td>操作</td>
			 			</tr>
			 		</thead>
			 		<tbody>
			 			<c:forEach items="${tickets }" var="t">
			 			<tr>
			 				<td>${t.tid }</td>
			 				<td>${t.tname }</td>
			 				<td>${t.startTime }</td>
			 				<td>${t.amount }</td>
			 				<td>${t.balance }</td>
			 				<td>${t.price }</td>
			 				<td>
			 					<c:if test="${t.status==1 }">
			 						<p style="color: green;">售票中</p>
			 					</c:if>
			 					<c:if test="${t.status==0 }">
			 						<p style="color: red;">已停售</p>
			 					</c:if>
			 				</td>
			 				<td>
			 					<div class="input-group input-group-sm" style="width: 100px;margin: 0 auto;">
							      <span class="input-group-btn">
							        <button class="btn btn-default" id="minus${t.tid }" name="minus" type="button">-</button>
							      </span>
							      <input type="text" class="form-control" id="num${t.tid }" value="0">
							      <span class="input-group-btn">
							        <button class="btn btn-default" id="add${t.tid }" name="add" type="button">+</button>
							      </span>
							    </div><!-- /input-group -->
			 				</td>
			 				<td>
			 					<button type="button" class="btn btn-primary btn-sm" name="addCar">加入购物车</button>
			 				</td>
			 			</tr>
			 			</c:forEach>
			 		</tbody>
				</table>
			</div>
		</div>
	</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/webjars/bootstrap-datetimepicker/2.4.2/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/webjars/bootstrap-datetimepicker/2.4.2/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(function() {
		$("td,th").addClass("text-center"); 
		$('#datetimepicker').datetimepicker({
			language:  'zh-CN',  //日期
		    format: 'yyyy-mm-dd',
		    startDate: '${now}',
		    autoclose:true,
		    minView:2
		});
		$("[name='minus']").click(function() {
			var tid = $(this).parents("tr").find("td").eq(0).html();
			var num = parseInt($("#num"+tid).val());
			if((num-1)>=0){
				$("#num"+tid).val(num-1);
			}
		});
		$("[name='add']").click(function() {
			var tid = $(this).parents("tr").find("td").eq(0).html();
			var num = parseInt($("#num"+tid).val());
			$("#num"+tid).val(num+1);
		});
		$("[name='addCar']").click(function() {
			var tid = $(this).parents("tr").find("td").eq(0).html();
			var tnum = $("#num"+tid).val();
			$.ajax({
				type:"post",
				url:"<%=request.getContextPath() %>/addCar",
				data:{
					tid : tid,
					tnum : tnum
				},
				dataType:"text",
				success:function(data){
					if(data=="1"){
						alert("已添加至购物车!");
					}else if(data=="0"){
						alert("添加失败,请重试!");
					}
				}
			});
		});
	});
</script>
</body>
</html>