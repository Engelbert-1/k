package dal;

import model.RoomType;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoomTypeDAO {
    private DBContext dbContext;

    public RoomTypeDAO() {
        dbContext = new DBContext();
    }

    public List<RoomType> getAllRoomTypes() {
        List<RoomType> roomTypes = new ArrayList<>();
        try (Connection conn = dbContext.getConnection()) {
            String sql = "SELECT * FROM RoomType";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                RoomType roomType = new RoomType();
                roomType.setId(rs.getInt("ID"));
                roomType.setName(rs.getString("Name"));
                roomType.setPrice(rs.getDouble("Price"));
                roomTypes.add(roomType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roomTypes;
    }

    public void insert(RoomType roomType) {
        try (Connection conn = dbContext.getConnection()) {
            String sql = "INSERT INTO RoomType (Name, Price) VALUES (?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, roomType.getName());
            ps.setDouble(2, roomType.getPrice());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Add methods for update and delete if needed
}