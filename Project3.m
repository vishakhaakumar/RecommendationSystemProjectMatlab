 normalized_matrix = readmatrix('C:\CIS_Masters\Sem_03\BigD\Project\Data\normalized_matrix.csv');
    rows=size(normalized_matrix,1);
    cols=size(normalized_matrix,2);
    
     for i=2
          for j=3
              p1 = normalized_matrix(i,(2:cols));
              p2 = normalized_matrix(j,(2:cols));
            numerator=sum(p1.*p2);
            denominator=(sqrt(sum(p1.^2)))*(sqrt(sum(p2.^2)));
            
          end
     end