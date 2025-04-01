<%--
  assignments.jsp
  ---------------
  The assignments page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "assignments.jsp"; %>
<% final String pagename = "Course Work: Assignments"; %>
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
              <a href="coursework.jsp">Course Work</a> &raquo; 
              Assignments</font></p>
            <h2 align=center>Assignments</h2>
            <p>Put in my calendar: 
              <a href="coursework.jsp">out dates</a> |
              <a href="coursework.jsp">due dates</a></p>
            <ol>
              <li>
                <strong>Simple C Programs</strong><br>
                Out: 10/19/01, Due: 10/31/01<br>
                <a href="coursework.jsp">Download Starting Materials</a><br>
                <% if (user.equals("Patti")) { %>
                <a href="gradebook.jsp">Grade This Assignment</a>
                <% } else if (user.equals("student")) { %>
                Submitted: 10/29/01 4:32 pm 
                (<a href="coursework.jsp">View Submission</a>)<br>
                Grade: 93.0/100.0<br>
                <% } %>
              </li>
            </ol>
            <% if (user.equals("Patti")) { %>
            <p><em>Add a new <a href="#specific_notes">assignment</a></em></p>
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
<% if (user.equals("Patti")) { %>
<strong><a name="specific_notes">Notes specific to this page:</a></strong>
<ul>
  <li>Add a new assignment doesn't work, but it would add 
    a second assignment (Unlimited number of assignments) Default is 0.</li>
</ul>
<% } %>
<%@ include file="notes.jsp" %>
</body>
</html>
