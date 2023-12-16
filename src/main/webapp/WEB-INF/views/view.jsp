<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL 태그 라이브러리 추가 -->
<html>
<head>
  <title>유희왕 카드 상세 정보</title>
  <style>
    body {
      background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://c.wallhere.com/images/7e/e8/a4f5a11a4d0233b032829fdc1e09-1928639.jpg!s1');
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
      color: #ffffff;
    }
    .center-container {
      width: 70%; /* 적당한 너비 설정 */
      margin: auto; /* 자동 마진을 사용하여 중앙 정렬 */
      background-color: rgba(0, 0, 0, 0.6); /* 배경색 추가 */
      padding: 20px; /* 패딩 */
      border-radius: 10px; /* 둥근 모서리 */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* 그림자 효과 */
    }
    .button-container {
      text-align: center; /* 버튼을 중앙에 정렬 */
    }
    a, label, input[type="submit"], .table th, .table td {
      color: #ffffff;
    }
    h1 {
      text-align: center;
      color: #E8E8E8;
    }
    button[type="button"] {
      background-color: #e3dcdc;
      color: #2c2b2b;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
      transition: all 0.3s ease;
      display: inline-block;
    }

    p {
      background-color: rgba(255, 255, 255, 0.2);
      padding: 10px;
      border-radius: 5px;
      width: 70%;
      margin: 10px auto;
    }

  </style>
</head>
<body>
<h1>이름: ${card.cardName}</h1>
<p>등록 번호: ${card.registerNum}</p>
<p>레벨: ${card.cardLevel}</p>
<p>속성: ${card.cardType}</p>
<p>공격 능력치: ${card.cardAtk}</p>
<p>방어 능력치: ${card.cardDef}</p>
<p>몬스터 카드 여부: <c:choose>
  <c:when test="${card.isMonsterCard}">O(몬스터 카드)</c:when>
  <c:otherwise>X</c:otherwise>
</c:choose>
</p>
<p>효과 카드 여부: <c:choose>
  <c:when test="${card.isEffectCard}">O(효과 카드)</c:when>
  <c:otherwise>X</c:otherwise>
</c:choose>
</p>
<button type="button" onclick="location.href='../list'">목록으로</button>
</body>
</html>