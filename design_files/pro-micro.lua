-- Pro Micro

pcb = cube(34, 19, 2)
port = cube(6, 9, 3)
board = union {
          pcb,
          translate(16, 0, 1.5) * port }
-- emit(board)