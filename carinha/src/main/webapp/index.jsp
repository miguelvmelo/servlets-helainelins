<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, width=device-width, user-scalable=no">
<link href="resources/css/main.css" rel="stylesheet">

<title>Carinha JSP</title>
</head>
<body>
	<header>
      <div class="linha">
        <div class="small-12 texto-centralizado coluna">
          <h1>[Carinha Servlet]</h1>
        </div>
      </div>
      <div class="linha">
        <div class="small-12 medium-8 small-center texto-centralizado coluna">
          <p>Me passa um token que eu gero uma carinha para você</p>
        </div>
      </div>
      <div class="linha">
      	<form action="/carinha" method="post">
        <div class="small-12 medium-10 large-12 small-center coluna">
          <div class="linha">
            <div class="small-11 small-only-center medium-6 coluna">
              <div class="dados">
                <div class="input-container name">
                  <label>token</label>
                  <input id="nome" name="nome" type="text" placeholder="enter text" value="insere aqui um token" maxlength="32" class="edit">
                </div>
                <div class="input-link" >
                  <input type="submit" class="button" value="Gera" />
                </div>
              </div>
            </div>
            <div class="small-12 medium-6 texto-centralizado coluna">
              <div class="container">
              <c:choose>
              	<c:when test="${not empty avatar}">
	              	<img id="demo-image" src="data:image/jpg;base64,${avatar}" style="width: 200px; height: 200px; border-radius: 37%" alt="demo-image">
              	</c:when>
              	<c:otherwise>
	                <img id="demo-image" src="resources/images/carinha.png" style="width: 200px; height: 200px; border-radius: 37%" alt="demo-image">
              	</c:otherwise>
              </c:choose>
              </div>
            </div>
          </div>
        </div>
		</form>
      </div>
    </header>
</body>
</html>