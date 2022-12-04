function phiZero = trouverPhiZero (thetaZero, robs)
  norme= sqrt(robs(1)^2+robs(2)^2+robs(3)^2);
  ##TODO: attention a l'angle if neg if pos
  phiZero= acos((robs(1))/(norme*sin(thetaZero)));
  temp= phiZero;
  if(phiZero<0)
  phiZero=-temp;
  endif
  fprintf("this is phiZero");
  disp(phiZero);
endfunction
