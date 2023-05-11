import java.util.*;
import java.io.*;


public class Main
{
    public static void main(String args[]) throws IOException
    {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        int M = Integer.parseInt(st.nextToken());
        int N = Integer.parseInt(st.nextToken());
        int K = Integer.parseInt(st.nextToken());

        st = new StringTokenizer(br.readLine());
        String arrM[] = new String[M];
        for(int i = 0; i < M; i++) {
            arrM[i] = st.nextToken();
        }

        st = new StringTokenizer(br.readLine());
        String arrN[] = new String[N];
        for(int i = 0; i < N; i++){
            arrN[i] = st.nextToken();
        }

        String m = String.join("", arrM);
        String n = String.join("", arrN);

        System.out.println(n.contains(m) ? "secret" : "normal");
        
    }
}