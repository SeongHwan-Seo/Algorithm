import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        while(true) {
            int n = Integer.parseInt(br.readLine());
            if(n == -1) break;
            int sum = 0;
            
            for(int i = 1; i <= n/2; i++) {
                if(n%i == 0) {
                    sum += i;
                }
                if(sum == n) {
                    System.out.print(n + " = ");
                    for(int j = 1; j <= n/2; j++){
                        if(j == n/2) {
                            System.out.print(j);
                        } else if(n%j == 0) {
                            System.out.print(j + " + ");
                        }
                    }
                } else if (sum > n) {
                    System.out.print(n + " is NOT perfect.");
                }
            }
            System.out.println();
            
        }
    }
}