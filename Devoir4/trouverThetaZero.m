function thetaZero = trouverThetaZero (robs)
  norme= sqrt(robs(1)^2+robs(2)^2+robs(3)^2);
  thetaZero= acos(robs(3)/norme);
  temp =thetaZero;
  fprintf("this is thetatZero: ")
  disp(thetaZero);
  if(thetaZero<0)
  thetaZero=-temp;
  endif
endfunction
