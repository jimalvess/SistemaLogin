<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Limpar sess�o</title>
</head>
<body>

	<% //Limpando a sess�o, caso algu�m coloque o logado.jsp na barra de endere�o:
		session.removeAttribute("usuarioAutenticado");
		//Redirecionando o usu�rio que tentou para a p�gina de login:
		response.sendRedirect("login.jsp");
	%>

</body>
</html>