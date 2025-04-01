<%--
  courseconf.jsp
  --------------
  The course configuration page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "courseconf.jsp"; %>
<% final String pagename = "Settings: Course Configuration"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>
<% if (!user.equals("Patti")) { %><jsp:forward page="index.jsp" /><% } %>

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
              Course Configuration</font></p>
            <h2 align=center>Course Configuration</h2>
            <h3>Tenant Organization</h3>
            <p>Pepperdine University</p>
            <form method=post action="courseconf.jsp" name="courseconf">
            <h3>Privacy Setting</h3>
            <p>You can make a course <em>more public</em>, i.e. go from private
              to public, but not the other way.  Be careful!</p>
            <table cellspacing=5>
              <tr valign=top>
                <td><input type=radio name="privacy" value="public"></td>
                <td>Public</td>
                <td>
                  (Any Tapped In user can see the course in the course catalogs
                  and request enrollment)
                </td>
              </tr>
              <tr valign=top>
                <td><input type=radio name="privacy" checked value="publictenant"></td>
                <td>Public to Pepperdine University</td>
                <td>
                  (Any Tapped In user who is a member of Pepperdine University
                  can see the course in the course catalogs and request
                  enrollment)
                </td>
              </tr>
              <tr valign=top>
                <td>
                  <input type=radio name="privacy" disabled value="private">
                </td>
                <td>Private</td>
                <td>
                  (Users can only enroll by invitation and the course does not
                  appear in the course catalogs for non-members of the course)
                </td>
              </tr>
            </table>
            <h3>Dates</h3>
            <table>
              <tr>
                <td>Starting Date:</td>
                <td>9/1/01</td>
              </tr>
              <tr>
                <td>Ending Date:</td>
                <td>12/15/01</td>
              </tr>
            </table>
            <p><font size=-1>Should the start and end dates be able to be 
              changed?</font></p>
            <h3>Password</h3>
            <table>
              <tr>
                <td>Course ID:</td>
                <td>2088 (this number will not change)</td>
              </tr>
              <tr>
                <td>Course Password:</td>
                <td><input type=text name="password" value="foobar"></td>
              </tr>
            </table>
            <h3>Keywords</h3>
            <p>Change the keywords associated with this course.
              (Used in search function)</p>
            <table border=1>
              <tr>
                <th>Subject Areas</th>
                <th>Grade Level</th>
                <th>Other</th>
              </tr>
              <tr valign=top>
                <td width="33%">
                  <input type=checkbox checked name="kw_compsci" value="true">
                  Computer Science<br>
                  <input type=checkbox checked name="kw_engineer" value="true">
                  Engineering<br>
                  <input type=checkbox name="kw_english" value="true">
                  English<br>                                    
                  <input type=checkbox name="kw_french" value="true">
                  French<br>
                  <input type=checkbox name="kw_history" value="true">
                  History<br>
                  <input type=checkbox name="kw_math" value="true">
                  Math<br>
                  <input type=checkbox name="kw_science" value="true">
                  Science<br>
                  <input type=checkbox name="kw_spanish" value="true">
                  Spanish<br>
                </td>
                <td width="33%">
                  <input type=checkbox checked name="kw_college" value="true">
                  College<br>
                  <input type=checkbox name="kw_hs" value="true">
                  High School<br>
                  <input type=checkbox name="kw_ms" value="true">
                  Middle School<br>
                  <input type=checkbox name="kw_ls" value="true">
                  Lower School<br>
                  <input type=checkbox name="kw_kind" value="true">
                  Kindergarten<br>
                </td>
                <td width="34%">
                  <input type=checkbox name="kw_extra" value="true">
                  Extracurricular Activities<br>                
                </td>
              </tr>
            </table>
            <div align=center>
              <p><input type=submit name="save" value="Save"></p>
            </div>
            </form>
            <h3>Information Page Text</h3>
            <p>This text appears on the information page for this course, 
              viewable by Tapped In users when they click on this course
              in the catalog or otherwise try to get to the course room.</p>
            <p>CS 101 is an introductory course taught by Patti 
              Schank about programming in the language of C.</p>
            <p><a href="editinfopage.jsp">Edit</a> Information Page Text</p>
            <% if (user.equals("Patti")) { %>
            <h3>Delete This Course</h3>
            <p><a href="#">Delete</a> this course.  Please use this feature
              with caution!  Please archive all materials you would like to
              keep.  All current users in the course classroom will be
              transported to Tapped In Reception.  All course groups will
              also be deleted.</p>
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
