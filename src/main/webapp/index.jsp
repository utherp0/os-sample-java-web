<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<%
  String localAddress = InetAddress.getLocalHost().getHostAddress();
%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Example JSP (CDK2.3) - Container Information Page</title>
  
  <link rel="stylesheet" href="styles/containerview.css"/>
  <script src="scripts/containerview.js"></script>
</head>

<body>
<h1><i>CONTAINER INTERROGATOR</i> (test)</h1><p/>
<table width="100%" border="0">
<tr>
<td align="center" valign="center" style="width:200px"><img src="images/ose.jpeg" width="80px" border="1"></td>
<td valign="top">Page served from Container with IP <b><%= localAddress %></b><br/>
<a href="javascript:switchState('envs');">Environment Variables</a></td>
</tr>
</table>

<div id="envs" style="display:none">
  
<table border="1">
<tr>
<td style="width:200px" align="center" class="statusInformation">ENV Name</td>
<td align="center" class="statusInformation">ENV Value</td>
</tr>


<%
  long testStart = System.currentTimeMillis();

  // Get the visible system environment variables
  Map<String,String> envs = System.getenv();

  for( String envName : envs.keySet())
  {
%>
<tr>
    <td align="right" class="standard"><b><%= envName %></b></td>
    <td class="standard"><%= envs.get(envName) %></td>
</tr>
<%

  }
  
  long testEnd = System.currentTimeMillis();
%>

</table>

<div class="messages">
    <b><i>Test took <%= testEnd - testStart %>ms to complete.</i></b>
</div>  
</div>

</body>
</html>
