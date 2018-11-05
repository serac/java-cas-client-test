<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="/vt.css" type="text/css" media="screen">
  <title>CAS Test Client</title>
</head>
<body>
<div id="page-wrapper">
<div id="page-header"><a href="https://<%= pageContext.getRequest().getServerName() %>/">
  Java CAS Client Test App</a></div>
<div id="content">
<div id="logout">
<%
java.util.Properties props = new java.util.Properties();
props.load(new java.io.FileInputStream("/data/java-cas-client.properties"));
%>
<a href="<%= props.getProperty("casServerUrlPrefix") %>/logout">CAS Logout</a></div>
