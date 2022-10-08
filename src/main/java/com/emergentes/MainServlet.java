package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author juan
 */
@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

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
        String materia;
        materia = request.getParameter("materia");
        String nombre = request.getParameter("nombre");
        int not1 = Integer.parseInt(request.getParameter("nt1"));
        int not2 = Integer.parseInt(request.getParameter("nt2"));
        int not3 = Integer.parseInt(request.getParameter("nt3"));
        String estado;
        int ntf;
        ntf= not2+not1+not3;
      
        if(ntf >=51){
        
        estado="Aprobado";
        }
        else{
         estado="Reprobado";
        }
        
        Calificaciones cal= new Calificaciones();
        
        cal.setMateria(materia);
        cal.setNombre(nombre);
        cal.setNt1(not1);
        cal.setNt2(not2);
        cal.setNt3(not3);
        cal.setNf(ntf);
        cal.setEst(estado);
        request.setAttribute("calf", cal);
        
        request.getRequestDispatcher("salida.jsp").forward(request, response);
        
        
        
        
        
        
        
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
