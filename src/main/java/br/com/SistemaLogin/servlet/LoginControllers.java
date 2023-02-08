package br.com.SistemaLogin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.SistemaLogin.exception.InvalidUserException;


@WebServlet("/login")
public class LoginControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ValidaDadosRecebidos(req);
		RequestDispatcher rd = req.getRequestDispatcher("logado.jsp"); // vai chamar a página
		rd.forward(req, resp);

	}

	private void ValidaDadosRecebidos(HttpServletRequest req) throws ServletException {

		// Vê se os dados foram preenchidos (já tem no front, mas...)

		String nomeUsuario = req.getParameter("txtUsuario"); // nome do input do formLogin no login.jsp
		String senhaUsuario = req.getParameter("txtSenha");

		if (!nomeUsuario.trim().equals("jim") || !senhaUsuario.trim().equals("123")) {
			throw new InvalidUserException("Login ou senha inválidos!");
		}
		
		//Pra pegar a sessão e ter o nome:
		HttpSession session = req.getSession();
		//pega o nomeUsuario e seta no usuarioAutenticado:
		session.setAttribute("usuarioAutenticado", nomeUsuario);
		
	}

}

//Pra rodar:
// http://localhost:8080/SistemaLogin/login.jsp