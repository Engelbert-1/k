package controller;

import model.Train;
import java.io.IOException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class TrainServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        String num_raw = request.getParameter("num");
        int num;

        try {
            // Chuyển đổi số lượng toa tàu thành kiểu int
            num = Integer.parseInt(num_raw);

            // Lấy session hiện tại
            HttpSession session = request.getSession();

            // Lấy danh sách train từ session, nếu chưa có thì tạo mới
            ArrayList<Train> list = (ArrayList<Train>) session.getAttribute("trainList");
            if (list == null) {
                list = new ArrayList<>();  // Nếu danh sách chưa tồn tại trong session thì khởi tạo mới
            }

            // Thêm đối tượng Train mới vào danh sách
            Train newTrain = new Train(code, name, num);
            list.add(newTrain);

            // Cập nhật lại danh sách vào session
            session.setAttribute("trainList", list);

            // Gửi danh sách train tới JSP để hiển thị
            request.setAttribute("data", list);
            request.getRequestDispatcher("myexam.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            // Xử lý lỗi nếu người dùng nhập không phải số nguyên vào trường số lượng toa tàu
            request.setAttribute("error", "Number of carriages must be a valid number.");
            request.getRequestDispatcher("myexam.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy session và kiểm tra danh sách train có tồn tại không
        HttpSession session = request.getSession();
        ArrayList<Train> list = (ArrayList<Train>) session.getAttribute("trainList");

        // Nếu không có danh sách thì khởi tạo mới, nếu có thì đẩy ra để hiển thị
        if (list != null) {
            request.setAttribute("data", list);
        }

        // Chuyển đến trang myexam.jsp để hiển thị
        request.getRequestDispatcher("myexam.jsp").forward(request, response);
    }
}