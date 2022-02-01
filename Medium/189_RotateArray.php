<?php
class Solution {

    /**
     * @param Integer[] $nums
     * @param Integer $k
     * @return NULL
     */
    function rotate(&$nums, $k) {
        $count = 0;
        $start = 0;
        while ($count < count($nums)) {
            $current = $start;
            $prev = $nums[$start];
            do {
                $next = ($current + $k) % count($nums);
                $temp = $nums[$next];
                $nums[$next] = $prev;
                $prev = $temp;
                $current = $next;
                $count++;
            } while ($start != $current);
            $start++;
        }        
    }
}
