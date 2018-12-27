# First-AI-Project

Written in Processing (based on Java) to make the results of the algorithm more visual. 

Developed using a genetic algorithm, based on principles of natural selection. In this program, a population of moving dots learn to move through
a series of semi-randomly generated obstacles to reach a goal at the end. 

Details:
Initial population of dots is given a completely random set of vectors to follow. The success of each dot is determined by a fitness function, 
which is primarily based on the distance remaining to the goal when the dot "dies". After dots reach the goal, the fitness function then judges fitness
based on how many steps it took to get there. 

The higher the fitness of a dot, the more likely it is to be selected as a parent for a child of the next generation. Since this is a simple project,
only one parent was implemented per child, and the child is a direct clone of it's parent. There is a 1% mutation rate applied to the directions given to
the child. 
