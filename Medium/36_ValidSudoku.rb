# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    rows = Array.new(9) { Set.new }
    cols = Array.new(9) { Set.new }
    boxes = Array.new(9) { Set.new }

    (0...9).each do |i|
        (0...9).each do |j|
            val = board[i][j]
            next if val == "."

            box_index = (i / 3) * 3 + (j / 3)

            return false if rows[i].include?(val) ||
                            cols[j].include?(val) ||
                            boxes[box_index].include?(val)

            rows[i].add(val)
            cols[j].add(val)
            boxes[box_index].add(val)
        end
    end

    true
end