<%--
  groupmanage.jsp
  ---------------
  The group management page of the Tapped In 2 Course Manager sketch.
    
  Includes files:
    getUserMode.jsp
    notes.jsp
    switchUserMode.jsp

    bottombar.html
    sidebar.jsp
    subnav.jsp
    topbar.jsp

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 1/22/02.
--%>

<% final String filename = "groupmanage.jsp"; %>
<% final String pagename = "Settings: Group Management"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti") && !user.equals("Zaz")) { %><jsp:forward page="index.jsp" /><% } %>

<%
  // Check for edits
  int announceToEdit = 0;
  value = request.getParameter("announceNum");
  if (request.getParameter("edit") != null && value != null) 
    announceToEdit = Integer.parseInt(value);

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
              <a href="settings.jsp">Settings</a> &raquo; 
              Group Management</font></p>
            <h2 align=center>Group Management</h2>
            <h3>Create A Group</h3>
            <form method=post action="<%= filename %>" name="createGroup">
            <p>
              Name: <input type=text name="name"><br>
              Description: <input type=text name="desc"><br>
              Owner:<br>
              <blockquote>
                <input type=radio 
                       checked 
                       name="owner" 
                       value="you"
                       onClick="if (this.checked == true) document.createGroup.ownername.disabled = true"
                       > You<br>
                <input type=radio 
                       name="owner" 
                       value="notyou"
                       onClick="if (this.checked == true) document.createGroup.ownername.disabled = false"
                       > Someone Else:
                <select name="ownername" disabled>
                  <% if (!user.equals("Patti")) { %>
                  <option value="pschank">Patti Schank (Instructor)</option>
                  <% } %>
                  <% if (!user.equals("Zaz")) { %>
                  <option value="zaz">Zaz Harris (T.A.)</option>
                  <% } %>
                  <option value="mchung">Mark Chung</option>
                  <option value="fusco">Judi Fusco</option>
                  <option value="lisah">Lisa Hinojosa</option>
                  <option value="amylewis">Amy Lewis</option>
                  <option value="edys">Edys Quellmaz</option>
                  <option value="marks">Mark Schlager</option>
                </select><br>
              </blockquote>
            <div align=center>
              <p><input type=submit name="create" value="Create"></p>
            </div>
            </form>
            <h3>Course Groups</h3>
            <table border=1>
              <tr>
                <th></th>
                <th colspan=3>Groups</th>
              </tr>
              <tr align=center>
                <td></td>
                <td>Section 1</td>
                <td>Section 2</td>
                <td>Section 3</td>
              </tr>
              <tr>
                <td></td>
                <td>Section 1 for CS101 (Patti)</td>
                <td>Section 2 for CS101 (Zaz)</td>
                <td>Section 3 for CS101 (Zaz)</td>
              </tr>
              <tr align=center>
                <td align=left>Patti Schank</td>
                <td>O</td>
                <td><input type=checkbox name="patti_grp2" value="true"></td>
                <td><input type=checkbox name="patti_grp3" value="true"></td>
              </tr>
              <tr>
                <td colspan=4>&nbsp;</td>
              </tr>
              <tr align=center>
                <td align=left>Zaz Harris</td>
                <td><input type=checkbox name="zaz_grp1" value="true"></td>
                <td>O</td>
                <td>O</td>
              </tr>              
              <tr>
                <td colspan=4>&nbsp;</td>
              </tr>
              <tr align=center>
                <td align=left>Mark Chung</td>
                <td><input type=checkbox name="mchung_grp1" value="true"></td>
                <td><input type=checkbox checked name="mchung_grp2" value="true"></td>
                <td><input type=checkbox name="mchung_grp3" value="true"></td>
              </tr>
              <tr align=center>
                <td align=left>Judi Fusco</td>
                <td><input type=checkbox name="fusco_grp1" value="true"></td>
                <td><input type=checkbox name="fusco_grp2" value="true"></td>
                <td><input type=checkbox checked name="fusco_grp3" value="true"></td>
              </tr>
              <tr align=center>
                <td align=left>Lisa Hinojosa</td>
                <td><input type=checkbox name="lisah_grp1" value="true"></td>
                <td><input type=checkbox name="lisah_grp2" value="true"></td>
                <td><input type=checkbox checked name="lisah_grp3" value="true"></td>
              </tr>
              <tr align=center>
                <td align=left>Amy Lewis</td>
                <td><input type=checkbox checked name="amylewis_grp1" value="true"></td>
                <td><input type=checkbox name="amylewis_grp2" value="true"></td>
                <td><input type=checkbox name="amylewis_grp3" value="true"></td>
              </tr>
              <tr align=center>
                <td align=left>Edys Quellmaz</td>
                <td><input type=checkbox name="edys_grp1" value="true"></td>
                <td><input type=checkbox checked name="edys_grp2" value="true"></td>
                <td><input type=checkbox name="edys_grp3" value="true"></td>
              </tr>
              <tr align=center>
                <td align=left>Mark Schlager</td>
                <td><input type=checkbox checked name="marks_grp1" value="true"></td>
                <td><input type=checkbox name="marks_grp2" value="true"></td>
                <td><input type=checkbox name="marks_grp3" value="true"></td>
              </tr>
              <caption align=bottom>
                <div align=left>
                  <font size=-1>O = owner of the group</font>
                </div>
              </caption>
            </table>
            <div align=center>
              <p><input type=submit name="create" value="Create"></p>
            </div>
            <h3>Random Group Assignment</h3>
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
