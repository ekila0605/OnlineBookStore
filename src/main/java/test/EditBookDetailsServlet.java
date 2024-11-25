package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings({ "serial", "unused" })
public class EditBookDetailsServlet extends HttpServlet { 
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Seesion Expired..<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
			
		}else {
			String bCode = req.getParameter("bcode");
			ArrayList<BookBean> al = (ArrayList<BookBean>)hs.getAttribute("alist"); 
			BookBean bb = null;
			Iterator<BookBean> it = al.iterator();
			while(it.hasNext()) {
				bb = it.next();
				if(bCode.equals(bb.getCode())) {
					break;
				}
			}//end loop
			req.setAttribute("bbean", bb);
			req.getRequestDispatcher("EditBookDetails.jsp").forward(req, res);
			
		}
	}

}
