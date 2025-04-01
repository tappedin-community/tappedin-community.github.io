<%--
  setttings.jsp
  -------------
  The settings page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "settings.jsp"; %>
<% final String pagename = "Settings"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti") && !user.equals("Zaz")) { %><jsp:forward page="index.jsp" /><% } %>

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
            <p>In this area, instructors and teaching assistants with
              editing privileges can customize the course room and manage
              various elements of the course.</p>
            <ul>
              <li>
                <% if (user.equals("Patti")) { %>
                <a href="roomconf.jsp">Room Configuration</a>:
                <% } else { %>
                <em>Room Configuration:</em>
                <% } %>
                Settings here
                allow control over the room settings, such as the name of the
                room, the appearance of the welcome page, passageways
                from the room, etc.<br><br></li>
              <li>
                <% if (user.equals("Patti")) { %>
                <a href="courseconf.jsp">Course Configuration</a>:
                <% } else { %>
                <em>Course Configuration:</em>
                <% } %>
                Here,
                the instructor can change various course settings, including
                the keywords for the course (which are used in the Tapped In
                search) or the password for the course.<br><br></li>
              <li><a href="groupmanage.jsp">Group Management</a>: Groups
                associated with the course can be created, edited, and deleted
                here, including putting students into groups.<br><br></li>
              <li><a href="studentmanage.jsp">Student Management</a>: In this
                area, the instuctor(s) can drop or add students for the course
                as well as determine the access priveleges for members of the
                course.</li>
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
