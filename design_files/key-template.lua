hole = union { cube(16.5, 16.5, 2.5),
        translate(0, 0, 2.5) * cube(14, 14, 1.5),
        translate(0, 0, 4) * cube(16.5, 16.5, 1) }

key = difference { cube(19, 19, 5),
              hole }