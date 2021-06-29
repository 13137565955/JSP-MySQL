<%@ page contentType ="text/html;charset = UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<HTML>
<head>
		<meta http-equil="Content-Type" content="text/html:charset=UTF-8">
		<title>添加数据库</title>
</head>
<BODY bgcolor="pink">				
 			<hr>			
 			<br>
 			<% 	String idcard =new String(request.getParameter("idcard").getBytes("ISO-8859-1"));	
 				String name =new String( request.getParameter("name").getBytes("ISO-8859-1"));	
 				String sex = new String( request.getParameter("sex").getBytes("ISO-8859-1"));
 				String age = new String( request.getParameter("age").getBytes("ISO-8859-1"));
 				String address = new String( request.getParameter("address").getBytes("ISO-8859-1"));
 			 try { Class.forName("com.mysql.jdbc.Driver");}
				catch(ClassNotFoundException e) {
				out.print(e);
				}
				Connection con;
				Statement stmt;
				ResultSet rs;
				 String uri=
				"jdbc:mysql://localhost:3306/student?" +
				"user=root&password=root&characterEncoding=utf-8";
				con = DriverManager.getConnection(uri);
				stmt = con.createStatement();
				String sql="insert into student values('"+idcard+"','"+name+"','"+sex+"',"+age+",'"+address+"')";
				stmt.executeUpdate(sql);
				con.close();
				%>	
				<center>
				<h1 align="center">已添加学生信息</h1>
				<a  href="shujuku.jsp"><h2>点击返回数据库查看</h2></a> </center>					 													
</BODY></HTML>
