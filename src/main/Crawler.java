package main;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Hashtable;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import database.Constant;
import database.DataBase;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

public class Crawler {
    private static Crawler crawler = null;
    public static Crawler getInstance() {
        if (crawler == null) {
            crawler = new Crawler();
        }

        return crawler;
    }

    public void updateBusData(String _busNo, int _direction) {
        try {
            for (String company : Constant.busCompanies) {
                String dataUrl = Constant.busDataUrl + company + _busNo + _direction;
                URL url = new URL(dataUrl);
                URLConnection connection = url.openConnection();

                Document doc = parseXML(connection.getInputStream());
                NodeList nameNodes = doc.getElementsByTagName("BUSNO");
                NodeList stopNodes = doc.getElementsByTagName("STOPNAME");
                NodeList stopIdNodes = doc.getElementsByTagName("STOPID");
                NodeList xNodes = doc.getElementsByTagName("BUSX");
                NodeList yNodes = doc.getElementsByTagName("BUSY");

                NodeList cntNodes = doc.getElementsByTagName("BUSCNT");
                int busCount = Integer.parseInt(cntNodes.item(0).getTextContent());

                if (busCount == 0) continue;

                for (int i = 0; i < busCount; i++) {
                    String name = nameNodes.item(i).getTextContent();
                    String stop = stopNodes.item(i).getTextContent();
                    int stopId = Integer.parseInt(stopIdNodes.item(i).getTextContent());
                    double x = Double.parseDouble(xNodes.item(i).getTextContent());
                    double y = Double.parseDouble(yNodes.item(i).getTextContent());

                    DataBase.insertStopData(stopId, stop);

                    if (Bus.list().containsKey(name))
                        Bus.list().get(name).updateStopName(stopId);
                    else
                        Bus.list().put(name, new Bus(Integer.parseInt(_busNo), _direction, name, stopId, x, y));
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