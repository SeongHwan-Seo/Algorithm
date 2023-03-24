import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        int m = Integer.parseInt(br.readLine());
        int sum = 0;
        int min = m;
        for(int i = n; i <= m; i++) {
            if (i == 1) continue;
            if(isPrime(i)) {
                sum += i;
                min = Math.min(min, i);
            }
            
        }
        if(sum == 0) {
            System.out.println(-1);
        } else {
            System.out.println(sum);
            System.out.println(min);
        }
        
    }

    public static boolean isPrime(int num) {

        for(int i = 2; i < num; i ++) {
            if(num % i == 0) {
                return false;
            }
        }
        return true;
    }
}