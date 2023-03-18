import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());

        for(int i = 0; i < n; i++) {
            String[] input = br.readLine().split(" ");
            int cnt = Integer.parseInt(input[0]);
            String str = input[1];

            for(int j = 0; j < str.length(); j++) {
                for(int k = 0; k < cnt; k++) {
                    System.out.print(str.charAt(j));
                }
            }
            System.out.println();
        }
    }
}