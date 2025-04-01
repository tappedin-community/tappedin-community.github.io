<%--
  editroomname.jsp
  ----------------
  The edit page for the room name and image in the Tapped In 2 Course Manager 
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

<% final String filename = "editroomname.jsp"; %>
<% final String pagename = "Settings: Room Configuration: Edit Room Name & Image"; %>
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
              Edit Room Name & Image</font></p>
            <h2 align=center>Edit Room Name & Image</h2>
            <form method=post 
                  action="<%= fromPage %>" 
                  name="editRoomNameForm">
            <h3>Room Image</h3>
            Current Image:<br>
            <img src="images/myroom.gif" border=0>
            <br clear=left>
            <br>
            Select New Image:<br>
            <p><font size=-1>How should this work?  Is there a selection of
              room images available by default?  Can more than one image be
              maintained for a room?  Can the user post new images and where
              are they stored, in the room files or somewhere else?
              Are the images a specific pixel size?  Are non standard sizes
              rejected or squashed to fit?</font></p>
            <h3>Room Name</h3>
            <input type=text size=50 value="CS 101: Intro to C Programming">
            <br>
            <div align=center>
              <p><input type=submit name="save" value="Save"></p>
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
