<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.codegym.Customers" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer</title>
</head>
<body>
<%
    List<Customers> customerList = new ArrayList<>();
    Customers customers1 = new Customers("A", "1-1-2019", "BacNinh", "ảnh 1");
    Customers customers2 = new Customers("B", "43-2-2019", "BacNinh", "ảnh 2");
    Customers customers3 = new Customers("C", "3-5-2019", "HaNoi", "ảnh 3");
    Customers customers4 = new Customers("D", "602-2019", "NhaTrang", "ảnh 4");
    customerList.add(customers1);
    customerList.add(customers2);
    customerList.add(customers3);
    customerList.add(customers4);
    pageContext.setAttribute("customerList", customerList);
%>
<form>
    <h1>Danh sách khách hàng</h1>
    <table border="1px solid red">
        <tr>
            <td height="50px" width="150px">Tên</td>
            <td height="50px" width="50px">Ngày Sinh</td>
            <td height="50px" width="50px">Địa Chỉ</td>
            <td height="50px" width="50px">Image</td>
        </tr>
        <c:forEach var="customers" items="${customerList}">
            <tr>
                <td><c:out value="${customers.name}"/></td>
                <td><c:out value="${customers.birthday}"/></td>
                <td><c:out value="${customers.address}"/></td>
                <td><c:out value="${customers.image}"/></td>
            </tr>
        </c:forEach>

    </table>
</form>
</body>
</html>
