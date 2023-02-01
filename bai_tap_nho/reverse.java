package bai_tap_nho;

public class reverse {
    public static void main(String[] args) {
        int num = 12345;
        StringBuilder sb = new StringBuilder(String.valueOf(num));
        sb.reverse();
        System.out.println(Integer.parseInt(sb.toString()));
    }
}
