function [ cubies, edges, centres ] = cube2components( state )
    centres = zeros(6, 1);
    centres(:, 1) = state(:, 5);
    
    cubies = [state(1, 1), state(2, 3), state(5, 7);
              state(1, 3), state(3, 1), state(5, 9);
              state(1, 7), state(2, 9), state(6, 1);
              state(1, 9), state(3, 7), state(6, 3);
              state(2, 1), state(4, 3), state(5, 1);
              state(3, 3), state(4, 1), state(5, 3);
              state(2, 7), state(4, 9), state(6, 7);
              state(3, 9), state(4, 7), state(6, 9)];
    
    edges = [state(1, 2), state(5, 8);
             state(1, 4), state(2, 6);
             state(1, 6), state(3, 4);
             state(1, 8), state(6, 2);
             state(4, 2), state(5, 2);
             state(3, 6), state(4, 4);
             state(2, 4), state(4, 6);
             state(4, 8), state(6, 8);
             state(2, 2), state(5, 4);
             state(2, 8), state(6, 4);
             state(3, 2), state(5, 6);
             state(3, 8), state(6, 6)];   
end

