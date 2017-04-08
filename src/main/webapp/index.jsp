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
<title>welcome</title>
</head>
<body>
	<%
		Assertion assertion = (Assertion) session.getAttribute(AbstractCasFilter.CONST_CAS_ASSERTION);
		Map<String, Object> map = assertion.getPrincipal().getAttributes();
		System.out.println(((AttributePrincipal) request.getUserPrincipal()).getAttributes());
		System.out.println(map);
		for (String key : map.keySet()) {
			Object value = map.get(key);
			System.out.println(key + ": " + value);
		}
		
		Enumeration   e   =   request.getSession().getAttributeNames();   
		Object obj1 = request.getSession().getAttribute("_const_cas_assertion_ session");
		System.out.println(obj1);
		while( e.hasMoreElements())   {   
		    String sessionName=(String)e.nextElement();   
		    out.println("\nsession item name="+sessionName);  
		    out.println("\nsession item value="+ ((Assertion) request.getSession().getAttribute(sessionName)).getAttributes());  
		} 
		
	%>
</body>
</html>