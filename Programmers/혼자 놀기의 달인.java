import java.util.*;

class Solution {
    public int solution(int[] cards) {
        boolean[] visited = new boolean[cards.length];
        List<Integer> answer = new ArrayList<>();
        
        
        for(int i = 0; i < cards.length; i++) {
            int cnt = 0;
            int next = i;
            while (true) {
                if (!visited[next]) {
                    visited[next] = true;
                    next = cards[next] - 1;
                    cnt++;
                } else {
                    answer.add(cnt);
                    break;
                }
            }
        }
        answer.sort(Comparator.reverseOrder());
        
        if (answer.size() == 1) {
            return 0;
        } else {
            return answer.get(0) * answer.get(1);
        }
    }
}