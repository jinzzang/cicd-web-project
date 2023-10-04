<%@ page isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
    <meta charset="utf-8">
<body>
    <h1> 조진호 </h1>
    <h1> 머야 왜 안되는거야 </h1>
    <h1> 머야 왜 되는거야 </h1>
    <hr>
    <h2>It's working on Tomcat server(9.0.65)</h2>
    <hr>
    <h1>${msg}</h1>
    <h1>Hi, there (updated by dowon)</h1>
    <h2>Today is <fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></h2>
    <h3>Version: 3.1</h3>
</body>
</html>
