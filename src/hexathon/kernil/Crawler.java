package hexathon.kernil;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

/**
 * Created by InJung on 2015. 5. 1..
 */
public class Crawler {
    private String busDataUrl = "http://apis.its.ulsan.kr:8088/Service4.svc/BusLocationInfo.xo?crypte=A&routeid=";
    private String[] busCompanys = { "19210", "19410", "19610" };
    private static Crawler crawler = null;

    public static Crawler getInstance() {
        if (crawler == null) {
            crawler = new Crawler();
        }

        return crawler;
    }

    public ArrayList<Bus> getBusData(int _busNo, int _direction) {
        ArrayList<Bus> busList = new ArrayList<Bus>();

        try {
            for (String company : busCompanys) {
                String dataUrl = busDataUrl + company + _busNo + _direction;
                URL url = new URL(dataUrl);
                URLConnection connection = url.openConnection();

                Document doc = parseXML(connection.getInputStream());
                NodeList nameNodes = doc.getElementsByTagName("BUSNO");
                NodeList stopNodes = doc.getElementsByTagName("STOPNAME");
                NodeList xNodes = doc.getElementsByTagName("BUSX");
                NodeList yNodes = doc.getElementsByTagName("BUSY");

                NodeList cntNodes = doc.getElementsByTagName("BUSCNT");
                int busCount = Integer.parseInt(cntNodes.item(0).getTextContent());

                if (busCount == 0) continue;

                for (int i = 0; i < busCount; i++) {
                    busList.add(new Bus(
                            _busNo,
                            _direction,
                            nameNodes.item(i).getTextContent(),
                            stopNodes.item(i).getTextContent(),
                            Double.parseDouble(xNodes.item(i).getTextContent()),
                            Double.parseDouble(yNodes.item(i).getTextContent())));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return busList;
    }

    private Document parseXML(InputStream stream) {
        DocumentBuilderFactory objDocumentBuilderFactory = null;
        DocumentBuilder objDocumentBuilder = null;
        Document doc = null;
        try {
            objDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            objDocumentBuilder = objDocumentBuilderFactory.newDocumentBuilder();

            doc = objDocumentBuilder.parse(stream);
        } catch(Exception e) {
            e.printStackTrace();
        }

        return doc;
    }
}