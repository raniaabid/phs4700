function [xi,yi,zi,face] = Devoir4(robs, nint, next)
  ## indice pour la première simulation
  ## dimension boite
  xi = [];
  yi = [];
  zi = [];
  face = [];
  a=4;
  b=2;
  c=4;
  rbcm= [0;2;0];

  ##dimension sphère
  r=8;
  ##position observateur
  ##etape1 : déterminer le secteur
  ## 1.1 trouver theta zero
  thetaZero = trouverThetaZero(robs);
  phiZero= trouverPhiZero(thetaZero,robs);
  theta= secteurAngulaire(robs);
  phi=trouverPhi(robs,r,theta);
  fprintf("this is theta from secteurAngulaire");
  disp(theta);
  ##choisir N direction : faire varier theta 50 pour phi de 20= 1000 rayons
  us= genRayons(theta,(pi/2)-thetaZero,phi, phiZero, robs);
  ## etape2: déterminer si les rayons pénetre dans le millieu prcq il touche touche tous a la sphère
  temp=us;
  pointsCollision = verifierCollision(us,robs);
  ## function Type de rayon : refraction vs reflextion
  ##retourne seulement les rayons atteignant l'object
  counter=0;
  rimage= snellDescartes(pointsCollision,us,nint,next,counter);
  ##Reconstitution image
  for c=1:length(rimage)
    x(c)=rimage{c}(1);
    y(c)=rimage{c}(2);
    z(c)=rimage{c}(3);
    faceOff(c)=rimage{c}(4);
  endfor
  xi = [xi;  x];
  yi = [yi;  y];
  zi = [zi;  z];
  face=[face;  faceOff];
endfunction
