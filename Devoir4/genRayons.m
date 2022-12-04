function us = genRayons(theta, thetaZero, phiZero, robs)
  #rayon sphère
  r=8;
  phi= asin(r/(norm(robs*cos(theta))));
  fprintf("this is phi: ");
  disp(phi);
  us={};
  #générer les 1000 rayons
  for k=1:1000
    #tableau de rayons
    us{k}= -[(sin(((thetaZero+theta)-(thetaZero-theta)).*rand(1,1) + (thetaZero-theta))*cos(((phiZero+phi)-(phiZero-phi)).*rand(1,1) + (phiZero-phi)));
    (sin(((thetaZero+theta)-(thetaZero-theta)).*rand(1,1) + (thetaZero-theta))*sin(((phiZero+phi)-(phiZero-phi)).*rand(1,1) + (phiZero-phi)));
    (cos(((thetaZero+theta)-(thetaZero-theta)).*rand(1,1) + (thetaZero-theta)))];
endfor
#fprintf("this is rayons us from genRayons: ");
#disp(us);
endfunction
