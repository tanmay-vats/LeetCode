<?php
class Solution {

    /**
     * @param Integer[] $prices
     * @return Integer
     */
    function maxProfit($prices) {
        $profit = 0;
        for($i=0; $i<count($prices); $i++) {
            if (($i+1) < count($prices) && $prices[$i] < $prices[$i+1]) {
                $profit +=  ($prices[$i+1] - $prices[$i]);
            }
        }
        return $profit;
    }
}
