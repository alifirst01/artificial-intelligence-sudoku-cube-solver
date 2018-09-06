# artificial-intelligence-sudoku-cube-solver
Minimum steps to solve the sudoku cube given an intial and final configuration

### Description
Find minimum sequence of actions to solve the sudoku cube. Following are the different aspects of the problem:  
 • States: A description of configuration of cube  
 • Initial State: Given all faces and values of cube  
 •	Successor Function:  Possible actions that can be taken, and the resulting state from that action  
 •	Goal: Final configuration also given  
 •	Path Cost: Step cost of each action and path cost of series of actions   

### States
To represent a single state we used a 3D array (12x3x3). 6 for the faces i.e. Up, Down, Left, Right, Front, Back. 5 is kept fixed in the center of all the states as per the rule.  

As for the total states  
No. of Faces * No. of Different Orientations = 6 * 8! (since 5 is always fixed)

### Goal State
Given in a file named “GoalState.txt”. 3 consecutive lines represent a face of Sudoku cube. There are 6 faces separated by an empty line and they are all solved having numbers 1, 2, 3, 4, 5, 6, 7, 8, 9.  

### Successor Function
The Successor function takes in the current state of cube and the rotation that is to be applied and it gives the cube with that rotation applied on it. Following is the Format  
“F” > Front	(Clo## ckwise)	“F-” > Back	(Anticlockwise)  
“B”	> Back&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“B-” > Back  
“L”	> Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“L-”	> Back  
“R”	> Right&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“R-”	> Back	  
“U”	> Up&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“U-”	> Back  
“D”	> Down&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“D-”	> Back	  

### Algorithm: Iterative Deepening A*
It is the algorithm used to solve the cube with pruning branches whose cost exceed threshold. Threshold is initialized according to initial state heuristic which then increases iteratively. In every iteration, threshold is set to minimum f_value among f_values of all nodes that exceeded previous threshold.  

## Heuristic
3D Manhattan Distance of Cubies
