function val = heuristic( state, goal )
%HEURISTIC 
    [s_cubies, s_edges, s_centres] = cube2components(state);
    [f_cubies, f_edges, f_centres] = cube2components(goal);
    val = 0;
    for i = 1 : size(s_cubies, 1)
        if(length(find(sort(s_cubies(i, :)) == sort(f_cubies(i, :)))) ~= 3)
            val = val + 1;
            for j = 1 : size(f_cubies, 1)
                if(length(find(sort(s_cubies(i, :)) == sort(f_cubies(j, :)))) == 3)
                    val = val + 3 - length(find(s_cubies(i, :) == f_cubies(j, :)));
                    break;
                end
            end
        else
            val = val + 3 - length(find(s_cubies(i, :) == f_cubies(i, :)));
        end
    end
end
