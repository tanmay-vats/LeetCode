# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    n = matrix.length

    # Step 1: Transpose the matrix
    (0...n).each do |i|
        (i+1...n).each do |j|
            matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
        end
    end

    # Step 2: Reverse each row
    matrix.each(&:reverse!)
end
