<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>数据库的添加</title>
</head>
<body bgcolor="pink">
		      <form action="tianjiayunxing.jsp" method="post" >
		      <h2 align="center">输入要添加的学生信息</h2>
		      <hr>
		      <table border="0" width="220" align="center">
		      <tr>
		            <td>学号:</td>
		            <td><input type="text" name="idcard"></td>
		        </tr> 
		        <tr>
		            <td>姓名:</td>
		            <td><input type="text" name="name"></td>
		        </tr> 
		        <tr>
		            <td>性别:</td>
		            <td><input type="text" name="sex"></td>
		        </tr>  
		         <tr>
		            <td>年龄:</td>
		            <td><input type="text" name="age"></td>
		        </tr>   		          
		         <tr>
		            <td>出生地:</td>
		            <td><input type="text" name="address"></td>
		        </tr>     
		        <tr align="center">
		        		<td colspan="2" align="center">
		        		   <input name="sure" type="submit" value="提交">		        		   
		        		   <input name="clear" type="reset" value="清除">
		        		 </td>
 				</tr>
 			</table>
 		  <hr><center>	
 			<h3 align="center">如果不想添加学生请点击返回数据库</h3>	
				<a href="shujuku.jsp">返回数据库</a>	</center>		
 </form></body></html>