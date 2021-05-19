package yyj;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Response01")
public class Response01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 输出的内容类型为jpg图片
		response.setContentType("image/jpeg");

		// 在内存中创建一张图片
		BufferedImage image = new BufferedImage(65, 20, BufferedImage.TYPE_INT_BGR);

		Graphics g = image.getGraphics();

		// 设置背景
		g.setColor(Color.white);
		g.fillRect(0, 0, 65, 20);

		g.setColor(Color.black);
		g.setFont(new Font(null, Font.BOLD, 25));

		Random r = new Random();
		int i = r.nextInt(8999) + 1000;
		
		// 验证码的值
		String vcode = String.valueOf(i);
		
		//把vcode放到session中去
		HttpSession session = request.getSession();
		
		session.setAttribute("verf", vcode);
		
		g.drawString(vcode , 5, 20);

		// 获取response的输出流
		OutputStream os = response.getOutputStream();

		ImageIO.write(image, "jpg", os);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
