<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="css/css.css">
</head>
<body>
      <form action="" method="post">
           影片名称:<input type="text" name="mname" value="${movie.mname }"><br><br>
           导演:<input type="text" name="pname"  value="${movie.pname }"><br><br>
           电影年代:<input type="text" name="mtime"  value="${movie.mtime }"><br><br>
           上映时间:<input type="text" name="startdate"  value="${movie. startdate}"><br><br>
           价格:<input type="text" name="mprice"  value="${movie.mprice }"><br><br>
           电影时长:<input type="text" name="mlong" value="${movie.mlong }"><br><br>
          <a href="queryMovie"><input type="button" value="返回影片"></a> 
      </form>
</body>
<script type="text/javascript">
       
</script>
</html>