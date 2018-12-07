clearvars;
load kos_doc_data.mat

M = length(V);  % number of unique words
len = length(A);    
alpha = 0.1;        %dirichlet param
pseudo_counts = alpha*ones(M,1);

N = sum(A(:,3)) + sum(pseudo_counts(:,1));

for i = 1:len
    pseudo_counts(A(i,2),1) = pseudo_counts(A(i,2),1)+ A(i,3);
end

beta = pseudo_counts./N;

[kk, ii] = sort(beta(:,1), 'descend');
np = 20;
barh(kk(np:-1:1))
set(gca,'YTickLabel',V(ii(np:-1:1)),'Ytick',1:np,'FontSize',8);

hold on;
xlabel('\beta_{m} with Dirichlet prior');
