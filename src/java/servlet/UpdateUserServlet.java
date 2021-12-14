/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.User;
import user.userDAO;

/**
 *
 * @author Asus
 */
public class UpdateUserServlet extends HttpServlet {

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
        String op = request.getParameter("op");
        String Id = request.getParameter("id");
        if(Id==null){
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }else{
            userDAO udao = new userDAO();
            int userId = Integer.parseInt(Id);
            if("edit".equals(op)){
                User user = udao.getUser(userId);
                request.setAttribute("user", user);
                request.getRequestDispatcher("EditUser.jsp").forward(request, response);
            }else if("Save".equals(op)){
                User user = new User();
                user.setUserId(userId);
                user.setFirstName(request.getParameter("firstName"));
                user.setLastName(request.getParameter("lastName"));
                user.setDOB(Date.valueOf(request.getParameter("DOB")));
                user.setPhone(request.getParameter("phone"));
                user.setEmail(request.getParameter("email"));
                user.setAddress(request.getParameter("address"));
                udao.EditUser(user);
                request.getRequestDispatcher("ProfileServlet?id="+userId).forward(request, response);
            }else if("changepass".equals(op)){
                User user = udao.getUser(userId);
                request.setAttribute("userId", userId);
                request.setAttribute("password", user.getPassword());
                request.getRequestDispatcher("ChangePass.jsp").forward(request, response);
            }else if("Change".equals(op)){
                User user = new User();
                user.setUserId(userId);
                user.setPassword(request.getParameter("newpass"));
                udao.EditPassUser(user);
                request.getRequestDispatcher("ProfileServlet?id="+userId).forward(request, response);
            } else if("delete".equals(op)){
                udao.DeleteUser(userId);
                request.getRequestDispatcher("SignInServlet").forward(request, response);
            }else if("add".equals(op)){
            User user = new User();
            user.setUsername((String) request.getParameter("username"));
            user.setPassword((String) request.getParameter("password"));
            user.setFirstName((String) request.getParameter("firstName"));
            user.setLastName((String) request.getParameter("lastName"));
            user.setDOB(Date.valueOf((String) request.getParameter("DOB")));
            user.setPhone((String) request.getParameter("phone"));
            user.setEmail((String) request.getParameter("email"));
            user.setAddress((String) request.getParameter("address"));
            user.setCash(0);
            user.setPermission(false);
            udao.addUser(user);
            response.sendRedirect("SignIn.jsp");
            }else if("addfunds".equals(op)){
                try{
                double cash = Double.parseDouble(request.getParameter("cash"));
                User user = udao.getUser(userId);
                udao.addFunds(user, cash);
                }catch(Exception e){         
                }
                response.sendRedirect("HomePage.jsp");
            }
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
