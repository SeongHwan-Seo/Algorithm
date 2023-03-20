import java.util.*;
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;
        boolean[][] arr = new boolean[100][100];
        int n = Integer.parseInt(br.readLine());
        int cnt = 0;
        for(int i = 0; i < n; i++) {
            st = new StringTokenizer(br.readLine());
            int x = Integer.parseInt(st.nextToken());
            int y = Integer.parseInt(st.nextToken());
            for(int j = x; j < x+10; j++) {
                for(int k = y; k < y+10; k++) {
                    if(!arr[j][k]) {
                        arr[j][k] = true;
                        cnt++;
                    }
                }
            }
        }
        System.out.println(cnt);
    }
}