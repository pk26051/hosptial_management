<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con;
PreparedStatement ps;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://b5d6o3z2iynhd2uogceq-mysql.services.clever-cloud.com:3306/b5d6o3z2iynhd2uogceq","uq7fggq4zzaw12q4","WAAgM4UmrB41upar6FUz");
ps=con.prepareStatement("SELECT * FROM `patient`");
     rs=ps.executeQuery();
    %>
    <table width="400px" border="1px">
    <tr>
    <th>Patient ID</th>
    <th>Patient Name</th>
    <th>Patient disease</th>
    <th>Patient blood group</th>
    </tr>
    <% 
     while(rs.next())
     {
    %>
    <tr>
    <td>
    <%
    out.println(rs.getString(1));
    %>
    </td>
    <td>
    <%
    out.println(rs.getString(2));
    %>
    </td>
    <td>
    <%
    out.println(rs.getString(3));
    %>
    </td>
    <td>
    <%
    out.println(rs.getString(4));
    %>
    </td>
    </tr>
    <% 
    	 
    	 
     }

%>
</table>
</body>
</html>