﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String root = request.getContextPath();
	pageContext.setAttribute("root", root);
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + root + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title></title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>
	<body>
	<form action="${root}/tbDeviceAction!update.action" method="post">
	<table>
  		<tr>
  			<td>deviceId：</td>
  			<td><input type="text" id="tbDevice_deviceId" name="tbDevice.deviceId" value="${tbDevice.deviceId}" readonly="readonly" /></td>
  		</tr>
  		<tr>
  			<td>deviceName：</td>
  			<td><input type="text" id="tbDevice_deviceName" name="tbDevice.deviceName" value="${tbDevice.deviceName}" /></td>
  		</tr>
  		<tr>
  			<td>userId：</td>
  			<td><input type="text" id="tbDevice_userId" name="tbDevice.userId" value="${tbDevice.userId}" /></td>
  		</tr>
  		<tr>
  			<td>deviceKey：</td>
  			<td><input type="text" id="tbDevice_deviceKey" name="tbDevice.deviceKey" value="${tbDevice.deviceKey}" /></td>
  		</tr>
  		<tr>
  			<td>isOnline：</td>
  			<td><input type="text" id="tbDevice_isOnline" name="tbDevice.isOnline" value="${tbDevice.isOnline}" /></td>
  		</tr>
	</table>
	<input type="submit" value="提交" />
	</form>
	</body>
</html>