<%--
  info.jsp
  --------
  The general information page of the Tapped In 2 Course Manager sketch.
    
  Includes files:
    getUserMode.jsp
    notes.jsp
    switchUserMode.jsp

    promtools.html
    bottombar.html
    sidebar.jsp
    subnav.jsp
    topbar.jsp

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 1/22/02.
--%>

<% final String filename = "info.jsp"; %>
<% final String pagename = "Syllabus: Course Information"; %>
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
              <a href="syllabus.jsp">Syllabus</a> &raquo; 
              Course Information</font></p>
            <h2 align=center>Course Information</h2>
            <table align=left cellpadding=10>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="info.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="basics">
                  <% if (isEditing && item.equals("basics")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>          
                </td>
                <% } %>
                <td>
                  <% if (user.equals("Patti") && isEditing && item.equals("basics")) { %>
                  <table>
                    <tr>
                      <td>Department ID:</td>
                      <td><input type=text name="department" size=10 value="CS"></td>
                    </tr>
                    <tr>
                      <td>Course Number:</td>
                      <td><input type=text name="courseNum" size=5 value="101"></td>
                    </tr>
                    <tr>
                      <td>Section Number:</td>
                      <td><input type=text name="sectionNum" size=5 value=""></td>
                    </tr>
                    <tr>
                      <td>Course Title:</td>
                      <td>
                        <input type=text 
                               name="courseTitle"
                               size=50
                               value="Intro To C Programming">
                      </td>
                    </tr>
                    <tr>
                      <td>Tenant:</td>
                      <td>Pepperdine University</td>
                    </tr>
                  </table>
                  <% } else {%>
                  <h3>CS 101: Intro To C Programming</h3>
                  <p>Sponsored by Pepperdine University</p>
                  <% } %>
                  <% if (user.equals("Patti")) { %>
                  </form>
                  <% } %>            
                </td>
              </tr>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <td></td>
                <% } %>
                <td>
                  <h3>Date Range:</h3>
                  <p>The course starts on 9/1/01 and ends on 12/15/01.</p>
                </td>
              </tr>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="info.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="meetings">
                  <% if (isEditing && item.equals("meetings")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>
                </td>
                <% } %>
                <td>
                  <% if (user.equals("Patti") && isEditing && item.equals("meetings")) { %>
                  <input type=text name="meetings" size=40 value="Meetings"><br>
                  <h4>Meeting 1</h4>
                  <table>
                    <tr>
                      <td>Name:</td>
                      <td><input type=text name="name1" size=40 value="Lecture"></td>
                    </tr>
                    <tr>
                      <td>Day and Time:</td>
                      <td><input type=text name="time1" size=25 value="MWF 2:15pm"></td>
                    </tr>
                    <tr>
                      <td>Location:</td>
                      <td><input type=text name="location1" size=40 value="B106"></td>
                    </tr>
                  </table>
                  <h4>Meeting 2</h4>
                  <table>
                    <tr>
                      <td>Name:</td>
                      <td><input type=text name="name1" size=40 value=""></td>
                    </tr>
                    <tr>
                      <td>Day and Time:</td>
                      <td><input type=text name="time2" size=25 value=""></td>
                    </tr>
                    <tr>
                      <td>Location:</td>
                      <td><input type=text name="location2" size=40 value=""></td>
                    </tr>
                  </table>
                  <p><em><a href="#specific_notes">Add</a> a new meeting time</em></p>
                  <% } else { %>
                  <h3>Meetings:</h3>
                  <p>Lecture: MWF 2:15pm in B106</p>
                  <% } %>
                  <% if (user.equals("Patti")) { %>
                  </form>
                  <% } %> 
                </td>
              </tr>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="info.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="desc">
                  <% if (isEditing && item.equals("desc")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>
                </td>
                <% } %>
                <td>
                  <% if (user.equals("Patti") && isEditing && item.equals("desc")) { %>
                  <input type=text name="desc" size=40 value="Course Description"><br>
                  <%@ include file="promtools.html" %>
                  <%
                    out.print("<textarea name=\"desc\" cols=60 rows=8>");
                    } else out.print("<h3>Course Description:</h3>\n<p>");
                    out.print("Discover the wonders of the C programming language.");
                    out.print(" 5 units.");
                    if (user.equals("Patti") && isEditing && item.equals("desc")) {
                      out.print("</textarea>\n");
                    } else out.print("</p>\n");
                    if (user.equals("Patti")) { %>
                  </form>
                  <% 
                    }
                  %>
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
<% if (user.equals("Patti")) { %>
<strong><a name="specific_notes">Notes specific to this page:</a></strong>
<ul>
  <li>Add a meeting time doesn't work, but it would add space for &quot;Meeting
    3&quot; (Unlimited number of different meeting times)  Default is 2.</li>
</ul>
<% } %>
<%@ include file="notes.jsp" %>
</body>
</html>
