<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

        <h2>${task.content} の詳細ページ</h2>

        <p>タスク名　[<c:out value="${task.content}" />]</p>
        <p>作成日時　[<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />]　
           更新日時　[<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />]</p>

        <p>タスクid　[<c:out value="${task.id}" />]</p>

        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集</a></p>

        <p><a href="${pageContext.request.contextPath}/ind">一覧に戻る</a></p>