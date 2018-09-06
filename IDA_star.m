function [path, steps] = IDA_star( initial, final )
%IDA_STAR

FOUND = -1;
Root = initial;
steps = Root;
Goal = final;
ExploredNodes = [];
if (initial == final)
    path = [];
    return;
end

Threshold = heuristic(initial, Goal);
while(1)
    [val, min_cost ,path, steps] = search(Root, 0, Threshold, 100, ExploredNodes, Goal);
    if(val == FOUND)
        break;
    end
    Threshold = min_cost;
end
end

