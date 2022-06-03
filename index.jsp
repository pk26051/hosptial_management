<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
*
{
  padding:0px;
  margin:0px;
}

    #container
    {
      
      height:500px;
      width:600px;
      border: 3px solid #73AD21;
      padding: 10px;
      margin-left:460px;
      margin-top:20px;
      
    }
   input[type=text]
   {
  width: 95%;
  padding: 10px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  }
  input[type=submit]
  {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
  }
  
    


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hospitalwebpage</title>
</head>
<body style="background-color:powderblue;">
<h1 style="text-align:center; ">Lifeline Hospital & Research Center</h1>
<p style="text-align:center; color:red; text-decoration: underline;">An Advance Multi Speciality Hospital</p>
<div id="container">
<h3>Patient Entry Page-</h3>
<form method="post">
 Patient ID:
 <input type="text" name="txtid">
 <br>
 Patient Name:
 <input type="text" name="txtname">
 <br>
 Patient Disease:
 <input type="text" name="txtdisease">
 <br>
 Patient Blood Group:
 <input type="text" name="txtbloodgroup">
 <br>
 <input type="submit" name="bt" value="ADD">


</form>
<a href="showdata.jsp">SHOW ALL</a>
</div>
<br>
  <%
     if("ADD".equals(request.getParameter("bt")))
     {
    	 String pid=request.getParameter("txtid");
    	 String pname=request.getParameter("txtname");
    	 String pdisease=request.getParameter("txtdisease");
    	 String pbloodgroup=request.getParameter("txtbloodgroup");
     
  Connection con;
  PreparedStatement ps;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://b5d6o3z2iynhd2uogceq-mysql.services.clever-cloud.com:3306/b5d6o3z2iynhd2uogceq","uq7fggq4zzaw12q4","WAAgM4UmrB41upar6FUz");
  ps=con.prepareStatement("INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_disease`, `patient_blood_group`) VALUES (?,?,?,?);");
  ps.setString(1,pid);
  ps.setString(2,pname);
  ps.setString(3,pdisease);
  ps.setString(4,pbloodgroup);
  
  ps.executeUpdate();
  
  out.println("Record Added");
  
 }
  %>

</body>
</html>