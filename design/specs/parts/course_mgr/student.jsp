<%--
  student.jsp
  -----------
  The student tools page of the Tapped In 2 Course Manager sketch.
    
  Includes files:
    getUserMode.jsp
    notes.jsp
    switchUserMode.jsp

    bottombar.html
    sidebar.jsp
    subnav.jsp
    topbar.jsp

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 12/12/01.
--%>

<% final String filename = "student.jsp"; %>
<% final String pagename = "Me"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = false; %>
<%@ include file="getUserMode.jsp" %>

<html>
<head>
<title>Tapped In: <%= pagename %></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="white" link="#6666FF" vlink="0000FF">
<table width="100%" border=0 cellspacing=0 cellpadding=10>
  <%@ include file="topbar.jsp" %>
  <%@ include file="subnav.jsp" %>
  <tr>
    <td bgcolor="FFFFEE" valign=top colspan=3>
      <h2 align=center>My Tools</h2>
      <ul>
        <li>My Notebook</li>
        <li>My Whiteboard</li>
        <li>My Links</li>
        <li>My Files</li>
      </ul>
    </td>
  </tr>
  <%@ include file="bottombar.html" %>
</table>
<hr>
<%@ include file="switchUserMode.jsp" %>
<%@ include file="notes.jsp" %>
</body>
</html>
