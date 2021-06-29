<%@page contentType ="text/html;charset = UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<HTML>
<head>
		<meta http-equil="Content-Type" content="text/html:charset=UTF-8">
		<title>删除数据库</title>
</head>
<BODY bgcolor="pink">
 			<% String  idcard =request.getParameter("id");			 	  
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
				String sql1="delete from student where 学号='"+idcard+"'";
				stmt.executeUpdate(sql1);
				con.close();%>
				<center>	
				<h1 align="center">已删除学生信息</h1>	
				<a href="shujuku.jsp"><h2>点击返回数据库查看</h2></a>	</center>										
</BODY></HTML>
