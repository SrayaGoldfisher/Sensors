1. Given a system of ohmic sensors. The system is structured as follows:

- By connecting a voltage to two points and measuring the rest of the points (the other 4) we calculated what is the minimum number of runs required to calculate the values of all the resistors in the sensor.
- We formulated the equations needed for the solution.
- We implemented the system on a matrix. We sent the data to MATLAB:
  - The function [V, D] = eig (A) returns the eigenvectors of A in the matrix columns V and the eigenvalues of A in the array D.
  - We connected at 1 and 3 potentiometers, and the rest of the resistors we used constant resistors.
1. We repeated Exercise 1 for the following system:

