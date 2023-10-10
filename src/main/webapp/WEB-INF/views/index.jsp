<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <html>
        <meta charset="utf-8">

        <body>
            <h1> 조진호 </h1>
            <h2> Github trigger</h2>
            <h2> Jeus가 되려나? 1:35:30</h2>
            <h1>${msg}</h1>
            <h1>Hi, there (updated by dowon)</h1>
            <h2>Today is
                <fmt:formatDate value="${today}" pattern="yyyy-MM-dd" />
            </h2>
            <h3>Version: 3.1</h3>
        </body>

        </html>
