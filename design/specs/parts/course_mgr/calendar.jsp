<%--
  calendar.jsp
  ------------
  The calendar page of the Tapped In 2 Course Manager sketch.
    
  Includes files:
    getUserMode.jsp
    notes.jsp
    switchUserMode.jsp

    bottombar.html
    sidebar.jsp
    subnav.jsp
    topbar.jsp

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 1/22/01.
--%>

<% final String filename = "calendar.jsp"; %>
<% final String pagename = "Syllabus: Calendar"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

<%
  String unit = request.getParameter("unit");
  if (unit == null) unit = "day";
%>

<html>
<head>
<title>Tapped In: CS101: <%= pagename %></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="white" link="#6666FF" vlink="0000FF">
<table width="100%" border=0 cellspacing=0 cellpadding=10>
  <%@ include file="topbar.jsp" %>
  <%@ include file="subnav.jsp" %>
  <tr>
    <td bgcolor="FFFFEE" valign=top colspan=3>
      <table width="100%">
        <tr valign=top>
          <%@ include file="sidebar.jsp" %>
          <td>
            <p><font size=-1>
              <a href="welcome.jsp">CS101: Intro to C Programming</a> &raquo;
              <a href="syllabus.jsp">Syllabus</a> &raquo; Calendar &raquo;
              <% if (unit.equals("day")) { %> Day View<% } 
                 else if (unit.equals("week")) { %> Week View<% } 
                 else if (unit.equals("month")) { %> Month View<% } %>              
              </font></p>
            <h2 align=center>Calendar</h2>
            <div align=center>
              <% if (unit.equals("day")) { %> Day | <% } 
                 else { %> <a href="calendar.jsp?unit=day">Day</a> | <% } %>
              <% if (unit.equals("week")) { %> Week | <% } 
                 else { %> <a href="calendar.jsp?unit=week">Week</a> | <% } %>
              <% if (unit.equals("month")) { %> Month<% } 
                 else { %> <a href="calendar.jsp?unit=month">Month</a><% } %>
            </div>
            <% if (unit.equals("day")) { %>
            <h3>October 17, 2001</h3>
            <strong>Lecture:</strong> C Syntax<br>
            <strong>Readings:</strong> <u>The Art and Science of C</u>, Ch. 1<br>
            <font color="red">Assignment 1 due</font>
            <% } %>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <%@ include file="bottombar.html" %>
</table>
<hr>
<%@ include file="switchUserMode.jsp" %>
<%@ include file="notes.jsp" %>
</body>
</html>
