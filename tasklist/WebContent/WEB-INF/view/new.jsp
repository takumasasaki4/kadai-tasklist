<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <h2>タスク新規作成ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/cre">
            <label for="content">タスク名</label><br />
                <input type="text" name="content" value="${task.content}" />
                <br /><br />

                <input type="hidden" name="_token" value="${_token}" />
                <button type="submit">確定</button>
        </form>

        <p><a href="${pageContext.request.contextPath}/ind">一覧に戻る</a></p>
