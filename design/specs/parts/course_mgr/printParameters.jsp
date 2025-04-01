<%--
  printParameters.jsp
  -------------------
  Prints parameters in the HTTP request object.  Included in other .jsp pages
  for testing purposes only.

  Variables required by this fragment:
    none
    
  Variables declared and initialized by this fragment:
    Enumeration ppParamNames;
    String ppParamName; (local scope)
    String [] ppParamValue; (local scope)
    int i; (local scope)
    
  Includes files:
    none
  
  MODIFY WITH CARE - THIS FILE MIGHT BE LINKED TO BY MANY PROJECTS  
  
  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 9/14/01.
--%>

<%@page import="java.util.Enumeration"%>

<%
  out.print("<strong>Parameters:</strong><br>\n");
  Enumeration ppParamNames = request.getParameterNames();
  while (ppParamNames.hasMoreElements()) {
    String ppParamName = (String) ppParamNames.nextElement();
    String [] ppParamValues = request.getParameterValues(ppParamName);
    out.print(ppParamName + " = ");
    for (int i = 0; i < ppParamValues.length; i++) {
      out.print(ppParamValues[i]);
      if (i != ppParamValues.length - 1) out.print(" | ");
    }
    out.print("<br>\n");
  }
  out.print("<hr>");
%>
