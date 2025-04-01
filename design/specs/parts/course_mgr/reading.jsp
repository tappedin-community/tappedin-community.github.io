<%--
  reading.jsp
  -----------
  The reading list page of the Tapped In 2 Course Manager sketch.
    
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

<% final String filename = "reading.jsp"; %>
<% final String pagename = "Course Materials: Offline Materials"; %>
<% final boolean doSessionVars = true; %>
<% final boolean isRoom = true; %>
<%@ include file="getUserMode.jsp" %>

<%
  // Check for edits
  boolean isEditing = false;
  if (request.getParameter("edit") != null) isEditing = true;
  String item = request.getParameter("item");
  if (item == null) item = "";
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
              <a href="materials.jsp">Course Materials</a> &raquo; 
              Offline Materials</font></p>
            <h2 align=center>Offline Materials</h2>
            <table align=left cellpadding=10>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="materials.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="readings">
                  <% if (isEditing && item.equals("readings")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>          
                </td>
                <% } %>
                <td>
                  <% if (user.equals("Patti") && isEditing && item.equals("readings")) { %>
                  <input type=text size=40 name="readings" value="Readings">
                  <h4>Group 1:</h4>
                  <input type=text size=40 name="required" value="Required">
                  <ul>
                    <li>
                      <select name="reading1req">
                        <option value="required" selected>Required Readings</option>
                        <option value="recommended">Recommended Readings</option>
                      </select>
                      <textarea name="reading1text" cols=60 rows=4><a href="http://www.amazon.com/exec/obidos/ASIN/0201543222/qid=1002933274/sr=1-2/ref=br_lf_b_2/002-6599696-2120840">The Art and Science of C</a> by Eric Roberts</textarea>
                    </li>
                  </ul>
                  <h4>Group 2:</h4>
                  <input type=text size=40 name="recommended" value="Recommended">
                  <ul>
                    <li>
                      <select name="reading2req">
                        <option value="required">Required Readings</option>
                        <option value="recommended" selected>Recommended Readings</option>
                      </select>
                      <textarea name="reading2text" cols=60 rows=4><a href="http://www.amazon.com/exec/obidos/ASIN/0131103628/qid=1002933303/sr=2-1/ref=sr_2_15_1/002-6599696-2120840">The C Programming Language</a> by Brian W. Kernighan & Dennis M. Ritchie</textarea>
                      <br><br>
                    </li>
                    <li>
                      <select name="reading3req">
                        <option value="required">Required Readings</option>
                        <option value="recommended" selected>Recommended Readings</option>
                      </select>
                      <textarea name="reading3text" cols=60 rows=4><a href="http://www.eskimo.com/~scs/cclass/notes/sx2.html">Chapter 2: Basic Data Types and Operators</a> from <a href="http://www.eskimo.com/~scs/cclass/notes/top.html">C Programming Notes</a> by Steve Summit</textarea>
                    </li>
                  </ul>
                  <% } else {%>
                  <h3>Required Readings</h3>
                  <ul>
                    <li><a href="http://www.amazon.com/exec/obidos/ASIN/0201543222/qid=1002933274/sr=1-2/ref=br_lf_b_2/002-6599696-2120840">The 
                      Art and Science of C</a> by Eric Roberts</li>
                  </ul>
                  <h3>Recommended Readings</h3>
                  <ul>
                    <li><a href="http://www.amazon.com/exec/obidos/ASIN/0131103628/qid=1002933303/sr=2-1/ref=sr_2_15_1/002-6599696-2120840">The 
                      C Programming Language</a> by Brian W. Kernighan & Dennis M. Ritchie</li>
                    <li><a href="http://www.eskimo.com/~scs/cclass/notes/sx2.html">Chapter 
                      2: Basic Data Types and Operators</a> from 
                      <a href="http://www.eskimo.com/~scs/cclass/notes/top.html">C 
                      Programming Notes</a> by Steve Summit</li>
                  </ul>
                  <% } %>
                  <% if (user.equals("Patti")) { %>
                  <p><em>Add a new <a href="#specific_notes">offline materials
                    group</a></em></p>
                  <p><em>Add a new
                    <select name="newreadingreq">
                      <option value="required">Required Readings</option>
                      <option value="recommended" selected>Recommended Readings</option>
                    </select> <a href="#specific_notes">item</a>.</em></p>
                  </form>
                  <% } %> 
                </td>         
              </tr>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="materials.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="handouts">
                  <% if (isEditing && item.equals("handouts")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>          
                </td>
                <% } %>
                <td nowrap>
                  <% if (user.equals("Patti") && isEditing && item.equals("handouts")) { %>
                  <input type=text size=40 name="handouts" value="Handouts">
                  <ol>
                    <li>
                      <select name="handout1month">
                        <option value="1">(1) January</option>
                        <option value="2">(2) February</option>
                        <option value="3">(3) March</option>
                        <option value="4">(4) April</option>
                        <option value="5">(5) May</option>
                        <option value="6">(6) June</option>
                        <option value="7">(7) July</option>
                        <option value="8">(8) August</option>
                        <option value="9">(9) September</option>
                        <option value="10" selected>(10) October</option>
                        <option value="11">(11) November</option>
                        <option value="12">(12) December</option>
                      </select>
                      <select name="handout1day">
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
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17" selected>17</option>
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
                      <select name="handout1year">
                        <option value="2001" selected>2001</option>
                        <option value="2002">2002</option>
                        <option value="2003">2003</option>
                        <option value="2004">2004</option>
                        <option value="2005">2005</option>
                      </select>
                      <br>
                      Name: <input type=text 
                             size=40 
                             name="handout1title" 
                             value="C Survival Guide">
                      <br>
                      <input type=radio name="filetype" value="web" checked>
                      URL: <input type=text
                             size=60
                             name="handoutURL"
                             value="http://www.stanford.edu/class/cs106a/materials/handouts/18%20C%20Survivor%27s%20Guide.pdf">
                      <br>
                      <input type=radio name="filetype" value="local">
                      File: &lt;none chosen&gt;
                      <a href="#specific_notes">Choose</a> an existing course file
                      <br><br>
                    </li>
                    <li>
                        <select name="handout2month">
                        <option value="1">(1) January</option>
                        <option value="2">(2) February</option>
                        <option value="3">(3) March</option>
                        <option value="4">(4) April</option>
                        <option value="5">(5) May</option>
                        <option value="6">(6) June</option>
                        <option value="7">(7) July</option>
                        <option value="8">(8) August</option>
                        <option value="9">(9) September</option>
                        <option value="10" selected>(10) October</option>
                        <option value="11">(11) November</option>
                        <option value="12">(12) December</option>
                      </select>
                      <select name="handout2day">
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
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24" selected>24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                      </select>
                      <select name="handout2year">
                        <option value="2001" selected>2001</option>
                        <option value="2002">2002</option>
                        <option value="2003">2003</option>
                        <option value="2004">2004</option>
                        <option value="2005">2005</option>
                      </select>
                      <br>
                      Name: <input type=text 
                             size=40 
                             name="handout1title" 
                             value="Programming Style Guidelines">
                      <br>
                      <input type=radio name="filetype" value="web" checked>
                      URL: <input type=text
                             size=60
                             name="handoutURL"
                             value="http://www.stanford.edu/class/cs106a/materials/handouts/25%20Programming%20Style.pdf">
                      <br>
                      <input type=radio name="filetype" value="local">
                      File: &lt;none chosen&gt;
                      <a href="#specific_notes">Choose</a> an existing course file
                      <br><br>
                    <li>
                      <select name="handout3month">
                        <option value="1">(1) January</option>
                        <option value="2">(2) February</option>
                        <option value="3">(3) March</option>
                        <option value="4">(4) April</option>
                        <option value="5">(5) May</option>
                        <option value="6">(6) June</option>
                        <option value="7">(7) July</option>
                        <option value="8">(8) August</option>
                        <option value="9">(9) September</option>
                        <option value="10" selected>(10) October</option>
                        <option value="11">(11) November</option>
                        <option value="12">(12) December</option>
                      </select>
                      <select name="handout3day">
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
                        <option value="26" selected>26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                      </select>
                      <select name="handout3year">
                        <option value="2001" selected>2001</option>
                        <option value="2002">2002</option>
                        <option value="2003">2003</option>
                        <option value="2004">2004</option>
                        <option value="2005">2005</option>
                      </select>
                      <br>
                      Name: <input type=text 
                             size=40 
                             name="handout1title" 
                             value="Parameter Passing Help">
                      <br>
                      <input type=radio name="filetype" value="web" checked>
                      URL: <input type=text
                             size=60
                             name="handoutURL"
                             value="http://www.stanford.edu/class/cs106a/materials/handouts/31%20Parameter%20Passing%20help.pdf">
                      <br>
                      <input type=radio name="filetype" value="local">
                      File: &lt;none chosen&gt;
                      <a href="#specific_notes">Choose</a> an existing course file
                  </ol>
                  <% } else { %>
                  <h3>Handouts</h3>
                  <ol>
                    <li>(10-17-01) <a href="http://www.stanford.edu/class/cs106a/materials/handouts/18%20C%20Survivor%27s%20Guide.pdf" target="new">C Survival Guide</a></li>
                    <li>(10-24-01) <a href="http://www.stanford.edu/class/cs106a/materials/handouts/25%20Programming%20Style.pdf" target="new">Programming Style Guidelines</a></li>
                    <li>(10-26-01) <a href="http://www.stanford.edu/class/cs106a/materials/handouts/31%20Parameter%20Passing%20help.pdf" target="new">Parameter Passing Help</a></li>
                  </ol>            
                  <% } %>
                  <% if (user.equals("Patti")) { %>
                  <p><em>Add a new <a href="#specific_notes">handout</a></em></p>
                  </form>
                  <% } %> 
                </td>
              </tr>
              <tr valign=top>
                <% if (user.equals("Patti")) { %>
                <form method=post action="materials.jsp" name="editForm">
                <td align=right>
                  <input type=hidden name="item" value="online">
                  <% if (isEditing && item.equals("online")) { %>
                  <input type=submit name="save" value="Save">
                  <% } else { %>
                  <input type=submit name="edit" value="Edit">
                  <% } %>          
                </td>
                <% } %>
                <td>
                  <% if (user.equals("Patti") && isEditing && item.equals("online")) { %>
                  <table>
                    <tr valign=top>
                      <td colspan=2>
                        <input type=text 
                               size=40 
                               name="online" 
                               value="Online Resources">
                      </td>
                    </tr>
                    <tr>
                      <td>Name:</td>
                      <td>
                        <input type=text 
                               size=40 
                               name="online1name" 
                               value="The C Standard Library">
                      </td>
                    </tr>
                    <tr>
                      <td>URL:</td>
                      <td>
                        <input type=text 
                               size=60 
                               name="online1URL" 
                               value="http://www.infosys.utas.edu.au/info/documentation/C/CStdLib.html">                
                      </td>
                    </tr>
                  </table>
                  <% } else { %>
                  <h3>Online Resources</h3>
                  <ul>
                    <li><a href="http://www.infosys.utas.edu.au/info/documentation/C/CStdLib.html" target="new">The C Standard Library</a></li>
                  </ul>            
                  <% } %>
                  <% if (user.equals("Patti")) { %>
                  <p><em>Add a new <a href="#specific_notes">online resource</a></em>
                    </p>
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
  <li>Allow readings/online resources to be re-ordered? (i.e. allow a switch of
    1st reading with the 2nd, etc. - perhaps up down arrows on each reading</li>
  <li>Upload files in utilities?</li>
</ul>
<% if (user.equals("Patti")) { %>
<strong><a name="specific_notes">Notes specific to this page:</a></strong>
<ul>
  <li>Add a new reading group doesn't work, but it would add space for 
    a third reading group (Unlimited number of reading groups) Default is 
    2 (Required Reading and Recommended Reading).</li>
  <li>Add a new reading doesn't work, but it would add space for 
    a fourth reading (Unlimited number of readings) Default is 1 required
    and 1 recommended.</li>
  <li>Add a new handout doesn't work, but it would add space for 
    a fourth handout (Unlimited number of handouts) with the date defaulted
    to the current date. Default is 1.</li>
  <li>Add a new online resource doesn't work, but it would add space for 
    a second online resource (Unlimited number of online resources) Default is 
    1.</li>
</ul>
<% } %>
<%@ include file="notes.jsp" %>
</body>
</html>
