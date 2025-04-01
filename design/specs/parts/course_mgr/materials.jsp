<%--
  materials.jsp
  -------------
  The course materials page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "materials.jsp"; %>
<% final String pagename = "Course Materials"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

<%
  // Check for edits
  boolean isEditing = false;
  if (request.getParameter("edit") != null) isEditing = true;
  String item = request.getParameter("item");
  if (item == null) item = "";
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
              <%= pagename %></font></p>
            <h2 align=center><%= pagename %></h2>
            <p>Course Materials are divided into three groups:</p>
            <ul>
              <li><a href="reading.jsp">Offline Materials</a>: This includes
                and materials needed for the class that are not available
                on-line, such as textbooks, lab notebooks, etc.<br><br></li>
              <li><a href="files.jsp">Files</a>: All files associated with
                the course that are saved on Tapped In webspace, which might
                include student's work in this or other classes, files needed
                for assignments, archives of discussions, to name a 
                few.<br><br></li>
              <li><a href="links.jsp">Links</a>: Any web pages the instructor
                thinks may be relevant to the class.</li>
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
<%@ include file="notes.jsp" %>
</body>
</html>
