function state = components2cube( cubies, edges, centres )
    state = [cubies(1, 1), edges(1, 1), cubies(2, 1), edges(2, 1), centres(1, 1), edges(3, 1), cubies(3, 1), edges(4, 1), cubies(4, 1);
             cubies(5, 1), edges(9, 1), cubies(1, 2), edges(7, 1), centres(2, 1), edges(2, 2), cubies(7, 1), edges(10, 2), cubies(3, 2);
             cubies(2, 2), edges(11, 1), cubies(6, 1), edges(3, 2), centres(3, 1), edges(6, 1), cubies(4, 2), edges(12, 1), cubies(8, 1);
             cubies(6, 2), edges(5, 1), cubies(5, 2), edges(6, 2), centres(4, 1), edges(7, 2), cubies(8, 2), edges(8, 1), cubies(7, 2);
             cubies(5, 3), edges(5, 2), cubies(6, 3), edges(9, 2), centres(5, 1), edges(11, 2), cubies(1, 3), edges(1, 2), cubies(2, 3);
             cubies(3, 3), edges(4, 2), cubies(4, 3), edges(10, 2), centres(6, 1), edges(12, 2), cubies(7, 3), edges(8, 2), cubies(8, 3)];

end

