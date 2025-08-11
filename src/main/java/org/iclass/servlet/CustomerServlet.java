package org.iclass.servlet;

import java.io.IOException;

import org.iclass.dao.TblCustomerDao;
import org.iclass.dto.CustomerDto;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Customers")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CustomerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TblCustomerDao dao = new TblCustomerDao();
		String customer_Id = request.getParameter("customer_Id");
		CustomerDto dto = dao.selectByPk(customer_Id);
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("customer/ctmlist.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
