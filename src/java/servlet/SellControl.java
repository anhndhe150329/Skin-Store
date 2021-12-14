/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entity.Skin;
import fu.prj301.project.SkinDAO;
import java.io.IOException;
import java.io.PrintWriter;
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
public class SellControl extends HttpServlet {

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
        String name = request.getParameter("name");
        switch (name) {
            case "sell":
                try {
                    int stock_id = Integer.parseInt(request.getParameter("stock_id"));
                    String type = request.getParameter("type");
                    Double price = Double.parseDouble(request.getParameter("price"));
                    int id = (int) session.getAttribute("userId");
                    Skin sk = skdao.getSkinByStock_id(stock_id);
                    sk.setPrice(price);
                    sk.setUserId(id);
                    sk.setType(type);
                    skdao.add(sk, id);
                } catch (Exception e) {
                    response.sendRedirect("SignIn.jsp");
                }
                response.sendRedirect("HomePage.jsp");
                break;
            case "showstock":
                response.sendRedirect("ShowStock");
                break;
            case "delete":
                try{
                int id = (int) session.getAttribute("userId");
                int stock_id = Integer.parseInt(request.getParameter("stock_id"));
                skdao.deleteByUser(stock_id,id);
                break;
                }catch(Exception e){
                    response.sendRedirect("SignIn.jsp");
                }
                response.sendRedirect("ShowStock");
                break;
        }
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
