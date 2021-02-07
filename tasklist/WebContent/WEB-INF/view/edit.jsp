<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <h2>${task.content} の編集</h2>

        <form method="POST" action="${pageContext.request.contextPath}/up">
        <label for="content">タスク名</label><br />
                <input type="text" name="content" value="${task.content}" />
                <br /><br />

                <input type="hidden" name="_token" value="${_token}" />
                <button type="submit">確定</button>
        </form>

        <p><a href="#" onclick="confirmDestroy();"><button type="submit">このタスクを削除する</button></a></p>
        <form method="POST" action="${pageContext.request.contextPath}/des">
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
        function confirmDestroy() {
            if(confirm("削除しますか？")) {
                document.forms[1].submit();
            }
        }
        </script>


        <p><a href="${pageContext.request.contextPath}/ind">一覧に戻る</a></p>