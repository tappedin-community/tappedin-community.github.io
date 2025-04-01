<%--
  editinfopage.jsp
  ----------------
  The edit page for the information page text in the Tapped In 2 Course Manager
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
  Last modified by zaz@sri.com, 1/22/02.
--%>

<% final String filename = "editinfopage.jsp"; %>
<% final String pagename = "Settings: Course Configuration: Edit Information Page Text"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti")) { %><jsp:forward page="index.jsp" /><% } %>

<%
  String fromPage = request.getParameter("frompage");
  if (fromPage == null) fromPage = "courseconf.jsp";
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
              <a href="courseconf.jsp">Course Configuration</a> &raquo;
              Edit Information Page Text</font></p>
            <h2 align=center>Edit Information Page Text</h2>
            <form method=post 
                  action="<%= fromPage %>" 
                  name="editInfoPageForm">
            <h3>Information Page Text</h3>
            <textarea name="infopagetext" rows=6 cols=60>CS 101 is an introductory course taught by Patti Schank about programming in the language of C.</textarea>
            <p>
              <input type=checkbox 
                     name="usewelcome" 
                     value="true" 
                     onClick="document.editInfoPageForm.infopagetext.disabled = this.checked"
                     > Use Welcome Text (displayed below for your 
              convenience)</p>
            <div align=center>
              <p><input type=submit name="save" value="Save"></p>
            </div>
            </form>
            <h3>Welcome Text</h3>
            <p>CS 101 is an introductory course taught by Patti 
              Schank about programming in the language of C.  See the 
              <a href="info.jsp">Course Information</a> for a complete 
              description of the course content.</p>
            <p><a href="editwelcome.jsp?frompage=<%= filename %>">Edit</a> Welcome Text</p>
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
