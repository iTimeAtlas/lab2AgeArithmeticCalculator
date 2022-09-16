/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ca.sait.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Timle
 */
public class ArithmeticCalculatorServlet extends HttpServlet {
    
    public String message = "---";

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
        
        request.setAttribute("message", message);
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
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
        
        String holderVar1 = request.getParameter("reqNum1");
        String holderVar2 = request.getParameter("reqNum2");
        String holderOperation = request.getParameter("operation");
        
        
        try {
            double firstNum = Double.parseDouble(holderVar1);
            double secondNum = Double.parseDouble(holderVar2);

            Double result;

            switch (holderOperation) {

                case "+": {
                    result = firstNum + secondNum;
                    break;
                }

                case "-": {
                    result = secondNum - firstNum;
                    break;
                }

                case "*": {
                    result = firstNum * secondNum;
                    break;
                }

                case "%": {
                    result = firstNum % secondNum;
                    break;
                }

                default: {
                    result = Double.NaN;
                    break;
                }

            // END OF SWITCH CASE
            }
        } catch (Exception ex) {
            message = "invalid";
        
        }
        
        // String message = "---";
        
        if (Double.isNaN(result)) {
            message = "Result is not a number.";
        
        } else {
            // message - Double.toString(result);
            // message = result + "";
            message = String.format("%.4f", result);
            
        }
        
        request.setAttribute("message", message);
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
    }

    

}
