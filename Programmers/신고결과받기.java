import java.util.*;

class Solution {
    public int[] solution(String[] id_list, String[] report, int k) {
        int[] answer = new int[id_list.length];
        Map<String, HashSet<String>> reporterId = new HashMap<>();
        Map<String, Integer> reportedCnt = new HashMap<>();
        HashSet<String> reportSet = new HashSet<>(Arrays.asList(report));
        
        for(String info : reportSet) {
            String reporter = info.split(" ")[0];
            String reported = info.split(" ")[1];
            if (reporterId.containsKey(reporter)) {
                reporterId.get(reporter).add(reported);
            } else {
                reporterId.put(reporter, new HashSet<String>(){{
                    add(reported);
                }});
            }
            reportedCnt.put(reported, reportedCnt.getOrDefault(reported, 0)+1);
        }
        
        for (String reported : reportedCnt.keySet()){
            int reportedCount = reportedCnt.get(reported);
            if(reportedCount >= k){
                // 메일 발송 대상
                for(int i=0; i<id_list.length; i++){
                    if(reporterId.containsKey(id_list[i]) && reporterId.get(id_list[i]).contains(reported)) {
                        answer[i]++;
                    }
                }
            }
        }
        return answer;
    }
}