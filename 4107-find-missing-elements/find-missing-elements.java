class Solution {
   
    public List<Integer> findMissingElements(int[] nums) {
        Set<Integer> set=new HashSet<Integer>();
        List<Integer> ans=new ArrayList<>();
        for(int i=0;i<nums.length;i++)
        {
            set.add(nums[i]);
        }
        Arrays.sort(nums);
        for(int i=nums[0];i<=nums[nums.length-1];i++)
        {
            if(set.contains(i))
            {
                continue;
            }
            else
            {
                ans.add(i);
            }
        }
        return ans;
    }
}