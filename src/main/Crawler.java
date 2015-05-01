package main;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Hashtable;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

public class Crawler {
    private String busDataUrl = "http://apis.its.ulsan.kr:8088/Service4.svc/BusLocationInfo.xo?crypte=A&routeid=";
    private String[] busCompanies = { "19210", "19410", "19610" };
    private Hashtable<String, Bus> busList = new Hashtable<>();

    private static Crawler crawler = null;
    public static Crawler getInstance() {
        if (crawler == null) {
            crawler = new Crawler();
        }

        return crawler;
    }

    public void updateBusData(int _busNo, int _direction) {
        try {
            for (String company : busCompanies) {
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
                    String name = nameNodes.item(i).getTextContent();
                    String stop = stopNodes.item(i).getTextContent();
                    double x = Double.parseDouble(xNodes.item(i).getTextContent());
                    double y = Double.parseDouble(yNodes.item(i).getTextContent());

                    if (busList.containsKey(nameNodes.item(i).getTextContent()))
                        busList.get(name).updateStopName(stop);
                    else
                        busList.put(nameNodes.item(i).getTextContent(), new Bus(_busNo, _direction, name, stop, x, y));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
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