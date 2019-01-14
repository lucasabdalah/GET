%%%%%%%%% DECOMPOSICAO LU %%%%%%%%
% Autor: Lucas Abdalah
% Last Update: 14 jan 2019 
% A = LU e a equacao de referencia para decomposicao
% A funcao LUdec(A) recebe a matriz A quadrada e utiliza a eliminacao de Gauss para obter a L e U
% A Matriz L eh triangular inferior e guarda os coefecientes obtidos da eliminacao
% A Matriz U eh triangular superior e guarda a propria matriz resultado da eliminacao de Gauss

function [L, U] =  LUdec(A)
U = A; % Guarda a matriz original
[m,n] = size(U); % Valores utilizados no laco para eliminacao

flop=0; % Inicializa o contador de operacoes

%%% Verificacao da matriz com funcao externa
assert(verificacao(A)==true,'The input matrix must include more than one vector.'); % Funcao de verificacao da matriz

%% ELIMINACAO DE GAUSS
L=eye(m);   % Cria a matriz identidade L para atribuicao dos coeficientes
            % Utiliza apenas uma das dimensoes pois a Matriz deve ser quadrada

for c=1:(m-1) % Itera as colunas
    for d=(c+1):n % Itera as linhas 
                if U(c,c)~=0 % Verifica a condicao para o elemento pivo   
                    pivo=U(c,c); % Atribui o elemento pivo
                    Lc=(U(d,c)/pivo); % Elemento usando na matriz        
                    flop=flop+1; % Contador para o numero de operacos
                    
                    U(d,:)=U(d,:)-Lc*U(c,:); % Faz a operacao com linha d
                    flop=flop+2*m; % Contador para o numero de operacos
                    L(d,c)=Lc;
                
                else
                    disp("Elemento pivo nulo");
                    break    
                end
            end
        end
        
    if L*U ~= A
        flop = flop + m^2; % Contador para o numero de operacos
        disp(strcat("O metodo falhou. Utilizou ", num2str(flop)," operacoes"));       
    else
        disp(strcat("Sucesso! A decomposicao utilizou ", num2str(flop)," operacoes"));
    end
end
