<?php
class Solution {

    /**
     * @param Integer[] $nums
     * @return Integer
     */
    function removeDuplicates(&$nums) {
        $count = 0;
        for ($i = 0; $i < count($nums); $i++) {
            if ($i < (count($nums) - 1) && $nums[$i] == $nums[$i + 1]) {
                continue;
            }
            $nums[$count] = $nums[$i];
            $count++;
        }
        return $count;
    }
}
