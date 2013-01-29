<%@ Control Language="C#" ClassName="AuthControl" %>
<%if(Session["LoggedIn"]!="true")
  { %>
  <%Response.Redirect("../LogIn.aspx"); %>
<%} %>
