<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<meta charset="UTF-8">--%>
<%--<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--<meta name="contextPath" content="${pageContext.request.contextPath}"/>--%>
<%--&lt;%&ndash;<c:if test="${not empty sessionScope.currentUser}">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <meta name="currentUserId" content="${sessionScope.currentUser.id}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:if test="${not empty requestScope.product}">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <meta name="productId" content="${requestScope.product.id}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>

<%--<link href="${pageContext.request.contextPath}/img/favicon.ico" rel="shortcut icon" type="image/x-icon">--%>
<%--<!-- Bootstrap v5.0.1 -->--%>
<%--<link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet">--%>
<%--<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.js" type="text/javascript"></script>--%>
<%--<!-- Bootstrap Icons v1.5.0 -->--%>
<%--<link href="${pageContext.request.contextPath}/css/bootstrap-icons.css" type="text/css" rel="stylesheet">--%>


<%--
  Created by IntelliJ IDEA.
  User: 7390
  Date: 2/24/2025
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--them thu vien nay de su dung the c--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Trang chủ</title>

    <link href="${contextPath}/static/img/favicon.ico" rel="shortcut icon" type="image/x-icon">

    <!-- Bootstrap v5.0.1 -->
    <link href="${contextPath}/static/css/bootstrap.css" type="text/css" rel="stylesheet">
    <script src="js/bootstrap.bundle.js" type="text/javascript"></script>

    <!-- Bootstrap Icons v1.5.0 -->
    <link href="${contextPath}/static/css/bootstrap-icons.css" type="text/css" rel="stylesheet">

    <!-- Custom Styles -->
    <link href="${contextPath}/static/css/styles.css" type="text/css" rel="stylesheet">
</head>
