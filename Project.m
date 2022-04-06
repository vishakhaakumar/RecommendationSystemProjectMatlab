initData = readtable('C:\CIS_Masters\Sem_03\BigD\Project\Data\SampleData.csv','Format','%s%s%u');
%------------------------ read csv data into init matrix -----------------------
    user_data=initData(:,(1:2));
    rows=size(user_data,1);
    [~,~,ir]=unique(user_data(:,1));
    [~,~,ic]=unique(user_data(:,2));
    users = max(ir);
    products= max(ic);
    MatrixData=zeros(users,products);
  
    rownames = unique(user_data{:,1});
    colnames = unique(user_data{:,2});
    MatrixData = array2table(MatrixData,'RowNames',rownames,'VariableNames',colnames);
    for i=1:rows
        MatrixData(user_data{i,1},user_data{i,2})=initData(i,3);
    end
  %  writetable(MatrixData,'C:\CIS_Masters\Sem_03\BigD\Project\Data\matrixData.csv','WriteRowNames',true)
% ----------------------- read csv data into init matrix ends ----------------------------
  