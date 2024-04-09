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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="<c:url value='/template/admin/js/scripts.js' />"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="<c:url value='/template/admin/assets/demo/chart-area-demo.js' />"></script>
    <script src="<c:url value='/template/admin/assets/demo/chart-bar-demo.js' />"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="<c:url value='/template/admin/js/datatables-simple-demo.js' />"></script>
</body>
</html>


