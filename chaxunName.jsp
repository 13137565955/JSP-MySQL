<%@page contentType ="text/html;charset = UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<HTML>
<head>
		<meta http-equil="Content-Type" content="text/html:charset=UTF-8">
		<title>查询数据库</title>
</head>
<BODY bgcolor="pink">
				<h2 align="center">你的查询结果如下</h2>					
				<hr>					
				<table border="1" bgcolor="yellow" align="center">
	 			  <tr>
	 			 	<th width="80" align="center">学号</th>
	 			    <th width="80" align="center">姓名</th>
	 			    <th width="80" align="center">性别</th>
	 			    <th width="80" align="center">年龄</th>
	 			    <th width="80" align="center">出生地</th>
	 			    <th width="80" align="center">功能</th>	 			    
	 			    </tr>	 		
 			<% String name =new String(request.getParameter("name").getBytes("ISO-8859-1")); 			 			    			   
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
				String sql="select *from student where 姓名 like'"+name+"%' order by 学号";
				rs=stmt.executeQuery(sql);									
					while (rs.next()){
						%>					
						<tr>
							<td><%=rs.getString("学号")%></td>
			 			    <td><%=rs.getString("姓名")%></td> 	 			    
			 			    <td><%=rs.getString("性别")%></td>
			 			    <td><%=rs.getString("年龄")%></td>
			 			    <td><%=rs.getString("出生地")%></td>
			 			    <td>		 			     
							<a href="xiugai.jsp?id=<%out.print(rs.getString(1));%>">修改 &nbsp;&nbsp;
			 			    <a href="shanchu.jsp?id=<%out.print(rs.getString(1));%>">删除</a> 						 
			 			</tr>
			 			<%}								
				rs.close();
				con.close();%>
				</table>
				<hr>
				<center>	
				<a href="shujuku.jsp">点击返回数据库查看</a>	</center>										
</BODY></HTML>
