import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String[] input = br.readLine().split(" ");
        String n = input[0];
        String m = input[1];

        StringBuffer sb = new StringBuffer(n);
        int reverseN = Integer.parseInt(sb.reverse().toString());

        sb = new StringBuffer(m);
        int reverseM = Integer.parseInt(sb.reverse().toString());
        
        
        if(reverseN > reverseM) {
            System.out.println(reverseN);
        } else {
            System.out.println(reverseM);
        }

    }
}