<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>

<script src="js/jquery-3.3.1.min.js"></script>
<link href="assets/css/lib/font-awesome.min.css" rel="stylesheet">
<link href="assets/css/lib/themify-icons.css" rel="stylesheet">
<link href="assets/css/lib/menubar/sidebar.css" rel="stylesheet">
<link href="assets/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/lib/helper.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<style type="text/css">
	textarea.text{
		height:200px;
	}
	#adds{
		margin-left:100px;
	}
</style>
</head>
<body>
	<%@ include file="common.jsp"%>
	<%@ include file="nav.jsp"%>
	<div class="content-wrap">
		<div class="main">
			<div class="row">
				<div class="col-lg-8 p-r-0 title-margin-right">
					<div class="page-header">
						<div class="page-title">
							<h1>
								社团项目信息录入
							</h1>
						</div>
					</div>
				</div>
				<!-- /# column -->
				<div class="col-lg-4 p-l-0 title-margin-left">
					<div class="page-header">
						<div class="page-title">
							<ol class="breadcrumb">
							</ol>
						</div>
					</div>
				</div>
				<!-- /# column -->
			</div>
			<section id="main-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="basic-elements">
									<form role="form" class="col-md-12 form-horizontal" action="insert.action">
										<div class="row">
											<div class="col-lg-6">
												<div class="form-group">
													<label>团队组织名称:</label> 
													<input type="text" class="form-control" name="name" placeholder="请输入团队名称" required>
												</div>
												<div class="form-group">
													<label>秘书长:</label> 
													<input type="text" class="form-control" name="sgeneral" placeholder="请输入秘书长" required>
												</div>
												<div class="form-group">
													<label>办公地点:</label> 
													<input type="text" class="form-control" name="office" placeholder="请输入地点" required>
												</div>
												<div class="form-group">
													<label>联系电话:</label>
													<input type="text" class="form-control" name="phone" placeholder="请输入联系电话">
												</div>
												
											</div>
											<div class="col-lg-6">
												<div class="form-group">
													<label>法定代表人:</label> 
													<input type="text" class="form-control" name="director" placeholder="请输入法定代表人" required>
												</div>
												<div class="form-group">
													<label>业务主管单位:</label>
													<c:if test="${duty == '3' }">
														<select name="sunit" class="form-control">
															<c:forEach items="${unitlist}" var="list">
																<option value="${list.id }">${list.name }</option>
															</c:forEach>
														</select>
													</c:if>
													<c:if test="${duty == '2' }">
														<input type="hidden" class="form-control" readonly="readonly"
															name="sunit" required value="${uid }">
															<input type="text" class="form-control" readonly="readonly"
															name="unitname" placeholder="请输入单位" required value="${unitname }">
													</c:if>
												</div>
												<div class="form-group">
													<label>联系人:</label> 
													<input type="text" class="form-control" name="linkman" placeholder="请输入联系人名称" required>
												</div>
												<div class="form-group">
													<label>任职时间:</label> 
													<input type="date" name="eontime" class="form-control" required="required">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12">
												<div class="form-group">
													<label>历年信息:</label> 
													<textarea type="text" class="form-control input-lg text" name="information" rows="8" cols="" placeholder="请输入历年信息"></textarea>
												</div>
	                              				<div class="form-group">
													<label>备注</label>
													<textarea class="form-control text" rows="8" cols="" name="note"></textarea>
												</div>
												
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12">
		                              			<div class="form-group">
													<div class="col-sm-offset-2 col-sm-10">
														<button type="submit" class="btn btn-default" id="button">录入</button>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	
	<script src="assets/js/lib/jquery.min.js"></script>
	<script src="assets/js/lib/jquery.nanoscroller.min.js"></script>
	<script src="assets/js/lib/menubar/sidebar.js"></script>
	<script src="assets/js/lib/preloader/pace.min.js"></script>
	<script src="assets/js/lib/bootstrap.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>

