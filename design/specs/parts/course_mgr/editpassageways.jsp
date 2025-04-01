<%--
  editpassageways.jsp
  -------------------
  The edit page for passageways in the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "editpassageways.jsp"; %>
<% final String pagename = "Settings: Room Configuration: Edit Passageways"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti")) { %><jsp:forward page="index.jsp" /><% } %>

<%
  String fromPage = request.getParameter("frompage");
  if (fromPage == null) fromPage = "roomconf.jsp";
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
              <a href="roomconf.jsp">Room Configuration</a> &raquo;
              Edit Passageways</font></p>
            <h2 align=center>Edit Passageways</h2>
            <p>Click <a href="<%= fromPage %>">here</a> if you are finished
              editing the passageways.</a></p>
            <h3>Current Passageways</h3>
            <% 
              if (request.getParameter("deletepw") != null) { 
            %>
            <p><font color="red">Passageway successfully deleted.</font></p>
            <% } %>
            <form method=post action="editpassageways.jsp" name="passageways">
            <input type=hidden name="frompage" value="<%= fromPage %>">
            <table cellpadding=5>
              <tr>
                <th>&nbsp;</th>
                <th>Featured</th>
                <th align=left>Location</th>
              </tr>
              <tr align=center>
                <td>
                  <font size=-1>
                  <a href="editpassageways.jsp?deletepw=1">delete</a>
                  </font>
                </td>
                <td>
                  <input type=checkbox name="featurepw" value="1">                
                </td>
                <td align=left>
                  TI Reception
                </td>
              </tr>
              <tr align=center>
                <td>
                  <font size=-1>
                  <a href="editpassageways.jsp?deletepw=1">delete</a>
                  </font>
                </td>
                <td>
                  <input type=checkbox name="featurepw" value="2">                
                </td>
                <td align=left>
                  Patti's Office
                </td>
              </tr>
            </table>
            <div align=center>
              <p><input type=submit name="submit" value="Submit"></p>
            </div>
            <h3>Add A Passageway</h3>
            <% 
              if (request.getParameter("add") != null && 
                  request.getParameter("addpwname") != null) { 
            %>
            <p><font color="red">Passageway successfully added.</font></p>
            <% } %>
            <ul>
              <li>
                <input type=radio name="howaddpw" checked value="favorites">
                From your Favorite Places:
                <select name="addpwname">
                  <option value="Mark's Office" selected>Mark's Office</option>
                  <option value="Zaz's Office">Zaz's Office</option>
                </select>
              </li>
              <li>
                <input type=radio name="howaddpw" value="specify">
                Or specify a room: <input type=text name="addpwname"></li>
            </ul>
            <div align=center>
              <p><input type=submit name="add" value="Add"></p>
            </div>
            </form>
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
