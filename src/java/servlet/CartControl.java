/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entity.Bill;
import entity.Category;
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
import user.userDAO;

/**
 *
 * @author User
 */
public class CartControl extends HttpServlet {

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
        String name = request.getParameter("name");
        SkinDAO skdao = new SkinDAO();
        int stock_id=0;
        int size=0;
        try{
        int id = (int) session.getAttribute("userId");


        switch (name) {
            case "delete":
                stock_id = Integer.parseInt(request.getParameter("stock_id"));
                size=skdao.billCount(id);
                skdao.removeFromBill(id, stock_id);
                response.sendRedirect("CartShow");
                break;
            case "shoppingcart":
                response.sendRedirect("CartShow");
                break;
            case "addtocart":
                try {
                stock_id = Integer.parseInt(request.getParameter("stock_id"));
                skdao.add(id, stock_id);
                } catch (Exception e) {

                }
                request.getRequestDispatcher("HomePage.jsp").forward(request, response);
                break;
            case "checkout":
                try {
                    double cost = Double.parseDouble(request.getParameter("cost"));
                    size=skdao.billCount(id);
                    Bill bill = skdao.getCart(id,size);
                    userDAO ud = new userDAO();
                    if (ud.getUser(id).getCash() > cost) {
                    List<Skin> skin = new ArrayList<Skin>();
                    for (int i = 0; i < bill.getStock_id().length; i++) {
                        stock_id=bill.getStock_id()[i];
                        skin.add(skdao.getSkinByStock_id(bill.getStock_id()[i]));
                        skdao.deleteBill(stock_id);
                        skdao.deleteStock(stock_id);
                        skdao.hisAdd(id,skin.get(i), cost);
                    }
                        request.setAttribute("list", skin);
                        request.getRequestDispatcher("CheckOut.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("naptien.jsp").forward(request, response);
                    }
                } catch (Exception e) {
                }
                break;
            case "sell":
                stock_id=Integer.parseInt(request.getParameter("stock_id"));
                request.setAttribute("x", stock_id);
                request.getRequestDispatcher("SellInfo.jsp").forward(request, response);
                break;
        }
    }catch(Exception e){
            response.sendRedirect("SignIn.jsp");
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
