<%--
  switchUserMode.jsp
  ------------------
  This code fragment displays the current user mode and allows the user to
  switch modes.

  Variables required by this fragment:
    String filename; (must be initialized)
    boolean user; (must be initialized)
    
  Variables declared and initialized by this fragment:
    none
    
  Includes files:
    none

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 12/12/01.
--%>

<div align=center>
<h3>User Mode</h3>
<p>
  <strong>
  <% if (user.equals("Patti")) { %>
  Patti
  <% } else { %>
  <a href="<%= filename %>?user=Patti">Patti</a>
  <% } %>
  &nbsp;&nbsp;

  <% if (user.equals("Zaz")) { %>
  Zaz
  <% } else { %>
  <a href="<%= filename %>?user=Zaz">Zaz</a>
  <% } %>
  &nbsp;&nbsp;

  <% if (user.equals("student")) { %>
  student
  <% } else { %>
  <a href="<%= filename %>?user=student">student</a>
  <% } %>
  &nbsp;&nbsp;

  <% if (user.equals("shadow")) { %>
  shadow
  <% } else { %>
  <a href="<%= filename %>?user=shadow">shadow</a>
  <% } %>
  </strong></p>
</div>