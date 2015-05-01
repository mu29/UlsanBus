package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

public class DataBase {
    private static Connection connection = null;
    private static Logger logger = Logger.getLogger(DataBase.class.getName());

    public static void connect(String host, String id, String pass) throws Exception {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(host, id, pass);
            logger.info("데이터베이스 연결 완료.");
        } catch (SQLException sqex) {
            logger.warning(sqex.getMessage());
        }
    }

    // Select
    public static ResultSet executeQuery(String query) throws SQLException {
        return connection.createStatement().executeQuery(query);
    }

    // Insert
    public static int executeUpdate(String query) throws SQLException {
        return connection.createStatement().executeUpdate(query);
    }
}
