%%%% ALS Script COM RUIDO %%%%
clear; close all; clc;
% Dimensões do tensor 
I = 4; J = 4; K = 4;

% Rank do tensor 
R = 2;

% % Inicialização das matrizes fatores 
A = randn(I, R);
B = randn(J, R); 
C = randn(K, R);

X=minha_funcao_gerar_tensor(A,B,C);
N=randn(I,J,K);
% Potencia - Desvio Padrao
SNR_db=30; %db

SNR_lin=10^(SNR_db/10)

sigma=((frob(X)^2)/((frob(N)^2))*SNR_lin)

Y=X+(1/sqrt(sigma))*N;
% Ruído 

itmax=1e3; 
eps=1e-10;

[Ahat, Bhat, Chat,erro_als,als_it,eqm]=minha_funcao_als(Y,R,itmax,eps);

figure(2);
semilogy(erro_als);

Xhat=minha_funcao_gerar_tensor(Ahat,Bhat,Chat);
