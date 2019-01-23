function [Ahat, Bhat, Chat,erro_als,als_it,eqm] = minha_funcao_als(X,R,itmax,eps)
% Inicializacao para os fatores de estimacao
%Ahat = randn(I, R); 
I=size(X,1);
J=size(X,2);
K=size(X,3);

Bhat = randn(J, R);  Chat = randn(K, R);

X1=reshape(X,[I,J*K]); % Modo 1 
X2=reshape(permute(X,[2,1,3]),[J,I*K]); % Modo 2
X3=reshape(permute(X,[3,1,2]),[K,J*I]); % Modo 3

erro_als=zeros(1,itmax);

for ii = 2:itmax
    Ahat=X1*pinv(kr(Chat,Bhat).'); 
    Bhat=X2*pinv(kr(Chat,Ahat).');
    Chat=X3*pinv(kr(Bhat,Ahat).');

    X1hat=Ahat*(kr(Chat,Bhat)).'; % Modo 1 do tensor
    
    erro_als(ii)=(norm(X1-X1hat,'fro')^2)/(norm(X1,'fro')^2);
    
    if abs(erro_als(ii) - erro_als(ii-1))<eps
        als_it=ii-1;
        break
    else
        als_it=itmax-1;
    end
end
% als_it=itmax;
eqm=erro_als(als_it+1);

end