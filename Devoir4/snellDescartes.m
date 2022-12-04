function retval = snellDescartes (pointsCollision,us,n1,n2)
  retval=0;
  ##TODO: K DEPEND DE L'ORIENTATION
  k=[0;0;1];
for i=0:1000
  s2=(n1/n2)*dot(us{i},k);
  if (abs(s2)>1)
  ##réflexion
  ##onsave rien
endif

  if(abs(s2)<1)
  ##réfraction
  ##touche objet save rp
  ##sinon quand respecte x+y+z=8
  ##encore reflexion ou refraction juska 4
  endif
  endfor
endfunction
