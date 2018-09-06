function [ val, min_cost ,path, steps ] = search( state, g_value, Threshold, min_cost, ExploredNodes, Goal )
%SEARCH

for i = 1 : 18
    next = successor_Function(state, i);    
    if(next == Goal)
        path = i;
        steps = Goal;
        val = -1;
        return;
    elseif(findState(ExploredNodes, next) == 0)
        f_value = g_value + heuristic(next, Goal) + 1;
        val = 0;
        if(f_value <= Threshold)
            clc;
            disp(next);
            ExploredNodes = [ExploredNodes; state(:)'];
            [val, min_cost, path, steps] = search(next, g_value + 1, Threshold, min_cost, ExploredNodes, Goal);
            
            if(val == -1)
                path = [i, path];
                steps = [next, steps];
                return;
            end
        else
            min_cost = min(min_cost, f_value);
        end
    end
end
path = [];
steps = [];
end
