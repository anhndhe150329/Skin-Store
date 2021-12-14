/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entity.Bill;
import entity.Skin;
import fu.prj301.project.SkinDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class CartShow extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
                HttpSession session = request.getSession();
                SkinDAO skdao = new SkinDAO();
                int size=0;   
                int id = (int) session.getAttribute("userId");
                try {
                    size=skdao.billCount(id);
                    Bill bill = skdao.getCart(id,size);
                    double cost=0;
                    List<Skin> skin = new ArrayList<Skin>();
                    for (int i = 0; i < bill.getStock_id().length; i++) {
                        skin.add(skdao.getSkinByStock_id(bill.getStock_id()[i]));
                        cost += skdao.getSkinByStock_id(bill.getStock_id()[i]).getPrice();
                    }
                    String pageind = request.getParameter("pageindex");
                    if (pageind == null) {
                        pageind = "1";
                    }
                    int pageindex = Integer.parseInt(pageind);
                    int pagenum = bill.getStock_id().length;
                    int pagesize = 12;
                    int endpage = pagenum / pagesize;
                    if (pagenum % pagesize != 0) {
                        endpage++;
                    }
                    int x = 0;
                    int y = 0;
                    if (pageindex < 3 && endpage > 4) {
                        x = 1;
                        y = 5;
                    } else if (endpage < 5) {
                        x = 1;
                        y = endpage;
                    } else if (pageindex > endpage - 3) {
                        x = endpage - 4;
                        y = endpage;
                    } else {
                        x = pageindex - 2;
                        y = pageindex + 2;
                    }
                    request.setAttribute("y", y);
                    request.setAttribute("x", x);
                    request.setAttribute("url", "CartControl");
                    request.setAttribute("list", skin);
                    request.setAttribute("pageindex", pageindex);
                    request.setAttribute("cost", cost);
                    
                } catch (Exception e) {
                }
                request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
