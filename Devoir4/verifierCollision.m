function rayonsCollision = verifierCollision (us,robs)
  rayonsCollision={};
  for i=1:1000
  ## point P respectant l'équation d'une sphère
  a= ((us{i}(1))^2+(us{i}(2))^2+(us{i}(2))^2);
  b= (2*((robs(1)*us{i}(1)) + (robs(2)*us{i}(2))+ (robs(3)*us{i}(3))));
  c= ((robs(1))^2+ (robs(2))^2+ (robs(3))^2 -64);
  ##résolution de l'équation quadratique
  d1= (-b +(sqrt(b^2-(4*a*c))))/ (2*a);
  d2= (-b -(sqrt(b^2-(4*a*c))))/ (2*a);
  d=d1;
    if(d1>0)
    d=d2;
  endif
  ##le recopier dans un vecteur
  rayonsCollision{i}=[robs(1)-((d)*us{i}(1));robs(2)-((d)*us{i}(2));robs(3)-((d)*us{i}(3))];
  #printf("la position des rayons sur la sphere est: ");
  #disp(rayonsCollision{i});
endfor
endfunction
