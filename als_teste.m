%%%% ALS Script SEM RUIDO %%%%
clear; close all; clc;
% Dimensões do tensor 
I = 8; J = 9; K = 10;

% Rank do tensor 
R = 2;

% % Inicialização das matrizes fatores 
A = randn(I, R);
B = randn(J, R); 
C = randn(K, R);

X=minha_funcao_gerar_tensor(A,B,C);

itmax=1e3; 
eps=1e-10;

[Ahat, Bhat, Chat,erro_als,als_it,eqm]=minha_funcao_als(X,R,itmax,eps);

figure(2);
semilogy(erro_als);

Xhat=minha_funcao_gerar_tensor(Ahat,Bhat,Chat);