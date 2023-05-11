import java.util.*;
import java.io.*;


public class Main
{
    public static void main(String args[]) throws IOException
    {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        int length = 3;
        int answer = 0;
        for(int i = 1; i <= n; i++) {
            answer = length * length;
            length = length + (length - 1);
        }
        System.out.println(answer);
    }
}