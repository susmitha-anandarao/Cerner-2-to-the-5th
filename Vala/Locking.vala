// Overcome race conditions using a lock
// cerner_2^5_2018
public class Locking : GLib.Object {

    private int a { get; set; }

    public void action() {
        lock (a) {
            int tmp = a;
            tmp++;
            a = tmp;
        }
    }

    public void another_action() {
        lock (a) {
            int tmp = a;
            tmp--;
            a = tmp;
        }
    }
}
