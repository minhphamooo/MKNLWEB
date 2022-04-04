<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><decorator:title default="Master-layout"/></title>
<link rel="shortcut icon"
	href="<c:url value="/templates/images/favicon.png"/>">
<link href="<c:url value="/templates/css/bootstrap.css"/>"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="<c:url value="/templates/css/font-awesome.min.css"/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="templates/css/flexslider.css"/>" type="text/css"
	media="screen" />
<link href="<c:url value="/templates/css/sequence-looptheme.css"/>"
	rel="stylesheet" media="all" />
<link href="<c:url value="/templates/css/style.css"/>" rel="stylesheet">
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
<decorator:head/>
</head>

<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
<decorator:body></decorator:body>
<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
<!-- Bootstrap core JavaScript==================================================-->
<script type="text/javascript"
	src="<c:url value="/templates/js/jquery-1.10.2.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/templates/js/jquery.easing.1.3.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/templates/js/bootstrap.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/templates/js/jquery.sequence-min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/templates/js/jquery.carouFredSel-6.2.1-packed.js"/>"></script>
<script defer src="<c:url value="/templates/js/jquery.flexslider.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/templates/js/script.min.js"/>"></script>
</body>
</html>