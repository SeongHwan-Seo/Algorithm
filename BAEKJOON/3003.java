import java.util.*;
import java.io.*;

public class Main{
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine(), " ");

        int king = 1 - Integer.parseInt(st.nextToken());
        int queen = 1 - Integer.parseInt(st.nextToken());
        int rook = 2 - Integer.parseInt(st.nextToken());
        int shop = 2 - Integer.parseInt(st.nextToken());
        int knight = 2 - Integer.parseInt(st.nextToken());
        int pown = 8 - Integer.parseInt(st.nextToken());
        System.out.println(king + " " + queen + " " + rook + " " + shop + " " + knight + " " + pown);
    }
}