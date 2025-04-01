<%--
  staffinfo.jsp
  -------------
  The staff information page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "staffinfo.jsp"; %>
<% final String pagename = "Syllabus: Teaching Staff"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

<%
  // Check for edits
  int instrToEdit = 0;
  value = request.getParameter("instrNum");
  if (request.getParameter("edit") != null && value != null) 
    instrToEdit = Integer.parseInt(value);
%>

<html>
<head>
<title>Tapped In: CS101: <%= pagename %></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
<%@ include file="focusWindow.js" %>
</script>
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
              Teaching Staff</font></p>
            <h2 align=center>Teaching Staff</h2>
            <% if (user.equals("Patti")) { %>
            <p><em><a href="#specific_notes">Add</a> a new staff member</em></p>
            <% } %>
            <table align=left cellpadding=10>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="staffinfo.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="instrNum" value="1">
                  <% if (instrToEdit == 1) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>          
                </td>
                <% } %>
                <td>
                  <% if (user.equals("Patti") && instrToEdit == 1) { %>
                  <table>
                    <tr valign=top>
                      <td>Job Title:</td>
                      <td><input type=text name="jobtitle1" size=30 value="Instructor"></td>
                    </tr>
                    <tr valign=top>
                      <td>Title (e.g. Dr.):</td>
                      <td><input type=text name="title1" size=20 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td>Name:</td>
                      <td><input type=text name="name1" size=40 value="Patricia Schank"></td>
                    </tr>
                    <tr valign=top>
                      <td>Office Hours:</td>
                      <td><input type=text name="officehours1" size=40 value="Tu 4pm-5pm"></td>
                    </tr>
                    <tr valign=top>
                      <td>E-mail:</td>
                      <td><input type=text name="email1" size=40 value="patricia.schank@sri.com"></td>
                    </tr>
                    <tr valign=top>
                      <td>Address:</td>
                      <td><input type=text name="address1" size=60 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td>Phone:</td>
                      <td><input type=text name="phone1" size=20 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td>Fax:</td>
                      <td><input type=text name="fax1" size=20 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td colspan=2>Optional Field 1</td>
                    </tr>
                    <tr valign=top>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;Name:</td>
                      <td><input type=text name="optname1.1" size=40 value="Specialty"></td>
                    </tr>
                    <tr valign=top>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;Value:</td>
                      <td><input type=text name="optvalue1.1" size=60 value="Codebabe"></td>
                    </tr>
                    <tr valign=top>
                      <td colspan=2>
                        <p><em>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#notes">Add</a> 
                          a new optional field</em></p>
                      </td>
                    </tr>
                    <tr valign=top>
                      <td>Bio:</td>
                      <td>
                        <%@ include file="promtools.html" %>
      <textarea name="bio1" cols=60 rows=4><p><img src="images/schank.jpg" align=left>&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Dr. Patricia Schank  is a Senior Computer Scientist with SRI's Center for Technology in Learning. Her research focuses on thedesign, development, and evaluation of computer-mediated learning environments. Recent projects include the development of collaboration environments to support learning and professional development, tools for investigating, visualizing,and discussing chemistry in the classroom, and web-based resource banks of evaluation products and performance assessments.</p>
      <p>&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Patricia received a Ph.D. in Education (cognition and development) and M.S. in Computer Science from the University of California at Berkeley. Her dissertation work, which won an Outstanding Dissertation Award, focused on modeling and aiding scientific reasoning by integrating theory-based cognitive simulations, experimental studies, and the development of software and instructional curricula. Patricia has co-authored over 50 articles and paper presentations.</p></textarea>
                      </td>
                    </tr>
                  </table>
                  <% } else {%>
                  <h3>Instructor</h3>
                  <p>
                    <strong>Patricia Schank</strong><br>
                    <em><a href="#specific_notes">View Profile</a></em><br>
                    <em>Office Hours:</em> Tu 4pm-5pm<br>
                    <em>E-mail:</em> 
                    <a href="email.jsp?to=instr1" target="email" onClick="focusWindow('email', 'resizable=yes,width=525,height=600')">patricia.schank@sri.com</a><br>
                    <em>Send a <a href="#">private message</a></em><br>
                    <em>Specialty:</em> Codebabe<br>
                    <p><img src="images/schank.jpg" align=left>&nbsp;&nbsp;&nbsp;&nbsp;Dr. 
                      Patricia Schank  is a Senior Computer Scientist with SRI's 
                      Center for Technology in Learning. Her research focuses on the
                      design, development, and evaluation of computer-mediated 
                      learning environments. Recent projects include the development 
                      of collaboration environments to support learning and 
                      professional development, tools for investigating, visualizing,
                      and discussing chemistry in the classroom, and web-based 
                      resource banks of evaluation products and performance 
                      assessments.</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;Patricia received a Ph.D. in Education (cognition and 
                      development) and M.S. in Computer Science from the University of
                      California at Berkeley. Her dissertation work, which won an 
                      Outstanding Dissertation Award, focused on modeling and aiding 
                      scientific reasoning by integrating theory-based cognitive 
                      simulations, experimental studies, and the development of 
                      software and instructional curricula. Patricia has co-authored 
                      over 50 articles and paper presentations.</p>
                  <% } %>
                  <% if (user.equals("Patti")) { %>
                  </form>
                  <% } %>
                </td>
              </tr>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="staffinfo.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="instrNum" value="2">
                  <% if (instrToEdit == 2) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>          
                </td>
                <% } %>
                <td>
                  <% if (user.equals("Patti") && instrToEdit == 2) { %>
                  <table>
                    <tr valign=top>
                      <td>Job Title:</td>
                      <td><input type=text name="jobtitle2" size=30 value="Teaching Assistant"></td>
                    </tr>
                    <tr valign=top>
                      <td nowrap>Title (e.g. Dr.):</td>
                      <td><input type=text name="title2" size=20 value="Ms."></td>
                    </tr>
                    <tr valign=top>
                      <td>Name:</td>
                      <td><input type=text name="name2" size=40 value="Zaz Harris"></td>
                    </tr>
                    <tr valign=top>
                      <td>Office Hours:</td>
                      <td><input type=text name="officehours2" size=40 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td>E-mail:</td>
                      <td><input type=text name="email2" size=40 value="zaz@sri.com"></td>
                    </tr>    
                    <tr valign=top>
                      <td>Address:</td>
                      <td><input type=text name="address2" size=60 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td>Phone:</td>
                      <td><input type=text name="phone2" size=20 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td>Fax:</td>
                      <td><input type=text name="fax2" size=20 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td colspan=2>Optional Field 1</td>
                    </tr>
                    <tr valign=top>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;Name:</td>
                      <td><input type=text name="optname2.1" size=40 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;Value:</td>
                      <td><input type=text name="optvalue2.1" size=60 value=""></td>
                    </tr>
                    <tr valign=top>
                      <td colspan=2>
                        <p><em>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#specific_notes">Add</a> 
                          a new optional field</em></p>
                      </td>
                    </tr>
                    <tr valign=top>
                      <td>Bio:</td>
                      <td>
                        <%@ include file="promtools.html" %>
                        <textarea name="bio2" cols=60 rows=4></textarea>
                      </td>
                    </tr>
                  </table>
                  <% } else {%>
                  <h3>Teaching Assistant</h3>
                  <p>
                    <strong>Ms. Zaz Harris</strong><br>
                    <em><a href="#specific_notes">View Profile</a></em><br>
                    <em>Send a <a href="#">private message</a></em><br>
                    <em>E-mail:</em> 
                    <a href="email.jsp?to=instr2" target="email" onClick="focusWindow('email', 'resizable=yes,width=525,height=600')">zaz@sri.com</a>
                  </p>
                  <% } %>
                  <% if (user.equals("Patti")) { %>
                  </form>
                  <% } %>
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
<strong>Thoughts:</strong>
<ul>
  <li>Have instructor image as a specific field?</li>
</ul>
<% if (user.equals("Patti")) { %>
<strong><a name="specific_notes">Notes specific to this page:</a></strong>
<ul>
  <li>Add a new optional field doesn't work, but it would add space for 
    &quot;Optional Field 2&quot; (Unlimited number of optional fields)
    Default is 1.</li>
  <li>Add a new staff member doesn't work, but it would add space for 
    a third staff member (Unlimited number of staff members)
    Default is 0.</li>
  <li>Should the bio just <strong>be</strong> the instructor or T.A. Tapped
    In profile?  Or should the instructor or T.A. get to tailor the text here
    for the course?</li>
</ul>
<% } %>
<%@ include file="notes.jsp" %>
</body>
</html>
