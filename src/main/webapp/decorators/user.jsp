<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><dec:title default="Homepage" /></title>

<!-- css -->
	
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">	
<link href="<c:url value='/template/user/css/owl.carousel.min.css' />" rel="stylesheet" type="text/css" media="all" />	
<link href="<c:url value='/template/user/css/owl.theme.default.min.css' />" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
<link href="<c:url value='/template/user/css/style.css' />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='/template/user/css/styles.css' />"
	rel="stylesheet" type="text/css" media="all" />

	
</head>
<body>
	<!-- header -->
	<%@ include file="/common/user/header.jsp"%>
	<!-- header -->
	
	<dec:body />

	<!-- footer -->
	<%@ include file="/common/user/footer.jsp"%>
	<!-- footer -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="<c:url value='/template/user/js/scripts.js' />"></script>
	<script src="<c:url value='/template/user/js/jquery.min.js' />"></script>
	<script src="<c:url value='/template/user/js/popper.js' />"></script>
	<script src="<c:url value='/template/user/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/template/user/js/owl.carousel.min.js' />"></script>
	<script src="<c:url value='/template/user/js/main.js' />"></script>
	
</body>
</html>