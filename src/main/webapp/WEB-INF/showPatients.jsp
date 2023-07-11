<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patients</title>
</head>
<body>
    <h1>Patients</h1>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
        </tr>
        <c:forEach var="patient" items="${patients}">
            <tr>
                <td>${patient.name}</td>
                <td>${patient.email}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
