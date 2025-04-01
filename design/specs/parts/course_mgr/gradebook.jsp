<%--
  gradebook.jsp
  -------------
  The gradebook page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "gradebook.jsp"; %>
<% final String pagename = "Gradebook"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

<html>
<head>
<title>
  Tapped In: CS101: <% if (user.equals("Patti") || user.equals("Zaz")) { %>Gradebook<% } else { %>Roster &amp; Groups<% } %>
</title>
<script language="JavaScript">
<%@ include file="focusWindow.js" %>
</script>
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
              <% if (user.equals("Patti") || user.equals("Zaz")) { %>Gradebook<% } else { %>Roster &amp; Groups<% } %></font>
              </p>
            <h2 align=center>
              <% if (user.equals("Patti") || user.equals("Zaz")) { %>Gradebook<% } else { %>Roster &amp; Groups<% } %>
            </h2>
            <p><a href="#">Private message</a> 
             <% if (!user.equals("shadow")) { %>
             or 
             <a href="email.jsp?to=all" target="email" onClick="focusWindow('email', 'resizable=yes,width=525,height=600')">e-mail</a>
             <% } %>
             the entire class.</p>
            <% double mark = 0, judi = 0; %>
            <table border=1>
              <tr>
                <th rowspan=2>Student</th>
                <% if (user.equals("Patti") || user.equals("Zaz")) { %>
                <th colspan=3>Assignments</th>
                <th colspan=3>Quizzes</th>
                <th colspan=2>Tests</th>
                <th rowspan=2>Grade</th>
                <% } %>
              </tr>
              <tr valign=bottom>
                <% if (user.equals("Patti") || user.equals("Zaz")) { %>
                <th>1: Simple C Programs<br>(100)</th>
                <th>2: The Game of Life<br>(100)</th>
                <th>3: Hunt the Wumpus<br>(100)</th>
                <th>1: C Syntax<br>(50)</th>
                <th>2: Readability<br>(50)</th>
                <th>3: Decomposition<br>(50)</th>
                <th>Midterm<br>(100)</th>
                <th>Final<br>(200)</th>
                <% } %>
              </tr>
              <tr align=center bgcolor="white">
                <td align=left>
                  <table>
                    <tr>
                      <td width=40>
                        <img src="images/fusco.jpg" width=40>
                      </td>
                      <td>
                        Judi Fusco<br>
                        <font size=-1> 
                        <a href="#">profile</a><br>
                        <a href="#">pm</a><br>
                        <% if (!user.equals("shadow")) { %>
                        <a href="email.jsp?toName=Judi Fusco" target="email" onClick="focusWindow('email', 'resizable=yes,width=525,height=600')">e-mail</a>
                        <% } %>
                        </font>
                      </td>
                    </tr>
                  </table>
                </td>
                <% if (user.equals("Patti") || user.equals("Zaz")) { %>
                <td>96.0</td>
                <td>83.0</td>
                <td>N/A</td>
                <td>45.0</td>
                <td>N/A</td>
                <td>N/A</td>
                <td>93.0</td>
                <td>N/A</td>
                <% judi = ((int) ((96.0 + 83.0 + 45.0 + 93.0) / (100 + 100 + 50 + 100) * 10000)) / 100.0; %>
                <td><%= judi %>%</td>
                <% } %>
              </tr>
              <tr align=center bgcolor="white">
                <td align=left>
                  <table>
                    <tr>
                      <td width=40>
                        <img src="images/schlager.jpg" width=40>
                      </td>
                      <td>
                        Mark Schlager<br>
                        <font size=-1>
                        <a href="#">profile</a><br>
                        <a href="#">pm</a><br>
                        <% if (!user.equals("shadow")) { %>
                        <a href="email.jsp?toName=Mark Schlager" target="email" onClick="focusWindow('email', 'resizable=yes,width=525,height=600')">e-mail</a>
                        <% } %>
                        </font>
                      </td>
                    </tr>
                  </table>
                </td>
                <% if (user.equals("Patti") || user.equals("Zaz")) { %>
                <td>93.0</td>
                <td>82.0</td>
                <td>N/A</td>
                <td>48.0</td>
                <td>N/A</td>
                <td>N/A</td>
                <td>94.0</td>
                <td>N/A</td>
                <% mark = ((int) ((93.0 + 82.0 + 48.0 + 94.0) / (100 + 100 + 50 + 100) * 10000)) / 100.0; %>
                <td><%= mark %>%</td>
                <% } %>
              </tr>
              <% if (user.equals("Patti") || user.equals("Zaz")) { %>
              <tr align=center>
                <th align=left>Average Grade</th>
                <td>94.5</td>
                <td>82.5</td>
                <td>N/A</td>
                <td>46.5</td>
                <td>N/A</td>
                <td>N/A</td>
                <td>93.5</td>
                <td>N/A</td>
                <td><%= (mark + judi) / 2 %></td>
              </tr>
              <% } %>
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
  <li>How will broadcasting the whole class work?  Will there be a special icon
    to put into the PM line?  Can they also drag this icon into it from their
    Buddies Awareness list?</li>
</ul>
<%@ include file="notes.jsp" %>
</body>
</html>
