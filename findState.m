function val = findState( ExploredNodes, node )
val = 0;
for i = 1 : size(ExploredNodes, 1)
    if(isequal(ExploredNodes(i, :), node(:)'))
        val = 1;
        return;
    end
end
end

