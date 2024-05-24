<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title><dec:title default="Homepage"/></title>
		
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="<c:url value='/template/admin/css/styles.css' />" rel="stylesheet" />
   	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
</head>

<body class="sb-nav-fixed">
	<!-- header -->
    <%@ include file="/common/admin/header.jsp" %>
    <!-- header -->
	
    <div id="layoutSidenav">
    	<%@ include file="/common/admin/menu.jsp" %>
    	<div id="layoutSidenav_content">
    		<main><dec:body/></main>
 		   	<%@ include file="/common/admin/footer.jsp" %>
    	</div>
    </div>	

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="<c:url value='/template/admin/js/scripts.js' />"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="<c:url value='/template/admin/assets/demo/chart-area-demo.js' />"></script>
    <script src="<c:url value='/template/admin/assets/demo/chart-bar-demo.js' />"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="<c:url value='/template/admin/js/datatables-simple-demo.js' />"></script>
</body>
</html>


