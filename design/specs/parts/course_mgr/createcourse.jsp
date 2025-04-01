<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%--
  createcourse.jsp
  ----------------
  Creating a course.
    
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

<% final String filename = "createcourse.jsp"; %>
<% final String pagename = "Create A Course"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = false; %>
<%@ include file="getUserMode.jsp" %>

<html>
<head>
<title>Tapped In: <%= pagename %></title>
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
          <td>
            <p><font size=-1>Create A Course</font></p>
            <h2 align=center>Create A Course</h2>
            <h3>Tenant Organization</h3>
            <p>Pepperdine University</p>
            <form method=post action="createcourse.jsp" name="createcourse">
            <h3>Course Information</h3>
            <table>
              <tr>
                <td>Department ID:</td>
                <td><input type=text name="department" size=10 value="CS"></td>
              </tr>
              <tr>
                <td>Course Number:</td>
                <td><input type=text name="courseNum" size=5 value="101"></td>
              </tr>
              <tr>
                <td>Section Number:</td>
                <td><input type=text name="sectionNum" size=5 value=""></td>
              </tr>
              <tr>
                <td>Course Title:</td>
                <td>
                  <input type=text 
                         name="courseTitle"
                         size=50
                         value="Intro To C Programming">
                </td>
              </tr>
            </table>
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
                  <input type=radio name="privacy" value="private">
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
                <td>
                  <select name="start_month">
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9" selected>September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                  </select>
                  <select name="start_day">
                    <option value="1" selected>1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>                   
                  </select>
                  <select name="start_year">
                    <option value="2001" selected>2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                  </select>
                </td>
              </tr>
              <tr>
                <td>Ending Date:</td>
                <td>
                  <select name="end_month">
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12" selected>December</option>
                  </select>
                  <select name="end_day">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15" selected>15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>                   
                  </select>
                  <select name="end_year">
                    <option value="2001" selected>2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                  </select>
                </td>
              </tr>
            </table>
            <h3>Meeting Days & Times</h3>
            <p><strong>Meeting 1</strong></p>
            <table>
              <tr>
                <td>Name:</td>
                <td><input type=text name="meetingname1" value="Lecture"></td>
              </tr>
              <tr>
                <td>Days:</td>
                <td>
                  <table>
                    <tr align=center>
                      <td>Su</td>
                      <td>M</td>
                      <td>Tu</td>
                      <td>W</td>
                      <td>Th</td>
                      <td>F</td>
                      <td>Sa</td>                    
                    </tr>
                    <tr align=center>
                      <td><input type=checkbox name="meetingdays_sun" value="true"></td>
                      <td><input type=checkbox name="meetingdays_mon" checked value="true"></td>
                      <td><input type=checkbox name="meetingdays_tue" value="true"></td>
                      <td><input type=checkbox name="meetingdays_wed" checked value="true"></td>
                      <td><input type=checkbox name="meetingdays_thu" value="true"></td>
                      <td><input type=checkbox name="meetingdays_fri" checked value="true"></td>
                      <td><input type=checkbox name="meetingdays_sat" value="true"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td>Start Time:</td>
                <td>
                  <select name="meeting1_starttime_hour">
                    <option value="1">1</option>
                    <option value="2" selected>2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                  </select>
                  <select name="meeting1_starttime_min">
                    <option value="0">00</option>
                    <option value="5">05</option>
                    <option value="10">10</option>
                    <option value="15" selected>15</option>
                    <option value="20">20</option>
                    <option value="25">25</option>
                    <option value="30">30</option>
                    <option value="35">35</option>
                    <option value="40">40</option>
                    <option value="45">45</option>
                    <option value="50">50</option>
                    <option value="55">55</option>
                  </select>
                  <input type=radio name="meeting1_start_ampm" value="am">AM
                  <input type=radio name="meeting1_start_ampm" value="pm" checked>PM                  
                </td>
              </tr>
              <tr>
                <td>End Time:</td>
                <td>
                  <select name="meeting1_endtime_hour">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3" selected>3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                  </select>
                  <select name="meeting1_endtime_min">
                    <option value="0">00</option>
                    <option value="5" selected>05</option>
                    <option value="10">10</option>
                    <option value="15">15</option>
                    <option value="20">20</option>
                    <option value="25">25</option>
                    <option value="30">30</option>
                    <option value="35">35</option>
                    <option value="40">40</option>
                    <option value="45">45</option>
                    <option value="50">50</option>
                    <option value="55">55</option>
                  </select>
                  <input type=radio name="meeting1_end_ampm" value="am">AM
                  <input type=radio name="meeting1_end_ampm" value="pm" checked>PM                  
                </td>
              </tr>
            </table>
            <p><em><a href="#">Add</a> a new meeting time</em></p>
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
              <p><input type=submit name="create" value="Create The Course"></p>
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


</body>
</html>
