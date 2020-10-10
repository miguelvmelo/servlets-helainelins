package br.upe.piii.carinha.servlet;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Base64;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.client.RestTemplate;

@WebServlet(
		name = "CarinhaServlet",
		urlPatterns = {"/carinha"}
		)
public class CarinhaServlet extends HttpServlet {

	private static final long serialVersionUID = -34141500136803947L;

	@Autowired
	RestTemplate restTemplate;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		byte[] imagem = buscarAvatar(req);
		
		resp.setContentType("image/png");
		
		ByteArrayInputStream bis = new ByteArrayInputStream(imagem);
		BufferedImage img = ImageIO.read(bis);
		
		ImageIO.write(img, "png", resp.getOutputStream());
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		byte[] imagem = buscarAvatar(req);
		
		String avatarBase64 = Base64.getEncoder().encodeToString(imagem);
		
		req.setAttribute("avatar", avatarBase64);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	private byte[] buscarAvatar(HttpServletRequest req) {
		String nome = req.getParameter("nome");
		
		String url = "https://api.adorable.io/avatars/200/" + nome + ".png";
		return this.restTemplate.getForObject(url, byte[].class);
	}
	
}
