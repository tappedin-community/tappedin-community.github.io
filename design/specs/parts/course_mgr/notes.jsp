<%--
  notes.jsp
  ---------
  This code fragment consists of notes to appear at the bottom of every
  page of the course manager sketch

  Variables required by this fragment:
    none
    
  Variables declared and initialized by this fragment:
    none
    
  Includes files:
    printParameters.jsp

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 1/22/02.
--%>

<% if (user.equals("Patti") || user.equals("Zaz")) { %>
<p><a name="notes"><strong>General Notes:</strong></a></p>
<ul>
  <li>Any changes you save will not be reflected, since this
    site is not currently hooked up to a real database.</li>
  <li>Prometheus provides tools for editing that would be active in a real
    implementation, including:
    <ul>
      <li>Importing Files</li>
      <li>Equation Editor</li>
      <li>Site Map (for inserting internal links)</li>
      <li>Spell Checker</li>
    </ul>  
  </li>
</ul>
<% } %>
<p>Try <a href="createcourse.jsp">Creating a Course</a>.</p>
<%@ include file="printParameters.jsp" %>  