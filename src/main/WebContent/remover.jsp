<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Limpar sessão</title>
</head>
<body>

	<% //Limpando a sessão, caso alguém coloque o logado.jsp na barra de endereço:
		session.removeAttribute("usuarioAutenticado");
		//Redirecionando o usuário que tentou para a página de login:
		response.sendRedirect("login.jsp");
	%>

</body>
</html>