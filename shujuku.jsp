<%@ page contentType ="text/html ;charset = UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<HTML>
<head>
		<meta http-equil="Content-Type" content="text/html:charset=UTF-8">
		<title>数据库</title>
</head>
<BODY bgcolor="pink">
 			<td>
	 			<table border="1" bgcolor="yellow" align="center">
	 			  <tr>
	 			 	<th width="80" align="center">学号</th>
	 			    <th width="80" align="center">姓名</th>
	 			    <th width="80" align="center">性别</th>
	 			    <th width="80" align="center">年龄</th>
	 			    <th width="80" align="center">出生地</th>
	 			    <th width="80" align="center">功能</th>
	 			    </tr>
			 	  </td>			
 			    <% try { Class.forName("com.mysql.jdbc.Driver");}
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
				String sql="select *from student order by 学号";				
				rs=stmt.executeQuery(sql);												
					%><center>
					<a href="tianjia.jsp"><h2>添加数据</h2></a></center>
					<FORM action = "chaxunNumber.jsp" Method ="post">
					<h3 align="center">输入学号查询数据:<Input type="text" name = "idcard" >
					<Input type= submit name= "tijiao1" value= "提交">					
					</Form>
					<FORM action = "chaxunName.jsp" Method ="post">
					<h3 align="center">输入姓名查询数据:<Input type="text" name = "name" >
					<Input type= submit name= "tijiao2" value= "提交">					
					</Form>
					<%				
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
			con.close();%>		
</table></BODY></HTML>
