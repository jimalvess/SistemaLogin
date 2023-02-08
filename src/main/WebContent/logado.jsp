<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Logado</title>
</head>
<body>

	<% //recupera o nome pela sess�o, enviado l� do LoginControllers.java:
	String nomeUsuario = (String) session.getAttribute("usuarioAutenticado");
	
	//Se n�o tiver nenhum login, 
	//Ou seja, a pessoa colocou o logado.jsp direto
	//na barra de endere�o, tem que n�o deixar:
		
	if (nomeUsuario == null) {
		throw new ServletException("Nenhum usu�rio logado.");
	}
	%>

	<h2>Seja bem-vindo, <%=nomeUsuario%></h2>

<!-- Limpa a sess�o: -->
	<a href="remover.jsp">Sair</a>
	
	<hr>
	<br/>
	<h2>Logado com Sucesso!!</h2>
	<hr>
	<br/>
	
	<!-- Esta action manda pro CadastroLoginServlet, que faz a inser��o no banco: -->
	<form name="formLogin" action="cadastrarLogin.jsp" method="post">
	
				<input type="submit" value="Cadastrar"/>
		
	</form>

</body>
</html>