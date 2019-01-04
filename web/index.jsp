<%-- 
    Document   : index
    Created on : 13-Mar-2017, 11:02:36 PM
    Author     : patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("user") != null)
    {
        response.sendRedirect(((entity.User)session.getAttribute("user")).getRole().toLowerCase().concat("Home.jsp"));
    }
%>
<!DOCTYPE html>
<jsp:include page="header.jsp" />
<jsp:include page="carousel.jsp"/>
<jsp:include page="footer.jsp" />
