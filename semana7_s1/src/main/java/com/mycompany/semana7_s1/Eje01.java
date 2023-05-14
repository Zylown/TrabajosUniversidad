package com.mycompany.semana7_s1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.JDBCType;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Eje01", urlPatterns = {"/Eje01"})
public class Eje01 extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Eje01</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Eje01 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
         /*PrintWriter out = response.getWriter();
        out.print("Hola "+request.getParameter("txtNombre"));*/
                 response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         int n1 = 0, n2=0, n3=0;
         float promedio=0;
         n1 = Integer.parseInt(request.getParameter("nota1"));
         n2 = Integer.parseInt(request.getParameter("nota2"));
         n3 = Integer.parseInt(request.getParameter("nota3"));
         promedio = ((n1+n2+n3)/3.0f);
         int prom = Math.round(promedio);//Promedio redondeado
         out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Eje01</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>El promedio es: " + prom + "</h1>");
            if (prom >=18 && prom <=20){
             out.println("<h3>APROBADO</h3>");
             out.println("<h3>Calificación: A</h3>");
         }
            if(prom >=14 && prom <=17){
             out.println("<h3>APROBADO</h3>");
             out.println("<h3>Calificación: B</h3>");
         }
            if(prom >=11 && prom <=13){
                if(prom == 11){
                    out.println("<h3>DESAPROBADO</h3>");
                    out.println("<h3>Calificación: C</h3>");
                }else{
                out.println("<h3>APROBADO</h3>");
                out.println("<h3>Calificación: C</h3>");
             }
         }
            if(prom >=6 && prom <=10){
             out.println("<h3>DESAPROBADO</h3>");
             out.println("<h3>Calificación: D</h3>");
         }
            if(prom >=0 && prom <=5){
             out.println("<h3>DESAPROBADO</h3>");
             out.println("<h3>Calificación: E</h3>");
         }
            out.println("</body>");
            out.println("</html>");
        }
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
