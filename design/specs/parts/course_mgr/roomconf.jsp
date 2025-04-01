<%--
  roomconf.jsp
  ------------
  The room configuration page of the Tapped In 2 Course Manager sketch.
    
  Includes files:
    getUserMode.jsp
    notes.jsp
    switchUserMode.jsp

    bottombar.html
    sidebar.jsp
    subnav.jsp
    topbar.jsp

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 1/8/02.
--%>

<% final String filename = "roomconf.jsp"; %>
<% final String pagename = "Settings: Room Configuration"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti")) { %><jsp:forward page="index.jsp" /><% } %>

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
              <a href="settings.jsp">Settings</a> &raquo; 
              Room Configuration</font></p>
            <h2 align=center>Room Configuration</h2>
            <h3>Room Name & Image</h3>
            Image:<br>
            <img src="images/myroom.gif" border=0>
            <p>Name: CS 101: Intro to C Programming</p>
            <p><a href="editroomname.jsp">Edit</a> Room Name & Image</p>
            <h3>Welcome Text</h3>
            <p>CS 101 is an introductory course taught by Patti 
              Schank about programming in the language of C.  See the 
              <a href="info.jsp">Course Information</a> for a complete 
              description of the course content.</p>
            <p><a href="editwelcome.jsp">Edit</a> Welcome Text</p>
            <h3>Announcements</h3>
            <p>Recent Announcements:</p>
            <ul>
              <li>1/22/01 We're moving the subnavigation to the 
                left.  Goodbye tabs!</li>
              <li>11/15/01 Now this site is being modified to look more integrated 
                into Tapped In.</li>
              <li>10/22/01 This site is undergoing a massive overhaul!  Look for new 
                features!</li>
            </ul>
            <p><a href="editannounce.jsp?create=true">Create</a> a new
              announcement.</p>
            <p><a href="editannounce.jsp">Edit</a> existing announcements.</p>
            <h3>Passageways</h3>
            Current Passageways:
            <ul>
              <li><a href="#">TI Reception</a></li>
              <li><a href="#">Patti's Office</a></li>
            </ul>
            <p><a href="editpassageways.jsp">Edit</a> passageways</p>
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
