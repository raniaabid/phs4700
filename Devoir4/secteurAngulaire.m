function theta = secteurAngulaire(robs)
  r=8
norme= sqrt(robs(1)^2+robs(2)^2+robs(3)^2);
theta= asin((r)/norme);
endfunction
