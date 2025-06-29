<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>이메일 수정</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="form-container">
        <div class="form-title">이메일 수정</div>

        <form action="controller/editEmailAction.jsp" method="post">
            <div class="form-group">
                <label for="newEmail">새 이메일</label>
                <input type="email" name="newEmail" id="newEmail" required>
            </div>

            <div class="form-group">
                <label for="currentPassword">현재 비밀번호</label>
                <input type="password" name="currentPassword" id="currentPassword" required>
            </div>

            <div class="button-row">
                <button type="submit" class="ButtonAreaButton1">이메일 변경</button>
                <a href="mypage.jsp" class="ButtonAreaButton2" style="text-align: center; padding: 6px 12px; display: inline-block; line-height: 30px;">취소</a>
            </div>
        </form>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
