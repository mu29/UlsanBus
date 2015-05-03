package database;

import main.BusStop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Logger;

public class DataBase {
    private static  Connection connection = null;
    private static Logger logger = Logger.getLogger(DataBase.class.getName());

    public static void connect(String host, String id, String pass) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(host, id, pass);
            logger.info("데이터베이스 연결 완료.");
        } catch (Exception e) {
            logger.warning(e.getMessage());
        }
    }

    public static void insertStopData(int _stopId, String _stopName) {
        try {
            ResultSet rs = executeQuery("SELECT * FROM `bus_stop` WHERE `id` = '" + _stopId + "';");
            if (!rs.next())
                executeUpdate("INSERT `bus_stop` SET " +
                        "`id` = '" + _stopId + "', " +
                        "`name` = '" + _stopName + "';");

            rs.close();
        } catch (Exception e) {
            logger.warning(e.getMessage());
        }
    }

    public static void updateTimeData(BusStop _stop) {
        try {
            Calendar calendar = Calendar.getInstance();
            String[] weekDays = { "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday" };
            String time = new SimpleDateFormat("HH").format(calendar.getTime());

            ResultSet rs = executeQuery("SELECT * FROM `" + weekDays[calendar.get(Calendar.DAY_OF_WEEK) - 1] + "` " +
                    "WHERE `start` ='" + _stop.getStartPoint() + "' AND " +
                    "`dest` = '" + _stop.getDestPoint() + "' AND " +
                    "`time` = '" + time + "';");

            if (rs.next()) {
                executeUpdate("UPDATE `" + weekDays[calendar.get(Calendar.DAY_OF_WEEK) - 1] + "` SET " +
                        "`min` = '" + _stop.getMinTime() + "', " +
                        "`max` = '" + _stop.getMaxTime() + "', " +
                        "`avg` = '" + _stop.getAvgTime() + "', " +
                        "`num` = '" + _stop.getNumTime() + "' " +
                        "WHERE `start` ='" + _stop.getStartPoint() + "' AND " +
                        "`dest` = '" + _stop.getDestPoint() +  "' AND " +
                        "`time` = '" + time + "';");
            } else {
                executeUpdate("INSERT `" + weekDays[calendar.get(Calendar.DAY_OF_WEEK) - 1] + "` SET " +
                        "`start` = '" + _stop.getStartPoint() + "', " +
                        "`dest` = '" + _stop.getDestPoint() + "', " +
                        "`time` = '" + time + "', " +
                        "`min` = '" + _stop.getMinTime() + "', " +
                        "`max` = '" + _stop.getMaxTime() + "', " +
                        "`avg` = '" + _stop.getAvgTime() + "', " +
                        "`num` = '" + _stop.getNumTime() + "';");
            }

            rs.close();
        } catch (Exception e) {
            logger.warning(e.getMessage());
        }
    }

    public static void load() {
        try {
            String[] weekDays = { "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday" };
            for (String day : weekDays) {
                ResultSet rs = executeQuery("SELECT * FROM `" + day + "`;");
                while (rs.next()) {
                    String key = rs.getInt("start") + day + rs.getInt("time");
                    BusStop.list().put(key, new BusStop(rs));
                }
                logger.info(day + " 정보 로드 완료");
            }
        } catch (Exception e) {
            logger.warning(e.getMessage());
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
