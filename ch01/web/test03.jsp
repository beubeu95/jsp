<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자료조사</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <form action="request.jsp" class="frm" method="post">
        <table class="table" id="tb1">
            <tr>
                <th><label for="id">아이디</label> </th>
                <td><input type="text" name="id" id="id" required autofocus></td>
            </tr>
            <tr>
                <th><label for ="year">출생년도</label></th>
                <td><input type="number" name="year" id="year" min="1970" max="2023" value="1998" step="1" required></td>
            </tr>
            <tr>
                <th><label for="name">이름</label></th>
                <td><input type="text" name="name" id="name" required></td>
            </tr>
            <tr>
                <th><label>좋아하는 동물</label></th>
                <td>
                    <input type="checkbox" name="pet" id="pet1" value="강아지"><label for="pet1">강아지</label>
                    <input type="checkbox" name="pet" id="pet2" value="고양이"><label for="pet2">고양이</label>
                    <input type="checkbox" name="pet" id="pet3" value="송아지"><label for="pet3">송아지</label>
                    <input type="checkbox" name="pet" id="pet4" value="수달"><label for="pet4">수달</label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="값 전송" class="btn btn-danger">
                    <input type="reset" value="취소" class="btn btn-primary">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>