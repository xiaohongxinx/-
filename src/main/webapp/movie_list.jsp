<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="css/css.css">
</head>
<body>
   <input type="button" value="查询影片" id="checkmovie">
   <form>
    <table id="check">
      <tr>
        <td style="width: 50%;">
          影片名称:<input type="text" name="mname" value="${map.mname}"><br><br>
          影片导演:<input type="text" name="pname" value="${map.pname}"><br><br>
          影片年代:<input type="text" name="mtime" value="${map.mtime}"><br><br>
        </td>
        <td style="width: 50%;">
           上映时间:<input type="text" name="startdate" value="${map.startdate}">~
              <input type="text" name="enddate" value="${map.enddate}"><br><br>
             影片票价:<input type="text" name="startmprice" value="${map.startmprice}">~
               <input type="text" name="endprice" value="${map.endprice}"><br><br>
             影片时长:<input type="text" name="smlong" value="${map.smlong}">~
              <input type="text" name="emlong" value="${map.emlong}">
        </td>
      </tr>
        <tr>
          <td colspan="10">
            <input type="submit" value="查询">
            <input type="submit" value="重置">
          </td>
        </tr>
     
   </table>
   </form>
   
     
    <table>
      <tr>
        <td>
          <h3>
        <input type="text" name="order" value="${map.order}" readonly hidden>
        <input type="text" name="by" value="${map.by}" >
     </h3>
        </td>
      </tr>
       <tr>
         <td>请选择</td>
         <td>影片名</td>
         <td>导演</td>
         <td>票价</td>
         <td>上映时间<a href="#" id="moviestart">↕</a></td>
         <td>时长<a href="#" id="time">↕</a></td>
         <td>类型</td>
         <td>年代<a href="#" id="year">↕</a></td>
         <td>区域</td>
         <td>状态</td>
         <td>操作</td>
       </tr>
       <c:forEach items="${list}" var="list">
          <tr>
            <td>
            <input type="checkbox" value="${list.id}" class="xq">
           </td>
            <td>${list.mname}</td>
            <td>${list.pname}</td>
            <td>${list.mprice}</td>
            <td>${list.startdate}</td>
            <td>${list.mlong}</td>
            <td>${list.mtype}</td>
            <td>${list.mtime}</td>
            <td>${list.marea}</td>
            <td>
              <c:if test="${list.mstaus==1}">正在热映</c:if>
              <c:if test="${list.mstaus==0}">已经下架</c:if>
            </td>
            <td align="center">
               <input type="button" value="删除" onclick="del(${list.id})">
               <a href="queryById?id=${list.id}"><input type="button" value="详情"></a>
               <input type="button" value="编辑">
               <c:if test="${list.mstaus==1}">
                  <input type="button" value="上架" onclick="down(${list.mstaus},1)">
               </c:if>
               <c:if test="${list.mstaus==0}">
                  <input type="button" value="下架" onclick="down(${list.mstaus},0)">
               </c:if>
            </td>
          </tr>
       </c:forEach>
       
       <tr>
       <td colspan="11">
               <input type="button" value="全选" onclick="qx()">
               <input type="button" value="全不选" onclick="qbx()">
               <input type="button" value="反选" onclick="qx()">
               <input type="button" value="批量删除" onclick="ps()">
            </td>
       </tr>
       <tr>
         <td colspan="11">
             <a href="?pageNum=1">首页</a>
             <a href="?pageNum=${page.pageNum-1<1?page.pageNum:page.pageNum-1}">上一页</a>
             <a href="?pageNum=${page.pageNum+1>page.pages?page.pageNum:page.pages}">下一页</a>
             <a href="?pageNum=${page.pages}">尾页</a>
         </td>
       </tr>
    </table>
</body>
<script type="text/javascript">
     //全选
     function qx(){
    $(".xq").each(function(){
        	 this.checked=true;
         })
     }
     //全不选
     function qbx(){
    $(".xq").each(function(){
        	 this.checked=false;
         })
     }
     //反选
     function fx(){
    $(".xq").each(function(){
        	 this.checked=!this.checked;
         })
     }
     //删除
     function del(id){
    	 $.post("delete",{"id":id},function(data){
    		 alert("删除成功！");
    		 location="queryMovie";
    	 },"text")
     }
     
     //批量删除
     function ps(){
    	 var ids=$(".xq:checked").map(function(){
    		 return $(this).val();
    	 }).get().join(",");
    	 
    	 $.post("deleteAll",{"ids":ids},function(data){
    		 alert("批量删除成功!");
    		 location="queryMovie";
    	 },"text")
     }
     
     //判断是否下架
     function down(mstaus,id){
    	$("/updateStaus",{"mstaus":mstaus,"id":id},function(data){
    		 location.reload();
    	},"text")
     }
     //查询影片
     $("#checkmovie").toggle(function(){
    	 $("#check").css("display","block")
     },function(){
    	 $("#check").css("display","none")
     });
     
     //全选以及全不选
      $("#ck").toggle(function(){
    	  $(".xq").attr("checked",true);
      },function(){
    	  $(".xq").attr("checked",false);
      })
      
      //时长
      $("#moviestart").click(function(){
    	  if($("[name=by]").val()==1){
    		  location="queryMovie?order=startdate&by=0";
    	  }else{
    		  location="queryMovie?order=startdate&by=1";
    	  }
      });
          
</script>
</html>