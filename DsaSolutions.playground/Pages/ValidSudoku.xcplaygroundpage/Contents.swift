import Foundation

// Space complexity is O(1) and time complexity is O(1)

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var row = Array(repeating: Set<Character>(), count: 9)
    var column = Array(repeating: Set<Character>(), count: 9)
    var box = Array(repeating: Set<Character>(), count: 9)

    for i in 0 ..< 9 {
        for j in 0 ..< 9 {
            var value = board[i][j]
            if value == "." {
                continue
            }

            if row[i].contains(value) {
                return false
            }

            if column[j].contains(value) {
                return false
            }

            var body = 3 * (i / 3) + (j / 3)

            if box[body].contains(value) {
                return false
            }
            row[i].insert(value)
            column[j].insert(value)
            box[body].insert(value)
        }
    }
    return true
}

let board1 :[[Character]] =
[["8","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]]

print(isValidSudoku(board1))

let board2 :[[Character]] =
[["5","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]]

print(isValidSudoku(board2))
