<%--
  topbar.jsp
  ----------
  A jsp fragment to serve as a top bar for the Tapped In 2 Course Manager
  sketch.

  Variables required by this fragment:
    String lastNonRoom; (must be initialized)
    String lastRoom; (must be initialized)
    String isRoom; (must be initialized)
    boolean isLocked; (must be initialized)
    
  Variables declared and initialized by this fragment:
    none
    
  Includes files:
    none
  
  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 11/30/01.
--%>

<tr bgcolor="silver">
  <td>
    <font color="blue">
    <h1 align=left>TappedIn</h1>
    </font>
    <h3 align=left>
    You are in CS 101: Intro to C Programming
    <% if (isRoom && lastNonRoom != null) { %>
    <a href="<%= lastNonRoomFile %>">Back to <%= lastNonRoom %></a>
    <% } else if (!isRoom && lastRoom != null) { %>
    <%   if (lastRoom.equals("")) { %>
    <a href="<%= lastRoomFile %>">Room View</a>
    <%   } else { %>
    <a href="<%= lastRoomFile %>">Room View: <%= lastRoom %></a>
    <%   } %>
    <% } %>
    </h3>
  </td>
  <td bgcolor="yellow" align=right>
    <a href="student.jsp">My Stuff</a>
  </td>
</tr>

