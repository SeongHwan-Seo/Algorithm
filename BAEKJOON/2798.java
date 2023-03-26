import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine(), " ");

        int n = Integer.parseInt(st.nextToken());
        int m = Integer.parseInt(st.nextToken());

        int[] arr = new int[n];

        st = new StringTokenizer(br.readLine(), " ");
        for(int i =0; i < n; i++) {
            arr[i] = Integer.parseInt(st.nextToken());
        }

        int result = getResult(arr, n, m);
        System.out.println(result);

    }

    static int getResult(int[] arr, int n, int m) {
        int result = 0;

        for(int i =0; i < n - 2; i++) {
            for(int j = i + 1; j < n - 1; j++) {
                for(int k = j + 1; k < n; k++) {
                    
                    int tmp = arr[i] + arr[j] + arr[k];

                    if (tmp == m) {
                        return tmp;
                    }

                    if(result < tmp && tmp < m) {
                        result = tmp;
                    }
                }
            }
        }
        return result;
    }
}