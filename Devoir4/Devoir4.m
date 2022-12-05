function retval= Devoir4(robs, nint, next)
  ## indice pour la première simulation
  nint= 1.5;
  next= 1;

  ## dimension boite
  a=4;
  b=2;
  c=4;
  rbcm= [0;2;0];

  ##dimension sphère
  r=8;
  ##position observateur
  robs=[20;20;10];
  ##etape1 : déterminer le secteur
  ## 1.1 trouver theta zero
  thetaZero = trouverThetaZero(robs);
  phiZero= trouverPhiZero(thetaZero,robs);
  theta= secteurAngulaire(robs,r);
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
  #rayons = snellDescartes(pointsCollision,us,nint,next);

  retval=0;


endfunction
