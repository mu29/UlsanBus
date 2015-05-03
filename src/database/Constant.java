package database;

import java.util.ArrayList;
import java.util.Collections;

/**
 * Created by InJung on 2015. 5. 4..
 */
public class Constant {
    public static String busDataUrl = "http://apis.its.ulsan.kr:8088/Service4.svc/BusLocationInfo.xo?crypte=A&routeid=";
    public static String[] busCompanies = { "1921", "1941", "1961" };
    public static ArrayList<String> busList = new ArrayList<>();

    public static void init() {
        String[] bus = new String[] { "1127" };
        Collections.addAll(busList, bus);
    }
}
