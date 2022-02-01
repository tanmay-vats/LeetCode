<?php
class Solution {

    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer[]
     */
    function twoSum($nums, $target) {
        $i = 0;
        while($i < (count($nums))) {
            $a = $target - $nums[$i];
            $b = array_search($a, array_slice($nums, ($i + 1)));
            if (gettype($b) == 'integer') {
                return [$i, ($b + $i + 1)];
            }
            $i++;
        }        
        return [];
    }
}
