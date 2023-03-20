import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        while(true) {
            int n = Integer.parseInt(br.readLine());
            if(n == -1) break;
            int sum = 0;
            int index = 0;
            int[] arr = new int[n/2];
            for(int i = 1; i <= n/2; i++) {
                if(n%i == 0) {
                    sum += i;
                    arr[index++] = i;
                }
            }
            if(sum != n) {
                System.out.println(n + " is NOT perfect.");
                continue;
            }

            System.out.print(n + " = ");
            for(int i = 0; i < index; i++) {
                if(i == index - 1){
                    System.out.println(arr[i]);
                } else {
                    System.out.print(arr[i] + " + ");
                }

            }
        }
    }
}