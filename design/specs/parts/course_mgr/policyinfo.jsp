<%--
  policyinfo.jsp
  --------------
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
  Last modified by zaz@sri.com, 1/22/01.
--%>

<% final String filename = "policyinfo.jsp"; %>
<% final String pagename = "Syllabus: Policies"; %>
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
              Policies</font></p>
            <h2 align=center>Policies</h2>
            <% if (user.equals("Patti")) { %>
            <p><em><a href="#specific_notes">Add</a> a new policy topic</em></p>
            <% } %>
            <table align=left cellpadding=10>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="policyinfo.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="field1">
                  <% if (isEditing && item.equals("field1")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>
                </td>
                <% } %>
                <td>
                  <% 
                    if (user.equals("Patti") && isEditing && item.equals("field1")) { %>
                  <input type=text name="field1" size=40 value="Prerequisites"><br>
                  <%@ include file="promtools.html" %>
                  <%
                      out.print("<textarea name=\"field1\" cols=60 rows=8>");
                    } else out.print("<h3>Prerequisites:</h3>\n<p>");
                    out.print("None");
                    if (user.equals("Patti") && isEditing && item.equals("field1")) {
                      out.print("</textarea>\n");
                    } else out.print("</p>\n");
                  %>          
                </td>
                <% if (user.equals("Patti")) { %>
                </form>
                <% } %>
              </tr>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="policyinfo.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="field2">
                  <% if (isEditing && item.equals("field2")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>
                </td>
                <% } %>
                <td>
                  <% 
                    if (user.equals("Patti") && isEditing && item.equals("field2")) { %>
                  <input type=text name="field1" size=40 value="Course Objectives"><br>
                  <%@ include file="promtools.html" %>
                  <%
                      out.print("<textarea name=\"field2\" cols=60 rows=8>");
                    } else out.print("<h3>Course Objectives:</h3>\n<p>");
                    out.print("Teach some folks about the C programming language.");
                    if (user.equals("Patti") && isEditing && item.equals("field2")) {
                      out.print("</textarea>\n");
                    } else out.print("</p>\n");
                  %>          
                </td>
                <% if (user.equals("Patti")) { %>
                </form>
                <% } %>
              </tr>     
            </table>
            <% if (user.equals("Patti")) { %>
            <br clear=left>
            <p><em>Suggested policy topics: Prerequisites, Course Objectives,
              Method of Instruction, Method of Evaluation, etc.</em></p>
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
  <li>Add a new policy topic doesn't work, but it would add space for 
    a third policy topic (Unlimited number of policy topics)
    Default is 0.</li>
</ul>
<% } %>
<%@ include file="notes.jsp" %>
</body>
</html>
