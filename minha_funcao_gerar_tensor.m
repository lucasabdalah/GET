function [X] = minha_funcao_gerar_tensor(A,B,C)
% Recebe as dimensoes das matrizes fatores
I=size(A,1);
J=size(B,1);
K=size(C,1);

% % Construcao do Tensor (CP)
X1=A*(kr(C,B)).'; % Modo 1 do tensor

% % Reshape
X=reshape(X1,[I,J,K]);