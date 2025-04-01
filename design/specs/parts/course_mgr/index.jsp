<%--
  welcome.jsp
  -----------
  The "Welcome" page (i.e. home page) of the Tapped In 2 Course Manager 
  sketch.
    
  Includes files:
    getUserMode.jsp
    notes.jsp
    switchUserMode.jsp

    bottombar.html
    sidebar.jsp
    subnav.jsp
    topbar.jsp 

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 1/17/02.
--%>

<% final String filename = "welcome.jsp"; %>
<% final String pagename = "Welcome"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

<html>
<head>
<title>Tapped In: CS101</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
<%@ include file="focusWindow.js" %>
</script>
</head>

<body bgcolor="white" link="#6666FF" vlink="0000FF">
<table width="100%" border=0 cellpadding=10 cellspacing=0>
  <%@ include file="topbar.jsp" %>
  <%@ include file="subnav.jsp" %>
  <tr>
    <td bgcolor="FFFFEE" valign=top colspan=3>
      <table width="100%" cellpadding=5>
        <tr valign=top>
          <%@ include file="sidebar.jsp" %>
          <td>
            <p><font size=-1>
              <a href="welcome.jsp">CS101: Intro to C Programming</a> &raquo;
              Welcome</font></p>
            <h2>Welcome to CS 101: Intro to C Programming</h2>
            <p>CS 101 is an introductory course taught by Patti Schank about
              programming in the language of C.  See the 
              <a href="info.jsp">Course Description</a> for a complete
              description of the course content. 
              <% if (user.equals("Patti")) { %>
              <font size=-1><a href="editwelcome.jsp?frompage=<%= filename %>">edit</a></font>
              <% } %>
              </p>
            <table cellpadding=5>
              <tr valign=top>
                <td>
                  <table border=1 bgcolor="white" cellspacing=0>
                    <tr bgcolor="yellow">
                      <th>Announcements</th>
                      <% if (user.equals("Patti")) { %>
                      <td align=right width=20>
                        <font size=-1><a href="editannounce.jsp?frompage=<%= filename %>">edit</a></font>
                      </td>
                      <td align=center width=10><a href="#">X</a></td>
                      <% } %>
                    </tr>
                    <tr>
                      <% if (user.equals("Patti")) { %>
                      <td colspan=3>
                      <% } else { %>
                      <td>
                      <% } %>
                        <ul>
                          <li>1/22/01 We're moving the subnavigation to the 
                            left.  Goodbye tabs!</li>
                          <li>11/15/01 Now this site is being modified to look more integrated 
                            into Tapped In.</li>
                          <li>10/22/01 This site is undergoing a massive overhaul!  Look for new 
                            features!</li>
                          <li><a href="announce.html" target="announcements" onClick="focusWindow('announcements', 'resizable=yes,width=300,height=500')">View all announcements</a></li>
                        </ul>                
                      </td>
                    </tr>
                  </table>
                </td>
                <td>
                  <table border=1 bgcolor="white" cellspacing=0>
                    <tr bgcolor="yellow">
                      <th>Get In Touch</th>
                      <% if (user.equals("Patti")) { %>
                      <td align=center width=10><a href="#">X</a></td>
                      <% } %>
                    </tr>
                    <tr>
                      <% if (user.equals("Patti")) { %>
                      <td colspan=2>
                      <% } else { %>
                      <td>
                      <% } %>
                        <p>You can 
                          <% if (!user.equals("shadow")) { %>
                          <a href="email.jsp" target="email" onClick="focusWindow('email', 'resizable=yes,width=525,height=600')">e-mail</a> or 
                          <% } %>
                          <a href="gradebook.jsp">private message</a> the students in the class, the instructors and teaching 
                          assistants, or any groups associated with the class.</p>               
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
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
  <li>Shadow users can private message users but not e-mail them (on Tapped In)
    </li>
</ul>
</body>
</html>
