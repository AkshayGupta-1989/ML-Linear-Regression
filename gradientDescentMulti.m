function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ================= =====
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
thetaX = zeros(3, 1);
 h=X*(theta)-y;
 
  for i=1:size(theta)     
      theta_1=theta(i)-alpha * 1/m * sum((h).*X(:,i));
      thetaX(i,1)=theta_1;
  end
  %fprintf(' %f \n', thetaX);
  theta=thetaX;
  
    % ============================================================

    % Save the cost J in every iteration    
    % fprintf(' HEllo before   %f \n', theta);
    J_history(iter) = computeCostMulti(X, y, theta);
    %fprintf(' HEllo    %f \n', theta);

end

end
