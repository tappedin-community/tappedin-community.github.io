<%--
  quiztest.jsp
  ------------
  The quizzes and tests page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "quiztest.jsp"; %>
<% final String pagename = "Quizzes & Tests"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

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
              <a href="coursework.jsp">Course Work</a> &raquo; 
              Quizzes & Tests</font></p>
            <h2 align=center>Quizzes & Tests</h2>
            <p>Put in my calendar: 
              <a href="coursework.jsp">out dates</a> |  
              <a href="coursework.jsp">due dates</a> |
              <a href="coursework.jsp">proctor dates</a>
              </p>
            <ul>
              <li>
                <strong>Quiz: C Syntax</strong><br>
                Out: 10/15/01, Due: 10/17/01<br>
                <% if (user.equals("Patti")) { %>
                <a href="coursework.jsp">Edit this Quiz</a><br>
                <% } %>
                <% if (user.equals("student")) { %>
                <a href="coursework.jsp">Take this Quiz</a><br>
                <% } %>
                <br>
              </li>
              <li>
                <strong>Test: Midterm</strong><br>
                Proctored:
                  <ul>
                    <li>11/15/01 at 2:00 pm in B106</li>
                    <li>11/15/01 at 7:30 pm in B132</li>
                  </ul>
              </li>
            </ul>
            <% if (user.equals("Patti")) { %>
            <p><em>Add a new <a href="#specific_notes">quiz or test</a></em></p>
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
<strong><a name="specific_notes">Notes specific to this page:</a></strong>
<ul>
  <li>Add a new quiz or test doesn't work, but it would add 
    a third quiz or text (Unlimited number of quizzes or tests) Default is 
    0.</li>
</ul>
<%@ include file="notes.jsp" %>
</body>
</html>
