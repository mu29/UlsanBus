package hexathon.kernil;

/**
 * Created by InJung on 2015. 5. 1..
 */
public class Bus {
    private int no;
    private int direction;
    private String name;
    private String stopName;
    private double x;
    private double y;

    public Bus(int _no, int _direction, String _name, String _stopName, double _x, double _y) {
        no = _no;
        direction = _direction;
        name = _name;
        stopName = _stopName;
        x = _x;
        y = _y;
    }

    public int getNo() {
        return no;
    }

    public int getDirection() {
        return direction;
    }

    public String getName() {
        return name;
    }

    public String getStopName() {
        return stopName;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }
}
