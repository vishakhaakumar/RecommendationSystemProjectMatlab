  data_matrix = readmatrix('C:\CIS_Masters\Sem_03\BigD\Project\Data\matrixData.csv');
  normalized_matrix = readtable('C:\CIS_Masters\Sem_03\BigD\Project\Data\matrixData.csv');
    %normalized_matrix = zeros(users,products);
    rows=size(data_matrix,1);
    cols=size(data_matrix,2);
 
    for i=2:rows
           product_ratings=data_matrix(i,(2:cols));
           val =  nnz(data_matrix(i,(2:cols)));
           mean_ratings=sum(product_ratings(:))/val;
           for j=2:cols
               if(normalized_matrix{i,j}~=0)
                normalized_matrix{i,j} = normalized_matrix{i,j} - mean_ratings;
               end
           end
    end
    writetable(normalized_matrix,'C:\CIS_Masters\Sem_03\BigD\Project\Data\normalized_matrix.csv','WriteRowNames',true)
