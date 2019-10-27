<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script  type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<body>
<%-- 权限配置 --%>
<a href="admin/listUser">权限配置</a><span class="desc">(权限配置，只允许 admin 访问)</span><br><br>

<c:if test="${empty subject.principal}">
    <a href="login">登录</a><br><br>
</c:if>
<c:if test="${!empty subject.principal}">
    <span class="desc">你好，${subject.principal}，</span>
    <a href="doLogout">退出</a><br><br>
</c:if>

<a href="listProduct">查看产品</a><span class="desc">(要有查看产品权限, zhang3有，li4 有)</span><br>
<a href="deleteProduct">删除产品</a><span class="desc">(要有删除产品权限, zhang3有，li4 有)</span><br>
<a href="deleteOrder">删除订单</a><span class="desc">(要有删除订单权限, zhang3有，li4没有)</span><br>
<div>
    <form enctype="multipart/form-data" id="makes" method="POST" action="${pageContext.request.contextPath}/attendance/upload">
        <span>选择文件</span><br>
        <input type="file" id="excelFile" name="file"><br>
        <button type="submit" οnclick="importExc()" >导入</button>
    </form>
    <p>${result}</p>
</div>
</body>
</html>
<script>
    function importExc() {
        var formData = new FormData();
        //检验导入的文件是否为Excel文件
        var uploadFile = document.getElementById("excelFile").value;
        formData.append("excelFile",$("#excelFile")[0].files[0]);
        formData.append("name",uploadFile);
        if(uploadFile == null || uploadFile == ''){
            layer.msg("请选择要上传的Excel文件");
            return false;
        }else{
            var fileExtend = uploadFile.substring(uploadFile.lastIndexOf('.')).toLowerCase();
            if(fileExtend == '.xls'){
            }else{
                layer.msg("文件格式需为'.xls'格式");
                return false;
            }
        } $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath }/user/upload.do",
            data:formData,
            // 告诉jQuery不要去处理发送的数据
            processData : false,
            // 告诉jQuery不要去设置Content-Type请求头
            contentType : false,
            beforeSend:function(){
                console.log("正在进行，请稍候");
            },
            success:function (data) {
                if(data=="1"){
                    layer.msg("导入成功");
                }else{
                    layer.error("导入失败");
                }
            }
        })
    }
</script>