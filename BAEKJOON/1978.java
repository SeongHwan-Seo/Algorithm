import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        StringTokenizer st = new StringTokenizer(br.readLine(), " ");
        int cnt = 0;
        for(int i = 0; i < n; i++) {
            int num = Integer.parseInt(st.nextToken());
            if(num == 1) continue;
            boolean isPrime = true;

            for(int j = 2; j < num; j++) {
                if(num % j == 0) {
                    isPrime = false;
                    break;
                }
            }
            if(isPrime) {
                cnt++;
            }
        }
        System.out.println(cnt);
    }
}