<%--
  subnav.jsp
  ----------
  A jsp fragment to serve as a subnavigation bar (student) for the Tapped In 2 
  Course Manager sketch.

  Variables required by this fragment:
    String filename; (must be initialized)
    
  Variables declared and initialized by this fragment:
    none
    
  Includes files:
    none
  
  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 11/30/01.
--%>

<% if (filename.equals("student.jsp") ||
       filename.equals("createcourse.jsp")) { %>
<tr bgcolor="yellow">
  <td colspan=3>
    <table border=1 width="100%" cellpadding=5>
      <tr align=center>
        <td width=60>People</td>
        <td width=60>Places</td>
        <td width=60>Courses</td>
        <td width=60>Groups</td>
        <td width=60>Files & Links</td>
        <td width=60>Messages</td>
        <td width=60>Calendar</td>
        <td width=60>Settings</td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </td>
</tr>
<% } %>
