package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class DeleteNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction t = s.beginTransaction();
			
			s.delete(s.get(Note.class, noteId));
			
			t.commit();
			s.close();
			
			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
