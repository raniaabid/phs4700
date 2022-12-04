function theta = secteurAngulaire(robs, rayon)
r=8;
##attention sin
norme= sqrt(robs(1)^2+robs(2)^2+robs(3)^2);
theta= asin((r)/norme);
endfunction
