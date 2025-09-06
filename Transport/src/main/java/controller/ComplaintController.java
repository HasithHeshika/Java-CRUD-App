package controller;

import dao.ComplaintDAO;
import model.Complaint;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ComplaintController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        String action = req.getParameter("action");

        ComplaintDAO dao = new ComplaintDAO();

        try {
            switch (action) {
                case "add":
                    Complaint c = new Complaint();
                    c.setCustomerName(req.getParameter("customerName"));
                    c.setPhone(req.getParameter("phone"));
                    c.setEmail(req.getParameter("email"));
                    c.setIncidentDate(req.getParameter("incidentDate"));
                    c.setVehicleType(req.getParameter("vehicleType"));

                    String[] complaintTypes = req.getParameterValues("complaintType");
                    String complaintType = String.join(", ", complaintTypes != null ? complaintTypes : new String[]{});
                    String other = req.getParameter("otherComplaint");
                    if (other != null && !other.trim().isEmpty()) {
                        complaintType += ", Other: " + other;
                    }

                    c.setComplaintType(complaintType);
                    c.setVehiclePlate(req.getParameter("vehiclePlate"));
                    c.setDriverName(req.getParameter("driverName"));
                    c.setDetails(req.getParameter("details"));

                    dao.insert(c);
                    res.sendRedirect("success.jsp");
                    break;

                case "update":
                    Complaint update = new Complaint();
                    update.setId(Integer.parseInt(req.getParameter("id")));
                    update.setCustomerName(req.getParameter("customerName"));
                    update.setPhone(req.getParameter("phone"));
                    update.setEmail(req.getParameter("email"));
                    update.setIncidentDate(req.getParameter("incidentDate"));
                    update.setVehicleType(req.getParameter("vehicleType"));
                    update.setComplaintType(req.getParameter("complaintType"));
                    update.setVehiclePlate(req.getParameter("vehiclePlate"));
                    update.setDriverName(req.getParameter("driverName"));
                    update.setDetails(req.getParameter("details"));

                    dao.update(update);
                    res.sendRedirect("success.jsp");
                    break;

                case "delete":
                    int id = Integer.parseInt(req.getParameter("id"));
                    dao.delete(id);
                    res.sendRedirect("success.jsp");
                    break;

                default:
                    res.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("error.jsp");
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        try {
            List<Complaint> list = new ComplaintDAO().getAll();
            req.setAttribute("complaints", list);
            RequestDispatcher rd = req.getRequestDispatcher("viewComplaints.jsp");
            rd.forward(req, res);
        } catch (Exception e) {
        	e.printStackTrace();
            res.sendRedirect("error.jsp");
        }
    }
}

