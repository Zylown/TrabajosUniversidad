package com.mycompany.semana7_s2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "consulta2", urlPatterns = {"/consulta2"})
public class consulta2 extends HttpServlet {

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
            out.println("<title>Servlet consulta2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet consulta2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    public static ArrayList<Area> getAreas(){
            String sql="", respuesta="";
            ArrayList<Area> objetos = new ArrayList<Area>();
            try {
                Connection con = null;
                Statement st = null;
                ResultSet rs = null;
                Class.forName("org.mariadb.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mariadb://localhost/demo?user=root&password=");
                st = con.createStatement();
                sql = "Select id,nombre from area order by nombre";
                rs = st.executeQuery(sql);
                respuesta = "<table>";
                while(rs.next()){
                   Area obj = new Area();
                   obj.setId(rs.getInt(1));
                   obj.setNombre(rs.getString(2));
                   objetos.add(obj);
                }
                respuesta += "</table>";
                return objetos;
            } catch (Exception ex) {
                Area obj = new Area();
                obj.setId(0);
                obj.setNombre(ex.getMessage());
                objetos.add(obj);
                return objetos;
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
        request.setAttribute("c",getAreas());
        request.getRequestDispatcher("/listaArea.jsp").forward(request, response);
        //response.sendRedirect(request.getContextPath() + "/listaArea.jsp");        
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
