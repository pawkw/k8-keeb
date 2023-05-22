
hole = union { cube(16.5, 16.5, 2.5),
        translate(0, 0, 2.5) * cube(14, 14, 1.5),
        translate(0, 0, 4) * cube(16.5, 16.5, 1) }

key = difference { cube(19, 19, 5),
              hole }

pair = union { key,
                translate(19, 0, 0) * key }

plate = union { pair,
          translate(0, 19, 0) * pair,
          translate(0, 19*2, 0) * pair,
          translate(0, 19*3, 0) * pair}

-- rim = difference {
--         cube(41, 79, 4),
--         cube(38, 76, 4)
-- }

-- emit(translate(9.5, 28.5, 1.5) * rim)
emit(plate)
