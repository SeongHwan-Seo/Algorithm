import java.util.*;
import java.io.*;


public class Main
{
    static int H;
    static int W;
    static char[][] road;
    static int[] DX = { -1, 0, 1, 0};
    static int[] DY = { 0, 1, 0, -1};
    static char[] Direction = { '^', '>', 'v', '<'};
    static ArrayList<String> list = new ArrayList<>();

    public static void DFS(int nDx, int nDy, char charDir) {
        int x, y;
        for(int i =0; i < 4; i++) {
            x = nDx + DX[i];
            y = nDy + DY[i];
            
            if(x < 0 || x >= H || y < 0 || y >= W) {
                continue;
            }

            if(road[x][y] == '.') {
                continue;
            }

            if(road[x][y] == '#') {
                int dx = 0, dy = 0;
                switch(i) {
                    case 0: // ^
                        if(charDir == '^') {
                            list.add("A");
                        } else if(charDir == '>') {
                            list.add("LA");
                        } else if(charDir == '<') {
                            list.add("RA");
                        }
                        dx = nDx - 2;
                        dy = nDy;
                        break;
                    case 1: // >
                        if(charDir == '>') {
                            list.add("A");
                        } else if(charDir == '^') {
                            list.add("RA");
                        } else if(charDir == 'v') {
                            list.add("LA");
                        }
                        dx = nDx;
                        dy = nDy + 2;
                        break;
                    case 2: // v
                        if(charDir == 'v') {
                            list.add("A");
                        } else if (charDir == '>') {
                            list.add("RA");
                        } else if(charDir == '<') {
                            list.add("LA");
                        }
                        dx = nDx + 2;
                        dy = nDy;
                        break;
                    case 3: // <
                        if(charDir == '<') {
                            list.add("A");
                        } else if (charDir == '^') {
                            list.add("LA");
                        } else if(charDir == 'v') {
                            list.add("RA");
                        }
                        dx = nDx;
                        dy = nDy - 2;
                        break;
                }
                road[x][y] = '$';
				road[dx][dy] = '$';
				DFS(dx, dy, Direction[i]);
            }
        }
    }

    public static void main(String args[]) throws IOException
    {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        H = Integer.parseInt(st.nextToken());
        W = Integer.parseInt(st.nextToken());
        road = new char[H][W];
        
        for(int i = 0; i < H; i++) {
            st = new StringTokenizer(br.readLine());
            String str = st.nextToken();
            for(int j = 0; j < W; j++) {
                road[i][j] = str.charAt(j);
            }
        }

        for(int i = 0; i < H; i++) {
            for(int j = 0; j < W; j++) {
                if(road[i][j] == '#') {
                    char charDir = 0;
                    int dx, dy;
                    int cnt = 0;
                    for(int k = 0; k < 4; k++) {
                        dx = i + DX[k];
                        dy = j + DY[k];

                        if( dx < 0 || dx >= H || dy < 0 || dy >= W) {
                            continue;
                        }
                        if(road[dx][dy] == '.') {
                            continue;
                        }

                        switch(k) {
                            case 0:
								charDir = '^';
								break;
							case 1:
								charDir = '>';
								break;
							case 2:
								charDir = 'v';
								break;
							case 3:
								charDir = '<';
								break;
                        }
                        cnt++;
                    }
                    if (cnt == 1)
					{
						
						DFS(i, j, charDir);
						System.out.println((i + 1) + " " + (j + 1));
						System.out.println(charDir);
						System.out.println(String.join("", list));
						
						return;
					}
                }

            }
        }
    }
}