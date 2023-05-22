rim = difference {
        cube(42, 80, 7),
        cube(38.5, 76.5, 7)}


tab = cone(1.5, .5, 1)

tabs = union {
  translate(-20, 19, 17.2) * tab,
  translate(-20, -19, 17.2) * tab,
  translate(20, -19, 17.2) * tab,
  translate(20, 19, 17.2) * tab,
  translate(0, 38.9, 17.2) * tab,
  translate(0, -38.9, 17.2) * tab,
}

bound = difference {
        translate(0, 0, -2) * cube(45, 85, 20),
        cube(42, 80, 19)
}

tabs = difference {
        tabs,
        bound
}

emit(tabs)
dofile("pro-micro.lua")
board = translate(2.5, 0, 2.5) * board

block = cube(4, 22, 2)
block = translate(-14, 0, 2) * block
block = difference(block, board)



box = difference {
        cube(42, 80, 12),
        board,
        translate(0, 0, 2) * cube(36, 74, 12),
}

box = union {
  translate(0, 0, 12) * rim,
  block,
  box
}

-- Cut off the bottom to test tabs
-- box = difference{ 
--   box,
--   cube(45, 80, 10)
-- }

emit(box)

