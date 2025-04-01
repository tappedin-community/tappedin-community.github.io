<%--
  studentmanage.jsp
  -----------------
  The Student Management page of the Tapped In 2 Course Manager sketch.
    
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

<%@ page import="java.text.SimpleDateFormat" %>
<% final String filename = "studentmanage.jsp"; %>
<% final String pagename = "Settings: Student Management"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti") && !user.equals("Zaz")) { %><jsp:forward page="index.jsp" /><% } %>

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
              Student Management</font></p>
            <h2 align=center>Student Management</h2>
            <h3>Enrollment</h3>
            <h4>New Enrollment</h4>
            <form method=post action="studentmanage.jsp" name="invitestudent">
<%
  // Javascript
  String script = "document.invitestudent.invite.value=";
  script += "this.options[this.selectedIndex].value;";
%>
            <select name="enroll" onChange="<%= script %>">
              <option value="Invite">Invite</option>
              <option value="Enroll">Enroll</option>
            </select>&nbsp;
            <input type=text name="name" value="[username]"> as a 
            <select name="userlevel">
              <% if (user.equals("Patti")) { %>
              <option value="instructor">Instructor</option>
              <option value="ta">Teaching Assistant</option>
              <% } %>
              <option value="student" selected>Student</option>
              <option value="shadow">Shadow</option>
            </select>
            <br><br>
            <div align=center>
              <input type=submit name="invite" value="Invite">
            </div>
            </form>
            <h4>Pending Enrollment Requests</h4>
            <form method=post action="studentmanage.jsp" name="acceptstudent">
            <table border=1>
              <tr>
                <th>Name</th>
                <th>Username</th>
                <th>Type</th>
                <th>Accept</th>
                <th>Don't<br>Accept</th>
              </tr>
              <tr>
                <td>Tom Gaffney</td>
                <td>tgaffney</td>
                <td>Teaching Assistant</td>
                <td align=center>
                  <input type=radio 
                         name="tgaffney" 
                         value="yes" 
                         checked
                         <% if (user.equals("Zaz")) { %>disabled<% } %>>
                </td>
                <td align=center>
                  <input type=radio 
                         name="tgaffney" 
                         value="no" 
                         <% if (user.equals("Zaz")) { %>disabled<% } %>>
                </td>
              </tr>
              <tr>
                <td>Rhandy Pacpaco</td>
                <td>rhandy</td>
                <td>Student</td>
                <td align=center>
                  <input type=radio name="rhandy" value="yes" checked>
                </td>
                <td align=center>
                  <input type=radio name="rhandy" value="no" checked>
                </td>
              </tr>
            </table>
            <br>
            <div align=center>
              <input type=submit name="save" value="Save">
            </div>            
            <br><br>
            </form>
            <h3>Instructors</h3>
            <form method=post action="studentmanage.jsp" name="instructoredit">
            <table border=1>
              <tr>
                <% if (user.equals("Patti")) { %>
                <th></th>
                <% } %>
                <th>Name</th>
                <% if (user.equals("Patti")) { %>
                <th>Change To</th>
                <% } %>
              </tr>
              <tr>
                <% if (user.equals("Patti")) { %>
                <td align=center><strong>P</strong></td>
                <% } %>
                <td bgcolor="white">Patti Schank</td>
                <% if (user.equals("Patti")) { %>
                <td align=center>-</td>
                <% } %>
              </tr>
              <tr>
                <% if (user.equals("Patti")) { %>
                <td>
                  <a href="#">remove</a>
                </td>
                <% } %>
                <td><em>Imaginary Co-Instructor</em></td>
                <% if (user.equals("Patti")) { %>
                <td>
                  <select name="instructorchange">
                    <option selected value="nochange">-- No Change --</option>
                    <option value="tota">Teaching Assistant</option>
                    <option value="tostudent">Student</option>
                    <option value="toshadow">Shadow User</option>
                  </select>
                </td>
                <% } %>
              </tr>
            </table>
            <br>
            <div align=center>
              <input type=submit name="saveinstructors" value="Save">
            </div>
            </form>
            <h3>Teaching Assistants</h3>
            <form method=post action="studentmanage.jsp" name="taedit">
            <table border=1>
              <tr>
                <% if (user.equals("Patti")) { %>
                <th rowspan=2></th>
                <% } %>
                <th rowspan=2>Name</th>
                <% if (user.equals("Patti")) { %>
                <th rowspan=2>Change To</th>
                <% } %>
                <th rowspan=2>Key to Room</th>
                <th colspan=10>Edit Privileges</th>
              </tr>
              <tr align=center>
                <td><font size=-1>Syllabus</font></td>
                <td><font size=-1>Discussion</font></td>
                <td><font size=-1>Course Materials</font></td>
                <td><font size=-1>Course Work</font></td>
                <td><font size=-1>Gradebook</font></td>
                <td><font size=-1>Room Conf.</font></td>
                <td><font size=-1>Course Conf.</font></td>
                <td><font size=-1>Group Manage</font></td>
                <td><font size=-1>Student Manage</font></td>
              </tr>
              <tr align=center>
                <% if (user.equals("Patti")) { %>
                <td>
                  <a href="#">remove</a>
                </td>
                <% } %>
                <td bgcolor="white" align=left>Zaz Harris</td>
                <% if (user.equals("Patti")) { %>
                <td>
                  <select name="tachange">
                    <option selected value="nochange">-- No Change --</option>
                    <option value="toinstr">Instructor</option>
                    <option value="tostudent">Student</option>
                    <option value="toshadow">Shadow User</option>
                  </select>
                </td>
                <td><input type=checkbox checked name="ta1" value="door"></td>
                <td><input type=checkbox name="ta1" value="syllabus"></td>
                <td><input type=checkbox name="ta1" value="discussion"></td>
                <td><input type=checkbox name="ta1" value="materials"></td>
                <td><input type=checkbox name="ta1" value="coursework"></td>
                <td><input type=checkbox checked name="ta1" value="gradebook"></td>
                <td><input type=checkbox name="ta1" value="roomconf"></td>
                <td><input type=checkbox name="ta1" value="courseconf"></td>
                <td><input type=checkbox checked name="ta1" value="groupmanage"></td>
                <td><input type=checkbox checked name="ta1" value="studentmanage"></td>
                <% } else { %>
                <td>x</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>x</td>
                <td>-</td>
                <td>-</td>
                <td>x</td>
                <td>x</td>
                <% } %>
              </tr>
              <tr align=center>
                <% if (user.equals("Patti")) { %>
                <td>
                  <a href="#">remove</a>
                </td>
                <% } %>
                <td bgcolor="white" align=left><em>Imaginary TA</em></td>
                <% if (user.equals("Patti")) { %>
                <td>
                  <select name="tachange">
                    <option selected value="nochange">-- No Change --</option>
                    <option value="toinstr">Instructor</option>
                    <option value="tostudent">Student</option>
                    <option value="toshadow">Shadow User</option>
                  </select>
                </td>
                <td><input type=checkbox name="ta1" value="door"></td>
                <td><input type=checkbox name="ta2" value="syllabus"></td>
                <td><input type=checkbox name="ta2" value="discussion"></td>
                <td><input type=checkbox name="ta2" value="materials"></td>
                <td><input type=checkbox name="ta2" value="coursework"></td>
                <td><input type=checkbox checked name="ta2" value="gradebook"></td>
                <td><input type=checkbox name="ta2" value="roomconf"></td>
                <td><input type=checkbox name="ta2" value="courseconf"></td>
                <td><input type=checkbox name="ta2" value="groupmanage"></td>
                <td><input type=checkbox name="ta2" value="studentmanage"></td>
                <% } else { %>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>x</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <% } %>
              </tr>
            </table>
            <br>
            <div align=center>
              <input type=submit name="savetas" value="Save">
            </div>
            </form>
            <h3>Students</h3>
            <form method=post action="studentmanage.jsp" name="studentedit">
            <table border=1>
              <tr>
                <th></th>
                <th>Name</th>
                <th>Change To</th>
              </tr>
              <tr>
                <td><a href="#">remove</a></td>
                <td bgcolor="white">Judi Fusco</td>
                <td>
                  <select name="studentchange">
                    <option selected value="nochange">-- No Change --</option>
                    <% if (user.equals("Patti")) { %>
                    <option value="toisntr">Instructor</option>
                    <option value="tota">Teaching Assistant</option>
                    <% } %>
                    <option value="toshadow">Shadow User</option>
                  </select>                
                </td>
              </tr>
              <tr>
                <td><a href="#">remove</a></td>
                <td bgcolor="white">Mark Schlager</td>
                <td>
                  <select name="studentchange">
                    <option selected value="nochange">-- No Change --</option>
                    <% if (user.equals("Patti")) { %>
                    <option value="toisntr">Instructor</option>
                    <option value="tota">Teaching Assistant</option>
                    <% } %>
                    <option value="toshadow">Shadow User</option>
                  </select>                
                </td>
              </tr>
            </table>
            <br>
            <div align=center>
              <input type=submit name="savestudents" value="Save">
            </div>
            </form>
            <h3>Shadow Users</h3>
            <form method=post action="studentmanage.jsp" name="shadowedit">
            <table border=1>
              <tr>
                <th></th>
                <th>Name</th>
                <th>Change To</th>
              </tr>
              <tr>
                <td><a href="#">remove</a></td>
                <td bgcolor="white"><em>Imaginary Shadow User</em></td>
                <td>
                  <select name="studentchange">
                    <option selected value="nochange">-- No Change --</option>
                    <% if (user.equals("Patti")) { %>
                    <option value="toisntr">Instructor</option>
                    <option value="tota">Teaching Assistant</option>
                    <% } %>
                    <option value="student">Student</option>
                  </select>                
                </td>
              </tr>
            </table>
            <br>
            <div align=center>
              <input type=submit name="saveshadows" value="Save">
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
