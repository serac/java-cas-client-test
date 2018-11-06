<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
  java.util.Properties props = new java.util.Properties();
  props.load(new java.io.FileInputStream("/data/java-cas-client.properties"));
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
  <link rel="stylesheet" href="/vt.css" type="text/css" media="screen">
  <title>CAS Test Client</title>
</head>
<body>
<div id="page-wrapper">
<div id="page-header">
  <a href="/">Java CAS Client Test App</a>
</div>
<div id="logout" class="row">
  <div class="col-xs-3 col-xs-offset-9 col-md-2 col-md-offset-10">
    <a class="btn btn-primary btn-xs" href="<%= props.getProperty("casServerUrlPrefix") %>/logout" role="button">Logout</a>
  </div>
</div>
<div class="row">
    <div id="content" class="col-xs-12">
