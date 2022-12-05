function phi = trouverPhi (robs,r,theta)
 projection= (sqrt(robs(1)^2+robs(2)^2+robs(3)^2))* cos(theta);
 phi= asin(r/projection);
  fprintf("this is phi: ");
  disp(phi);
endfunction
