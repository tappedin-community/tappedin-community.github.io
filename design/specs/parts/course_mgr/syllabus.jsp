<%--
  syllabus.jsp
  ------------
  The syllabus page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "syllabus.jsp"; %>
<% final String pagename = "Syllabus"; %>
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
            <p>The syllabus provides basic information about the course as well
              as a calendar for course events and assignments:</p>
            <ul>
              <li><a href="info.jsp">Course Information</a>: A course 
                description, which is as long and detailed as
                desired by the instructor, as well as regular class
                meetings times.<br><br></li>
              <li><a href="staffinfo.jsp">Teaching Staff</a>: The contact
                information and bios of all the teaching staff, including
                the primary instructor, any secondary or co-instructors, as
                well as all teaching assistants.<br><br></li>
              <li><a href="policyinfo.jsp">Policies</a>: Any policies the
                instructor would like to delineate for all students and teaching
                staff to read, which might include grading and attendance
                policies, for example.<br><br></li>
              <li><a href="calendar.jsp">Calendar</a>: A Tapped In Calendar
                detailing all course events and due dates, which can be merged
                into students' personal calendars.</li>
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
