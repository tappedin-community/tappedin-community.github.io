<%--
  discussion.jsp
  --------------
  The discussion page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "discussion.jsp"; %>
<% final String pagename = "Discussion"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

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
              <%= pagename %></font></p>
            <h2 align=center><%= pagename %></h2>
            <p>Discussion Board for CS101</p>
            <p>You can:</p>
            <ul>
              <% if (user.equals("Patti")) { %>
              <li>start new discussion threads</li>
              <% } %>
              <% if (!user.equals("shadow")) { %>
              <li>post to existing threads</li>
              <% } %>
              <li>read existing threads</li>
            </ul>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <%@ include file="bottombar.html" %>
</table>
<hr>
<%@ include file="switchUserMode.jsp" %>
<strong><a name="specific_notes">Notes specific to this page:</a></strong>
<ul>
  <li>Who can start discussion topics?</li>
</ul>
<%@ include file="notes.jsp" %>
</body>
</html>
