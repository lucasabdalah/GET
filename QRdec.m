%%%%%%%%% DECOMPOSICAO QR %%%%%%%%%
% Autor: Lucas Abdalah
% O metodo proposto utiliza a ortogonalizacao de Gram-Schmidt
% A Matriz Q guarda as colunas ortogonais e normalizadas
% A Matriz R guarda o produtos colunas ortogonais e normalizadas

function [Q, R] =  QRdec(Original)

A=Original; % Guardando a matriz original

[m,n] = size(A);

%%%%%%%%% Verificacao da Matriz %%%%%%%%%
assert(verificacao(A)==true,'The input matrix must include more than one vector.'); % Funcao de verificacao da matriz

%%%%%%%%% INICIO DO ALGORITMO %%%%%%%%%
Q=zeros(m,n); % Cria a matriz que a matriz Q    
R=zeros(m,n); % Cria a matriz que a matriz R

% O que e mais facil? Transpor a matriz toda? Ou transpor cada coluna em toda iteracao?
% Talvez nenhum, deixa so na notacao mesmos

U=zeros(m,n); % Matriz 

for k=1:m
    
    U(:,k) = A(:,k);
    
    for atual=1:m
        U(:,k)=U(:,k)-((dot(A(:,k),Q(:,atual))).*Q(:,atual)); % Ortogonalizacao de Gram Schmidt
    end
    
    %%%%%%%%% FUNCIONOU Q %%%%%%%%%
    Q(:,k)=U(:,k)./norm(U(:,k)); % Cria a matriz Q, com as colunas normalizadas
            
    for aux=1:m
        R(aux,k)=dot(A(:,k),Q(:,aux)); % Cria a matriz R com os produtos referentes a cada iteracao     
    end

end

end