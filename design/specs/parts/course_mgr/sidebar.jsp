<%--
  sidebar.jsp
  -----------
  A jsp fragment to serve as a sidebar for the Tapped In 2 
  Course Manager sketch.  Includes an image of the room
  and subnavigation.

  Variables required by this fragment:
    String filename; (must be initialized)
    
  Variables declared and initialized by this fragment:
    none
    
  Includes files:
    none
  
  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 1/22/01.
--%>

<td bgcolor="FFFFCC" width=150>
  <div align=right>
    <p>
      <% if (user.equals("Patti") || user.equals("Zaz")) { %>
      <%   if (isLocked) { %>
      <a href="<%= filename %>?locked=false">Unlock Door</a>
      <%   } else { %>
      <a href="<%= filename %>?locked=true">Lock Door</a>
      <%   } %>
      <br>
      <% } %> 
      The Door is <% if (isLocked) { %>Locked<% } else { %>Unlocked<% } %>
    </p>
  </div>
  <div align=center>
    <a href="welcome.jsp">
      <img src="images/myroom.gif" width=100 height=75 border=0>
    </a>
    <p>
      <font size=+1><strong>CS101: Intro to C Programming</strong></font>
      <% if (user.equals("Patti")) { %>
      <font size=-1>
      <a href="editroomname.jsp?frompage=<%= filename %>">edit</a>
      </font>
      <% } %>
      <br>
    </p>
  </div>  
  <% if (filename.equals("welcome.jsp")) { %>
  Welcome<br><br>
  <% } else { %>
  <a href="welcome.jsp">Welcome</a><br><br>
  <% } %>

  <% if (filename.equals("syllabus.jsp")) { %>
  Syllabus<br>
  <% } else { %>
  <a href="syllabus.jsp">Syllabus</a><br>
  <% } %>

  <% if (filename.equals("syllabus.jsp") ||
         filename.equals("info.jsp") ||
         filename.equals("staffinfo.jsp") ||
         filename.equals("policyinfo.jsp") ||
         filename.equals("calendar.jsp")) { %>

  <%   if (filename.equals("info.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Course Information<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="info.jsp">Course Information</a><br>
  <%   } %>

  <%   if (filename.equals("staffinfo.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Teaching Staff<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="staffinfo.jsp">Teaching Staff</a><br>
  <%   } %>

  <%   if (filename.equals("policyinfo.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Policies<br>  
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="policyinfo.jsp">Policies</a><br>
  <%   } %>

  <%   if (filename.equals("calendar.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Calendar<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="calendar.jsp">Calendar</a><br>
  <%   } %>

  <% } %>
  <br>
  
  <% if (filename.equals("discussion.jsp")) { %>
  Discussion<br><br>
  <% } else { %>
  <a href="discussion.jsp">Discussion</a><br><br>
  <% } %>

  <% if (filename.equals("materials.jsp")) { %>
  Course Materials<br>
  <% } else { %>
  <a href="materials.jsp">Course Materials</a><br>
  <% } %>

  <% if (filename.equals("materials.jsp") ||
         filename.equals("reading.jsp") ||
         filename.equals("files.jsp") ||
         filename.equals("links.jsp")) { %>

  <%   if (filename.equals("reading.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Offline Materials<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="reading.jsp">Offline Materials</a><br>
  <%   } %>

  <%   if (filename.equals("files.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Files<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="files.jsp">Files</a><br>
  <%   } %>

  <%   if (filename.equals("links.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Links<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="links.jsp">Links</a><br>
  <%   } %>

  <% } %>
  <br>
  
  <% if (filename.equals("coursework.jsp")) { %>
  Course Work<br>
  <% } else { %>
  <a href="coursework.jsp">Course Work</a><br>
  <% } %>

  <% if (filename.equals("coursework.jsp") ||
         filename.equals("assignments.jsp") ||
         filename.equals("quiztest.jsp")) { %>

  <%   if (filename.equals("assignments.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Assignments<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="assignments.jsp">Assignments</a><br>
  <%   } %>

  <%   if (filename.equals("quiztest.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Quizzes & Tests<br>
  <%   } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="quiztest.jsp">Quizzes & Tests</a><br>
  <%   } %>
  
  <% } %>
  <br>

  <%
    if (filename.equals("gradebook.jsp")) {
      if (user.equals("Patti") || user.equals("Zaz")) { %>Gradebook<br><br><% } else { %>Roster &amp; Groups<br><br><% }
    } else {
  %>
  <a href="gradebook.jsp">
    <% if (user.equals("Patti") || user.equals("Zaz")) { %>Gradebook<% } else { %>Roster &amp; Groups<% } %></a><br><br>
  <% } %>

  <% if (filename.equals("passageways.jsp")) { %>
  Passageways<br><br>
  <% } else { %>
  <a href="passageways.jsp">Passageways</a><br><br>
  <% } %>

  <% if (user.equals("Patti") || user.equals("Zaz")) { %>
  <%   if (filename.equals("settings.jsp")) { %>
  Settings<br>
  <%   } else { %>
  <a href="settings.jsp">Settings</a><br>
  <%   } %>

  <%   if (filename.equals("settings.jsp") ||
           filename.equals("roomconf.jsp") ||
           filename.equals("courseconf.jsp") ||
           filename.equals("groupmanage.jsp") ||
           filename.equals("studentmanage.jsp")) { %>
  
  <%     if (filename.equals("roomconf.jsp") || user.equals("Zaz")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Room Configuration<br>
  <%     } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="roomconf.jsp">Room Configuration</a><br>
  <%     } %>

  <%     if (filename.equals("courseconf.jsp") || user.equals("Zaz")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Course Configuration<br>
  <%     } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="courseconf.jsp">Course Configuration</a><br>
  <%     } %>

  <%     if (filename.equals("groupmanage.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Group Management<br>
  <%     } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="groupmanage.jsp">Group Management</a><br>
  <%     } %>

  <%     if (filename.equals("studentmanage.jsp")) { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  Student Management
  <%     } else { %>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <a href="studentmanage.jsp">Student Management</a><br>
  <%
         }
       } 
     }
  %>
  <br>
</td>