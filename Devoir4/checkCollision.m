function rp = checkCollision(ut,rt)
  a=4;
  b=2;
  c=4;
  #fprintf("this is rt");
  #disp(rt);
##resoudre équation pour les 8 plan du parallépipède
##face 1
if(((a/2)-rt(1)/ut(1))>0)
rp= rt+(((a/2)-rt(1)/ut(1)))*ut;
rp(4)=1;

elseif(((-a/2)-rt(1)/ut(1))>0)
rp= rt+(((-a/2)-rt(1)/ut(1)))*ut;
rp(4)=2;

elseif(((-b/2)-rt(2)/ut(2))>0)
rp= rt+(((-b/2)-rt(2)/ut(2)))*ut;
rp(4)=3;

elseif(((b/2)-rt(2)/ut(2))>0)
rp= rt+(((b/2)-rt(2)/ut(2)))*ut;
rp(4)=4;

elseif((-rt(3)/ut(3))>0)
rp= rt+((-rt(3)/ut(3)))*ut;
rp(4)=5;

elseif((c-rt(3)/ut(3))>0)
rp= rt+((c-rt(3)/ut(3)))*ut;
rp(4)=6;

##frappe la sphere
elseif(exist(verifierCollision (ur,rt)))
snellDescartes(verifierCollision (ur,rt),ui,n2,n1,counter);

else
fprintf("no intersection ");
end
endfunction
