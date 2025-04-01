<%--
  editannounce.jsp
  ----------------
  The edit page for announcements in the Tapped In 2 Course Manager 
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
  Last modified by zaz@sri.com, 1/22/01.
--%>

<%@ page import="java.text.SimpleDateFormat" %>
<% final String filename = "editannounce.jsp"; %>
<% final String pagename = "Settings: Room Configuration: Edit Announcements"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti")) { %><jsp:forward page="index.jsp" /><% } %>

<%
  String fromPage = request.getParameter("frompage");
  if (fromPage == null) fromPage = "roomconf.jsp";
  boolean doCreate = false;
  value = request.getParameter("create");
  if (value != null && value.equals("true")) doCreate = true;
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
              Edit &amp; Create Announcements</font></p>
            <h2 align=center>Edit &amp; Create Announcements</h2>
            <h3>Announcements</h3>
            <p>Click <a href="<%= fromPage %>">here</a> if you are finished
              editing and creating announcements.</a></p>
            <% if (doCreate) { %>
            <p><a href="editannounce.jsp?frompage=<%= fromPage %>">Edit</a>
              existing announcements.</p>
            <h4>Create A New Announcement</h4>
            <%   if (request.getParameter("doCreate") != null) { %>
            <p><font color="red">New Announcement created.</font></p>
            <%   } %>
            <form method=post action="editannounce.jsp" name="createForm">
            <input type=hidden name="frompage" value="<%= fromPage %>">
            <input type=hidden name="create" value="true">
            <table>
              <tr>
                <td>
                  <%
                    // Format the current time.
                    SimpleDateFormat formatter = new SimpleDateFormat ("MM/dd/yy");
                    Date currentTime_1 = new Date();
                    out.print(formatter.format(currentTime_1)); 
                  %>                
                </td>
                <td>
                  <textarea name="announcement6" cols=60 rows=2></textarea>
                </td>
              </tr>
            </table>
            <input type=checkbox name="pm">Also send to class as a private 
              message<br><br>
            <div align=center>
              <input type=submit name="doCreate" value="Create Announcement">
            </div>
            </form>
            <% } else { %>
            <p><a href="editannounce.jsp?create=true&frompage=<%= fromPage %>">Create</a> a new announcement</p>
            <h4>Edit Existing Announcements</h4>
            <% if (request.getParameter("save") != null) { %>
            <p><font color="red">Edits to existing announcements saved.</font>
              </p>
            <% } %>
            <form method=post 
                  action="editannounce.jsp" 
                  name="editAnnouncementsForm">
            <input type=hidden name="frompage" value="<%= fromPage %>">
            <table>
              <tr>
                <td>1/22/01</td>
                <td><textarea name="announcement5" cols=60 rows=2>We're moving the subnavigation to the left.  Goodbye tabs!</textarea></td>
              </tr>
              <tr>
                <td>11/15/01</td>
                <td><textarea name="announcement4" cols=60 rows=2>Now this site is being modified to look more integrated into Tapped In.</textarea></td>
              </tr>
              <tr>
                <td>10/22/01</td>
                <td><textarea name="announcement3" cols=60 rows=2>This site is undergoing a massive overhaul!  Look for new features!</textarea></td>
              </tr>
              <tr>
                <td>10/16/01</td>
                <td><textarea name="announcement2" cols=60 rows=2>Zaz created this lovely page, the first of several to flesh out her ideas for a new Course Manager for <a href="http://www.tappedin.org/ti2" target="new">Tapped In 2</a>.</textarea></td>
              </tr>
              <tr>
                <td>10/01/01</td>
                <td><textarea name="announcement1" cols=60 rows=2>Zaz was asked to design a Course Manager!</textarea></td>
              </tr>
            </table>
            <div align=center>
              <p><input type=submit name="save" value="Save"></p>
            </div>
            </form>
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
<%@ include file="notes.jsp" %>
</body>
</html>
