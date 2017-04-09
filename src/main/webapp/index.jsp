<%@page import="org.jasig.cas.client.util.AbstractCasFilter"%>
<%@page import="org.jasig.cas.client.authentication.AttributePrincipal"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="org.jasig.cas.client.validation.Assertion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>this is Java client1</title>
</head>
<body>
    <h1 style="color:green">this is Java client1</h1>
     <h2><a href="http://localhost">php client1</a></h2>
     <h2>LoginName:<% out.println(((AttributePrincipal) request.getUserPrincipal()).getName()); %> </h2>
     <h2><a href="http://localhost:8081/cas/logout?service=http%3A%2F%2Flocalhost%3A8080%2Fcas-client1">Logout</a></h2>
</body>
</html>