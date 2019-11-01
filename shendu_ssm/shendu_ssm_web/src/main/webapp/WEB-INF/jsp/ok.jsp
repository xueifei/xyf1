<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>信息页</title>
</head>
<body>
    <h1>用户信息页</h1>
    <h1>${mess}</h1>
    <a href="${pageContext.request.contextPath}/user/add">新增</a>
    <table>
        <tr>
            <td>Id</td>
            <td>姓名</td>
            <td>生日</td>
            <td>性别</td>
            <td>地址</td>
            <td>删除</td>
            <td>更改</td>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.name}</td>
                <td><fmt:formatDate value="${u.birthday}" pattern="yyyy/MM/dd"></fmt:formatDate></td>
                <td>${u.sex}</td>
                <td>${u.address}</td>
                <td><a href="../user/delete?id=${u.id}">删除</a></td>
                <td><a href="../user/selectid?id=${u.id}">更改</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>