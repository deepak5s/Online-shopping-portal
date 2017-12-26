<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />

<spring:url var="js" value="/resources/js" />

<spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ezone- ${title}</title>
    
   <script>

	window.menu = '${title}';

</script>
    
    
    
    
    

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    
    <!-- Bootstrap Theme CSS -->
    <link href="${css}/bootstrap-redable-theme.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/ezone.css" rel="stylesheet">

  </head>

  <body>
  <div class="wrapper">

    <!-- Navigation -->
    <%@include file="./shared/navbar.jsp" %>
    
    
    <!-- Page Content Comes here-->
    
    <div class="content">
   <c:if test="${userClickHome == true }">

				<%@include file="home.jsp"%>

			</c:if>




            <!-- Load only when user clicks about -->

			<c:if test="${userClickAbout == true }">

				<%@include file="aboutus.jsp"%>

			</c:if>



			<!-- Load only when user clicks contact -->

			<c:if test="${userClickContact == true }">

				<%@include file="contactus.jsp"%>

			</c:if>

			


</div>



    
   <!-- FOOTER COMES HERE -->
   <%@include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${jquery}/jquery.min.js"></script>
    <script src="${jquery}/bootstrap.bundle.min.js"></script>
    
    
    <!-- SELF CODED JAVASCRIPT -->

		<script src="${js}/myapp.js"></script>
    
</div>
  </body>

</html>

