<?php
class Solution {

    /**
     * @param Integer[] $numbers
     * @param Integer $target
     * @return Integer[]
     */
    function twoSum($numbers, $target) {
        $i = 0;
        while($i < (count($numbers))) {
            $a = $target - $numbers[$i];
            $b = array_search($a, array_slice($numbers, ($i + 1)));
            if (gettype($b) == 'integer') {
                return [($i+1), ($b + $i + 2)];
            }
            $i++;
        }        
        return [];        
    }
}
