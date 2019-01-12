% A funcao LUdec Contador para o numero de operacos gostaria de testar

function [L, U, flop] =  LUdec(Original)

flop=0;

%% MATRIZ DE INTERESSE
U = Original;

[m,n] = size(U);

%% ELIMINACAO DE GAUSS
% Verifica se a matriz e quadrada
if m == n
    
    % Verifica se e matriz
    if m*n>1
        % Contador para o numero de operacos
        flop=flop+1;
        
        % Cria as matriz identidade L para atribuicao
        L=eye(m,n);

        % Itera as colunas
        for c=1:(m-1)
            
            % Contador para o numero de operacos
            flop=flop+1;
            
            % Itera as linhas
            for d=(c+1):n
                flop=flop+1;

                % Verifica a condicao para o elemento pivo
                if U(c,c)~=0
                    
                    % Atribui o elemento pivo
                    pivo=U(c,c);
                    
                    % Elemento usando na matriz
                    Lc=(U(d,c)/pivo);
                    
                    % Contador para o numero de operacos
                    flop=flop+1;
                    
                    % Faz a operacao com linha d
                    U(d,:)=U(d,:)-Lc*U(c,:);
                    
                    % Contador para o numero de operacos
                    flop=flop+2*m;

                    L(d,c)=Lc;
                    
                else
                    disp("Elemento pivo nulo");
                    break
                    
                end
                
            end
            
            %Mostra a matriz obtida na eliminacao
            %disp(U)
                 
        end
        
    else
        disp("Nao e uma matriz");
    
    end               
        
    else
        disp("A matriz nao e quadrada");
        
    end

    if L*U ~= Original
        
        % Contador para o numero de operacos
        flop = flop + m^2;                    
        disp("Metodo falhou")
    
    else
        disp("Sucesso")
        
    end
end