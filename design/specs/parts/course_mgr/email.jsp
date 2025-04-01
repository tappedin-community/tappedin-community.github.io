<%--
  email.jsp
  ---------
  The e-mail page of the Tapped In 2 Course Manager sketch.
    
  Includes files:
    none

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 12/12/01.
--%>

<% 
  String toValue = request.getParameter("to");
  String toName = request.getParameter("toName");
%>

<html>
<head>
<title>Tapped In: CS101: E-mail</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="white" link="#6666FF" vlink="0000FF">
<h2 align=center>E-mail</h2>
<form action="email.jsp" name="emailform">
<table align=center>
  <% if (request.getParameter("send") != null) { %>
  <tr>
    <td colspan=2><font color="red">Message sent</font></td>
  </tr>
  <% } %>
  <tr>
    <td valign=top>To:</td>
    <td>
      <input type=text 
             name="to" 
             value="<% if (toName != null) { %><%= toName %><% } %>"
             size=60><br>
      <table>
        <tr valign=top>
          <td>
            <input type=checkbox 
                   name="to" 
                   value="all" 
                   <% if (toValue != null && toValue.equals("all")) { %>checked<% } %>> 
            <em>Whole Class</em>
          </td>
          <td>
            <input type=checkbox name="to" value="allinstr">
            <em>All Instructors</em><br>
            <input type=checkbox name="to" value="instr1" 
            <% if (toValue != null && toValue.equals("instr1")) { %>checked<% } %>>
            Patti Schank<br>
            <input type=checkbox name="to" value="instr2" 
            <% if (toValue != null && toValue.equals("instr2")) { %>checked<% } %>>
            Zaz Harris
          </td>
          <td>
            <input type=checkbox name="to" value="allgroups">
            <em>All Groups</em><br>
            <input type=checkbox name="to" value="group1">
            Group 1               
          </td>
        </tr>
      </table>       
    </td>
  </tr>
  <tr>
    <td valign=top>Subject:</td>
    <td><input type=text name="subject" size=60></td>
  </tr>
  <tr>
    <td valign=top>Message:</td>
    <td><textarea name="message" rows=10 cols=60></textarea></td>
  </tr>
  <tr>
    <td colspan=2>
      <p><input type=checkbox name="copytomyself" value="true" checked>
        Send a copy to myself.</p>
      <p>Attach a file to this message: 
        <input type=file name="file" size=50></p>
      <input type=submit name="send" value="Send">
    </td>
  </tr>
</table>
</form>
<div align=center>
  <a href="#" onClick="window.close()">Close this window</a>
</div>
<hr>
<strong><a name="specific_notes">Notes specific to this page:</a></strong>
<ul>
  <li>Sending e-mail doesn't work, but it would send a message to the users
    specified using the e-mail registered with Tapped In.</li>
  <li>Attaching a file doesn't work, but it would attach a file to this
    message.  Once attached, the user could delete the attachment.</li>
  <li>Users would not read or receive mail here.</li>
  <li>However groups are associated with courses, hopefully they could
    be inserted here as an option for the To: field in e-mail.</li>
</ul>
<hr>
</body>
</html>
