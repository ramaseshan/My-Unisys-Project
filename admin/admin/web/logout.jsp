
<%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 
 <%@page isErrorPage="true" %> 
 <%@page errorPage="error.jsp" %>
 <% 
 %>
 
 <%session.invalidate();%>

<jsp:forward page=" dex.jsp"/>