function state = successor_Function( state, action )
%SUCCESSOR_FUNCTION
switch action
    %------------------ X Axis Rotations--------------------
    case 1              %1XL
        state([1, 2, 3, 4], 1:3) = state([3, 1, 4, 2], 1:3);
        state(5, :) = state(5, [7, 4, 1, 8, 5, 2, 9, 6, 3]);
    case 2              %2XL
        state([1, 2, 3, 4], 4:6) = state([3, 1, 4, 2], 4:6);
    case 3              %3XL
        state([1, 2, 3, 4], 7:9) = state([3, 1, 4, 2], 7:9);
        state(6, :) = state(6, [3, 6, 9, 2, 5, 8, 1, 4, 7]);
    case 4              %1XR
        state([3, 1, 4, 2], 1:3) = state([1, 2, 3, 4], 1:3);
        state(5, :) = state(5, [3, 6, 9, 2, 5, 8, 1, 4, 7]);
    case 5              %2XR
        state([3, 1, 4, 2], 4:6) = state([1, 2, 3, 4], 4:6);
    case 6              %3XR
        state([3, 1, 4, 2], 7:9) = state([1, 2, 3, 4], 7:9);
        state(6, :) = state(6, [7, 4, 1, 8, 5, 2, 9, 6, 3]);
   
   %------------------ Y Axis Rotations--------------------
    case 7              %1YU
        four = state(4, [3, 6, 9]);
        state(4, [3, 6, 9]) = state(5, [7, 4, 1]);
        state([1, 5], [1, 4, 7]) = state([6, 1], [1, 4, 7]);
        state(6, [7, 4, 1]) = four;
        state(2, :) = state(2, [3, 6, 9, 2, 5, 8, 1, 4, 7]);
    case 8              %2YU
        four = state(4, [2, 5, 8]);
        state(4, [2, 5, 8]) = state(5, [8, 5, 2]);
        state([1, 5], [2, 5, 8]) = state([6, 1], [2, 5, 8]);
        state(6, [8, 5, 2]) = four;        
    case 9              %3YU
        four = state(4, [1, 4, 7]);
        state(4, [1, 4, 7]) = state(5, [9, 6, 3]);
        state([1, 5], [3, 6, 9]) = state([6, 1], [3, 6, 9]);
        state(6, [9, 6, 3]) = four;
        state(3, :) = state(3, [7, 4, 1, 8, 5, 2, 9, 6, 3]);
    case 10             %1YD
        four = state(4, [3, 6, 9]);
        state(4, [3, 6, 9]) = state(6, [7, 4, 1]);
        state([1, 6], [1, 4, 7]) = state([5, 1], [1, 4, 7]);
        state(5, [7, 4, 1]) = four;
        state(2, :) = state(2, [7, 4, 1, 8, 5, 2, 9, 6, 3]);
    case 11             %2YD
        four = state(4, [2, 5, 8]);
        state(4, [2, 5, 8]) = state(6, [8, 5, 2]);
        state([6, 1], [2, 5, 8]) = state([1, 5], [2, 5, 8]);
        state(5, [8, 5, 2]) = four;
        state([6, 5, 1, 4], [2, 5, 8]) = state([1, 4, 5, 6], [2, 5, 8]);    
    case 12             %3YD
        four = state(4, [1, 4, 7]);
        state(4, [1, 4, 7]) = state(6, [9, 6, 3]);
        state([1, 6], [3, 6, 9]) = state([5, 1], [3, 6, 9]);
        state(5, [9, 6, 3]) = four;
        state(3, :) = state(3, [3, 6, 9, 2, 5, 8, 1, 4, 7]);
        
    %------------------ Z Axis Rotations--------------------
    case 13              %1ZL
        state(1, :) = state(1, [3, 6, 9, 2, 5, 8, 1, 4, 7]);
        rot = state(2, [3, 6, 9]);
        state(2, [3, 6, 9]) = state(5, [9, 8, 7]);
        state(5, [7, 8, 9]) = state(3, [1, 4, 7]);
        state(3, [1, 4, 7]) = state(6, [3, 2, 1]);
        state(6, [1, 2, 3]) = rot;
        state([2, 3, 5, 6], [2, 5, 8]) = state([1, 4, 5, 6], [2, 5, 8]);    

    case 14              %2ZL
        rot = state([2, 3], [2, 5, 8]); 
        state([2, 3], [2, 5, 8]) = state([6, 5], [4, 5, 6]);
        state([6, 5], [4, 5, 6]) = rot;
    case 15              %3ZL
        state(4, :) = state(4, [7, 4, 1, 8, 5, 2, 9, 6, 3]);
        rot = state(2, [1, 4, 7]);
        state(2, [1, 4, 7]) = state(5, [3, 2, 1]);
        state(5, [1, 2, 3]) = state(3, [3, 6, 9]);
        state(3, [3, 6, 9]) = state(6, [9, 8, 7]);
        state(6, [7, 8, 9]) = rot;
    case 16              %1ZR
        state(1, :) = state(1, [7, 4, 1, 8, 5, 2, 9, 6, 3]);
        rot = state(6, [1, 2, 3]);
        state(6, [1, 2, 3]) = state(2, [3, 6, 9]);
        state(2, [3, 6, 9]) = state(5, [7, 8, 9]);
        state(5, [7, 8, 9]) = state(3, [1, 4, 7]);
        state(3, [1, 4, 7]) = rot;
    case 17              %2ZR
        rot = state([6, 5], [4, 5, 6]); 
        state([6, 5], [4, 5, 6]) = state([2, 3], [2, 5, 8]);
        state([2, 3], [2, 5, 8]) = rot;
    case 18              %3ZR
        rot = state(6, [7, 8, 9]);
        state(6, [7, 8, 9]) = state(2, [3, 6, 9]);
        state(2, [3, 6, 9]) = state(5, [7, 8, 9]);
        state(5, [7, 8, 9]) = state(3, [1, 4, 7]);
        state(3, [1, 4, 7]) = rot;
        state(4, :) = state(4, [3, 6, 9, 2, 5, 8, 1, 4, 7]);
end
end

