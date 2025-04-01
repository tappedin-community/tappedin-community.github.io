<%--
  getUserMode.jsp
  ---------------
  This code fragment checks the session object for the current user mode
  (right now, student or teacher) and sets a variable (user) appropriately.
  It also sets variables and session attributes for switching from room
  to non-room views.

  Variables required by this fragment:
    String pagename; (must be initialized)
    String filename; (must be initialized)
    boolean isRoom; (must be initialized)
    boolean doSessionVars; (must be initialized)
    
  Variables declared and initialized by this fragment:
    String user;
    boolean isLocked;
    String value;
    String lastRoomFile;
    String lastNonRoomFile;
    
  Includes files:
    none

  Created by zaz@sri.com.
  Last modified by zaz@sri.com, 12/11/01.
--%>

<%
  String user = "student";
  boolean isLocked = false;
  
  // Check the request object for a change and modify session object
  String value = request.getParameter("user");
  if (value != null) session.putValue("user", value);
  value = request.getParameter("locked");
  if (value != null) session.putValue("locked", value);
  
  // Check the session object for current setting, set boolean
  value = (String) session.getValue("user");
  if (value == null) session.putValue("user", "student");
  else user = value;
  value = (String) session.getValue("locked");
  if (value == null) session.putValue("locked", "false");
  else if (value.equals("true")) isLocked = true;
  
  // Check the session object for last room/last nonroom visited
  String lastRoom = (String) session.getValue("lastRoom");
  String lastNonRoom = (String) session.getValue("lastNonRoom");
  String lastRoomFile = (String) session.getValue("lastRoomFile");
  String lastNonRoomFile = (String) session.getValue("lastNonRoomFile");
  if (doSessionVars) {
    if (isRoom) {
      session.putValue("lastRoom", pagename);
      session.putValue("lastRoomFile", filename);
    } else {
      session.putValue("lastNonRoom", pagename);
      session.putValue("lastNonRoomFile", filename);
    }
  }
%>