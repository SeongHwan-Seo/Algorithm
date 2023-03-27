import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        int sum = 0;
        int value = 0;

        for(int i = 1; i < n; i++) {
            int number = i;
            sum = i;
            while(number != 0) {
                sum += number % 10;
                number /= 10;
            }
            if(sum == n) {
                value = i;
                break;
            }
        }
        System.out.println(value);

    }
}