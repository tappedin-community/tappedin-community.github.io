// focusWindow.js
// --------------
// Exports a function that focuses a particular browser window.
//
// Functions in this file:
//   focusWindow(windowName)
//
// MODIFY WITH CARE - THIS FILE MIGHT BE LINKED TO BY MANY PROJECTS
//
// Created by zaz@sri.com.
// Last modified by zaz@sri.com, 9/21/01.

// focusWindow
// -----------
// Given the name of a window, calls focus on that window, bringing it to the
// front. Applying new window features to the window when it is focused
// is optional.  Note that if the window does not already exist, a new blank
// window will be opened.
//
// Note: According to the documentation for Javascript 1.2, the 
// third parameter of the window.open method, "features", is optional.  If not
// specified, the window should have all the standard features.  This seems to
// be true for Netcape/IE for PC as well as Netscape for Mac, but on IE for Mac,
// the window instead seems to have no features, as if '' was passed in as the 
// value for features.  So when features is NOT specified to focusWindow, a 
// constant turning all the standard features on is passed to window.open as 
// the value of features.
//
// windowName: the name of the window to focus
// windowFeatures: window features to be applied (optional)

function focusWindow(windowName, windowFeatures)
{
  var featuresOn = "directories=yes,location=yes,menubar=yes,resizable=yes,scrollbars=yes,status=yes,toolbar=yes";
  if (windowFeatures != null) {
    var windowObj = window.open('', windowName, windowFeatures);
  } else {
    var windowObj = window.open('', windowName, featuresOn);
  }
  windowObj.focus();
}