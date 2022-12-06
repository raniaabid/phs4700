function rp = snellDescartes(point_intersection,ui,n1,n2,counter)
  rp={};
     for p=1:1000
      i= (point_intersection{p})/norm(point_intersection{p});
      j = cross(ui{p}, i)/norm(cross(ui{p}, i));
      k = cross(i, j)/norm(cross(i, j));
      si = dot(ui{p}, k);
      angleIncident = asin(si);
      s2=(n1/n2)*(dot(ui{p},k));
      if(abs(s2)>1)
        % Reflexion
        #premiere reflexion on fait rien
        fprintf("premiere reflexion")
      else
        % Refraction
        st = (n1/n2) * si;
        ut = -i * sqrt(1 - (st * st)) + k * st;
        counter++;
      end
      temp=ut;
      ut = temp/norm(temp);
      o=1;
      rp{o}=checkCollision(ut,point_intersection{p});
      o++;
  endfor
endfunction
