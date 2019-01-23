%%%%%%%%% VERIFICACAO DE MATRIZ %%%%%%%%
% Autor: Lucas Abdalah
% Last Update: 14 jan 2019 
% Verifica se a entrada e matriz

function [aux] =  verificacao(X)
    [m,n]=size(X); % Dimensoes da entrada
    
    %%%%%%%%% Bloco de Verificao  %%%%%%%%%
    if m==n
        if m*n>1 % Verifica se e matriz
            %%%%%%%%% VERDADEIRO  %%%%%%%%%
            aux=true;
    	
    	else
            %%%%%%%%% FALSO - CASO 1  %%%%%%%%%
        	aux=false; % A entrada nao e matriz
        	return
        end
        
    else
    	%%%%%%%%% FALSO - CASO 2  %%%%%%%%%
    	aux=false; % A entrada nao e matriz
    	return
    end
end
