<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>유희왕 카드 도감</title>
  <link rel="stylesheet" href="${path}/resources/css/my.css" type="text/css">
    <script>
        function trueOrFalse(abc){
            var trueFalse = abc;
            if (trueFalse == 0){
                document.write("X") ;

            }
            else {
                document.write("0");
            }
        }

        function delete_ok(id){
            var a = confirm("정말로 삭제하시겠습니까?");
            if(a) location.href='deleteok/' + id;
        }

        function bg_color(abc, def){
            if(abc == 0){
                document.getElementById(def).style.backgroundColor='#FFE5E5';
                document.getElementById(def).style.color='#FFFFFF';

            }
            else {
                document.getElementById(def).style.backgroundColor = '#E8F3DA';
                document.getElementById(def).style.color = '#FFFFFF';
            }
        }
    </script>
    <style>
        body {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://c.wallhere.com/images/7e/e8/a4f5a11a4d0233b032829fdc1e09-1928639.jpg!s1');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #ffffff; /* 전체 텍스트 색상을 흰색으로 설정 */
        }

        a, label, input[type="submit"], .table th, .table td {
            color: #ffffff; /* 링크, 레이블, 버튼, 테이블 텍스트 색상을 흰색으로 설정 */
        }

        .table {
            width: 100%;
            max-width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: rgba(0, 0, 0, 0.5); /* 테이블 배경색을 반투명 검정색으로 설정 */
        }

        .table th, .table td {
            padding: 12px; /* 셀의 패딩을 늘려 셀의 크기를 더 크게 만듦 */
        }

        .table th {
            background-color: rgba(0, 0, 0, 0.7); /* 테이블 헤더 배경색을 더 어둡게 설정 */
        }

        .table tbody tr:hover {
            background-color: rgb(100, 100, 97); /* 호버 시 배경색 변경 */
        }

        input[type="button"]:hover, a:hover {
            background-color: #b4a0a0; /* 호버 버튼 배경색 변경 */
        }

        input[type="text"], input[type="password"], .form-control {
            background-color: rgba(255, 255, 255, 0.8); /* 입력 필드 배경 반투명 흰색으로 설정 */
            color: #000000; /* 입력 필드 텍스트 검정색으로 설정 */
            border-radius: 4px; /* 입력 필드 둥근 모서리 설정 */
        }
    </style>
</head>
<div>
    <a href="login/logout" style="color: #222222; text-decoration: none">Log Out</a>
</div>

<body>

<div id="header">
  <a id="homeTitle" href="list" style="color: #225699">유희왕 카드 도감</a>
</div>

<div id="input">
    <input type="text">
    <input type="button" value="Search" id="search">
    <input type="button" value="Add" id="add" onclick="location.href = 'add'">
</div>

<div id="tablediv">
    <table class="table">
        <thead>
            <tr>
              <th>등록 번호</th>
              <th>&nbsp;레벨&nbsp;</th>
              <th>&nbsp;이름&nbsp;</th>
              <th>속성</th>
              <th>공격 능력</th>
              <th>방어 능력치</th>
              <th>몬스터 카드 여부</th>
              <th>효과 카드 여부</th>
              <th>삭제&nbsp;</th>
              <th>상세</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="u">
            <tr>
              <td id="${u.registerNum}"><a href="editform/${u.registerNum}" style="color: #222222; text-decoration: none">${u.registerNum}</a></td>
              <td>${u.cardLevel}</td>
              <td>${u.cardName}</td>
              <td>${u.cardType}</td>
              <td>${u.cardAtk}</td>
              <td>${u.cardDef}</td>
              <td><script>trueOrFalse(${u.isMonsterCard});</script></td>
              <td><script>trueOrFalse(${u.isEffectCard});</script><script>bg_color(${u.isEffectCard}, ${u.registerNum})</script></td>
              <td><a href="javascript:delete_ok('${u.registerNum}')" style="color: #222222; text-decoration: none">Delete</a></td>
              <td><a href="view/${u.registerNum}" style="color: #222222; text-decoration: none">상세보기</a></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>

</div>
</body>
</html>


