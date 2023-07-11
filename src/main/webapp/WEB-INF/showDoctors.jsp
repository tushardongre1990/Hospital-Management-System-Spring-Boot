<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<meta content="" name="description">
<meta content="" name="keywords">
    <title>Doctors</title>
</head>
<body>
    <h1>Doctors</h1>
    <table class="mt-5">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Specialty</th>
        </tr>
        <c:forEach var="doctor" items="${doctors}">
            <tr>
                <td>${doctor.name}</td>
                <td>${doctor.email}</td>
                <td>${doctor.specialty}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
