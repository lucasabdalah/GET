# GRUPO DE ESTUDOS EM TENSORES (GET)

As funções desenvolvidas são referentes ao projeto proposto por professores, alunos de gradução e pós do **Departamento de Engenharia de Teleinformática** (DETI) da **Universidade Federal do Ceará** (UFC) para alunos bolsistas do **Grupo de Pesquisa em Telecomunicação Sem Fio** (GTEL) para trabalhar com modelos matemáticos em tensores para representação e processamento de sinais.


### 1ª Tarefa - Decomposição LU
  LU (lower e upper) é uma forma de fatoração de uma matriz _A_, não singular, como o produto de uma matriz triangular inferior (lower) que "guarda" os passos da eliminação de Gauss e uma matriz triangular superior (upper), justamente o resultado de fato da eliminação. É utilizada em análise numérica para resolver sistemas de equações (mais eficientemente) ou encontrar as matrizes inversas.
  
  Então, sendo as matrizes quadradas de ordem 3, a equação:
<a href="https://www.codecogs.com/eqnedit.php?latex=A&space;=&space;LU" target="_blank"><img src="https://latex.codecogs.com/gif.latex?A&space;=&space;LU" title="A = LU" /></a>

  Resulta em:
  
<a href="https://www.codecogs.com/eqnedit.php?latex=\begin{pmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}&space;\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}&space;\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{pmatrix}&space;=&space;\begin{pmatrix}&space;1&space;&&space;0&space;&&space;0&space;\\&space;l_{21}&space;&&space;1&space;&&space;0\\&space;l_{31}&space;&&space;l_{32}&space;&&space;1&space;\end{pmatrix}&space;\begin{pmatrix}&space;u_{11}&space;&&space;u_{12}&space;&&space;u_{13}&space;\\&space;0&space;&&space;u_{22}&space;&&space;u_{23}&space;\\&space;0&space;&&space;0&space;&&space;u_{33}&space;\end{pmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\begin{pmatrix}&space;a_{11}&space;&&space;a_{12}&space;&&space;a_{13}&space;\\&space;a_{21}&space;&&space;a_{22}&space;&&space;a_{23}&space;\\&space;a_{31}&space;&&space;a_{32}&space;&&space;a_{33}&space;\end{pmatrix}&space;=&space;\begin{pmatrix}&space;1&space;&&space;0&space;&&space;0&space;\\&space;l_{21}&space;&&space;1&space;&&space;0\\&space;l_{31}&space;&&space;l_{32}&space;&&space;1&space;\end{pmatrix}&space;\begin{pmatrix}&space;u_{11}&space;&&space;u_{12}&space;&&space;u_{13}&space;\\&space;0&space;&&space;u_{22}&space;&&space;u_{23}&space;\\&space;0&space;&&space;0&space;&&space;u_{33}&space;\end{pmatrix}" title="\begin{pmatrix} a_{11} & a_{12} & a_{13} \\ a_{21} & a_{22} & a_{23} \\ a_{31} & a_{32} & a_{33} \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ l_{21} & 1 & 0\\ l_{31} & l_{32} & 1 \end{pmatrix} \begin{pmatrix} u_{11} & u_{12} & u_{13} \\ 0 & u_{22} & u_{23} \\ 0 & 0 & u_{33} \end{pmatrix}" /></a>


### 2ª Tarefa - Decomposição QR
  QR é uma forma de fatoração de uma matriz _A_, não singular, como o produto de uma matriz cujas colunas são verores ortogonais e uma matriz triangular superior resultado da ortonormalização de Gram-Schmidt. Também utilizada em análise numérica para resolver sistemas de equações (mais eficientemente) ou encontrar as matrizes inversas.
  
  Então, sendo as matrizes quadradas de ordem qualquer, a equação:
<a href="https://www.codecogs.com/eqnedit.php?latex=A&space;=&space;QR" target="_blank"><img src="https://latex.codecogs.com/gif.latex?A&space;=&space;QR" title="A = QR" /></a> é desenvolvida a partir do processo de Gram-Schmidt, para realizar a ortonormalização nas colunas da matriz Q.

Considere o processo, com os vetores coluna de _A_. Obtém-se que:

<a href="https://www.codecogs.com/eqnedit.php?latex=A&space;=&space;\begin{pmatrix}&space;a_1&space;\&space;|&space;&&space;a_2&space;\&space;|&space;&&space;\dots&space;\&space;|&&space;a_n&space;\end{pmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?A&space;=&space;\begin{pmatrix}&space;a_1&space;\&space;|&space;&&space;a_2&space;\&space;|&space;&&space;\dots&space;\&space;|&&space;a_n&space;\end{pmatrix}" title="A = \begin{pmatrix} a_1 \ | & a_2 \ | & \dots \ |& a_n \end{pmatrix}" /></a>

Então, o procedimento realiza algebricamente com as colunas de Q o que é mostrado no GIF:

<a title="Lucas V. Barbosa [Public domain], from Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:Gram-Schmidt_orthonormalization_process.gif"><img width="256" alt="Gram-Schmidt orthonormalization process" src="https://upload.wikimedia.org/wikipedia/commons/e/ee/Gram-Schmidt_orthonormalization_process.gif"></a>

Processo é realizado através do algoritmo:

<a href="https://www.codecogs.com/eqnedit.php?latex=u_1&space;=&space;a_1,&space;\&space;e_1&space;=&space;\frac{u_1}{\left&space;\|&space;u_1&space;\right&space;\|};" target="_blank"><img src="https://latex.codecogs.com/gif.latex?u_1&space;=&space;a_1,&space;\&space;e_1&space;=&space;\frac{u_1}{\left&space;\|&space;u_1&space;\right&space;\|};" title="u_1 = a_1, \ e_1 = \frac{u_1}{\left \| u_1 \right \|};" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=u_2&space;=&space;a_2&space;-&space;(a_2&space;\cdot&space;e_1)e_1,&space;\&space;e_2&space;=&space;\frac{u_2}{\left&space;\|&space;u_2&space;\right&space;\|};" target="_blank"><img src="https://latex.codecogs.com/gif.latex?u_2&space;=&space;a_2&space;-&space;(a_2&space;\cdot&space;e_1)e_1,&space;\&space;e_2&space;=&space;\frac{u_2}{\left&space;\|&space;u_2&space;\right&space;\|};" title="u_2 = a_2 - (a_2 \cdot e_1)e_1, \ e_2 = \frac{u_2}{\left \| u_2 \right \|};" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=u_{k&plus;1}&space;=&space;a_{k&plus;1}&space;-&space;(a_{k&plus;1}&space;\cdot&space;e_1)e_1&space;-&space;\dots&space;-&space;(a_{k&plus;1}&space;\cdot&space;e_k)e_k,&space;\&space;e_{k&plus;1}&space;=&space;\frac{u_{k&plus;1}}{\left&space;\|&space;u_{k&plus;1}&space;\right&space;\|};" target="_blank"><img src="https://latex.codecogs.com/gif.latex?u_{k&plus;1}&space;=&space;a_{k&plus;1}&space;-&space;(a_{k&plus;1}&space;\cdot&space;e_1)e_1&space;-&space;\dots&space;-&space;(a_{k&plus;1}&space;\cdot&space;e_k)e_k,&space;\&space;e_{k&plus;1}&space;=&space;\frac{u_{k&plus;1}}{\left&space;\|&space;u_{k&plus;1}&space;\right&space;\|};" title="u_{k+1} = a_{k+1} - (a_{k+1} \cdot e_1)e_1 - \dots - (a_{k+1} \cdot e_k)e_k, \ e_{k+1} = \frac{u_{k+1}}{\left \| u_{k+1} \right \|};" /></a>

Já a matriz R tem suas colunas preenchidas com os valores _a_ multiplicados pelos vetores ortogonais conhecidos até a iteração atual do algoritmo. (Imagine que o vetor é inicializado em zero e vai sendo preenchido, facilita a visualização). 

<a href="https://www.codecogs.com/eqnedit.php?latex=A&space;=&space;\begin{pmatrix}&space;a_1&space;\&space;|&space;&&space;a_2&space;\&space;|&space;&&space;\dots&space;\&space;|&&space;a_n&space;\end{pmatrix}&space;=&space;\begin{pmatrix}&space;e_1&space;\&space;|&space;&&space;e_2&space;\&space;|&space;&&space;\dots&space;\&space;|&&space;e_n&space;\end{pmatrix}&space;\begin{pmatrix}&space;a_1&space;e_1&space;&&space;a_2&space;e_1&space;&&space;\dots&space;&&space;a_n&space;e_1\\&space;0&space;&&space;a_2&space;e_2&space;&&space;\dots&space;&&space;a_n&space;e_2\\&space;\vdots&space;&&space;\vdots&space;&&space;\ddots&space;&\vdots&space;\\&space;0&space;&&space;0&space;&&space;\dots&space;&&space;a_n&space;e_n&space;\end{pmatrix}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?A&space;=&space;\begin{pmatrix}&space;a_1&space;\&space;|&space;&&space;a_2&space;\&space;|&space;&&space;\dots&space;\&space;|&&space;a_n&space;\end{pmatrix}&space;=&space;\begin{pmatrix}&space;e_1&space;\&space;|&space;&&space;e_2&space;\&space;|&space;&&space;\dots&space;\&space;|&&space;e_n&space;\end{pmatrix}&space;\begin{pmatrix}&space;a_1&space;e_1&space;&&space;a_2&space;e_1&space;&&space;\dots&space;&&space;a_n&space;e_1\\&space;0&space;&&space;a_2&space;e_2&space;&&space;\dots&space;&&space;a_n&space;e_2\\&space;\vdots&space;&&space;\vdots&space;&&space;\ddots&space;&\vdots&space;\\&space;0&space;&&space;0&space;&&space;\dots&space;&&space;a_n&space;e_n&space;\end{pmatrix}" title="A = \begin{pmatrix} a_1 \ | & a_2 \ | & \dots \ |& a_n \end{pmatrix} = \begin{pmatrix} e_1 \ | & e_2 \ | & \dots \ |& e_n \end{pmatrix} \begin{pmatrix} a_1 e_1 & a_2 e_1 & \dots & a_n e_1\\ 0 & a_2 e_2 & \dots & a_n e_2\\ \vdots & \vdots & \ddots &\vdots \\ 0 & 0 & \dots & a_n e_n \end{pmatrix}" /></a>

Exemplo: https://www.math.ucla.edu/~yanovsky/Teaching/Math151B/handouts/GramSchmidt.pdf

### 3ª Tarefa - Decomposição CP - ALS
O propósito do _Alternating Least Squares_ (ALS) é computar a decomposição CP de forma iterativa, assumindo que o número de componentes é fixado. Tendo o tensor de terceira ordem <a href="https://www.codecogs.com/eqnedit.php?latex={\mathbf{X}}&space;\in&space;\mathbb{R}^{I&space;\times&space;J&space;\times&space;K}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?{\mathbf{X}}&space;\in&space;\mathbb{R}^{I&space;\times&space;J&space;\times&space;K}" title="{\mathbf{X}} \in \mathbb{R}^{I \times J \times K}" /></a> o objetivo é construir <a href="https://www.codecogs.com/eqnedit.php?latex=\hat{\mathbf{X}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\hat{\mathbf{X}}" title="\hat{\mathbf{X}}" /></a>, aproximando o tensor original utilizando as matrizes fatores aproximadas <a href="https://www.codecogs.com/eqnedit.php?latex=\hat{\mathbf{A}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\hat{\mathbf{A}}" title="\hat{\mathbf{A}}" /></a>, <a href="https://www.codecogs.com/eqnedit.php?latex=\hat{\mathbf{B}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\hat{\mathbf{B}}" title="\hat{\mathbf{B}}" /></a> e <a href="https://www.codecogs.com/eqnedit.php?latex=\hat{\mathbf{C}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\hat{\mathbf{C}}" title="\hat{\mathbf{C}}" /></a>.

O algoritmo inicia com a geração das matrizes fatores originais <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{A}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{A}" title="\mathbf{A}" /></a>, <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{B}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{B}" title="\mathbf{B}" /></a> e <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{C}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{C}" title="\mathbf{C}" /></a>, com elas o tensor <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{X}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{X}" title="\mathbf{X}" /></a> original é formado utilizando um dos modos descritos a partir do produto de Khatri-Rao, tal que: 

<a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{X}_{(1)}&space;\approx&space;\mathbf{A}(\mathbf{C}\odot&space;\mathbf{B})^T" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{X}_{(1)}&space;\approx&space;\mathbf{A}(\mathbf{C}\odot&space;\mathbf{B})^T" title="\mathbf{X}_{(1)} \approx \mathbf{A}(\mathbf{C}\odot \mathbf{B})^T" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{X}_{(2)}&space;\approx&space;\mathbf{B}(\mathbf{C}\odot&space;\mathbf{A})^T" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{X}_{(2)}&space;\approx&space;\mathbf{B}(\mathbf{C}\odot&space;\mathbf{A})^T" title="\mathbf{X}_{(2)} \approx \mathbf{B}(\mathbf{C}\odot \mathbf{A})^T" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{X}_{(3)}&space;\approx&space;\mathbf{C}(\mathbf{B}\odot&space;\mathbf{A})^T" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{X}_{(3)}&space;\approx&space;\mathbf{C}(\mathbf{B}\odot&space;\mathbf{A})^T" title="\mathbf{X}_{(3)} \approx \mathbf{C}(\mathbf{B}\odot \mathbf{A})^T" /></a>

Dependendo do modo (1, 2 ou 3) utilizado, uma função de *folding* (desmatriciação) é aplicada para reorganizar o tensor <a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{X}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{X}" title="\mathbf{X}" /></a>

No caso do modo 1, basta reorganizar a matriz de acordo com as dimensões <a href="https://www.codecogs.com/eqnedit.php?latex=I" target="_blank"><img src="https://latex.codecogs.com/gif.latex?I" title="I" /></a>, <a href="https://www.codecogs.com/eqnedit.php?latex=J" target="_blank"><img src="https://latex.codecogs.com/gif.latex?J" title="J" /></a> e <a href="https://www.codecogs.com/eqnedit.php?latex=K" target="_blank"><img src="https://latex.codecogs.com/gif.latex?K" title="K" /></a>, conhecidas.

<a href="https://www.codecogs.com/eqnedit.php?latex=\texttt{X=reshape(X1,[I,J,K]);}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\texttt{X=reshape(X1,[I,J,K]);}" title="\texttt{X=reshape(X1,[I,J,K]);}" /></a>

O resultado é um problema de valor mínimo global: 

<a href="https://www.codecogs.com/eqnedit.php?latex=\underset{\hat{\boldsymbol{\mathbf{X}}}}{min}\left&space;\|&space;\boldsymbol{\mathbf{X}}&space;-&space;\hat{\boldsymbol{\mathbf{X}}}&space;\right&space;\|" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\underset{\hat{\boldsymbol{\mathbf{X}}}}{min}\left&space;\|&space;\boldsymbol{\mathbf{X}}&space;-&space;\hat{\boldsymbol{\mathbf{X}}}&space;\right&space;\|" title="\underset{\hat{\boldsymbol{\mathbf{X}}}}{min}\left \| \boldsymbol{\mathbf{X}} - \hat{\boldsymbol{\mathbf{X}}} \right \|" /></a>

E essa minimazação é dada pelo o algoritmo que fixa, por exemplo *B* e *C* para obter *A*, de acordo com manipulação das equações utilizadas para obter os modos 1, 2 e 3 do tensor. Em seguida, fixa-se *A* e *C* para obter *B*. Por último, fixa-se *A* and *B* para obter *C*. Isso segue repetindo até que o critério de parada ou convergência seja satisfeito. 

<a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{\hat{A}}&space;=&space;\mathbf{X}_{(1)}&space;[(\mathbf{C}\odot&space;\mathbf{B})^T]^\dagger" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{\hat{A}}&space;=&space;\mathbf{X}_{(1)}&space;[(\mathbf{C}\odot&space;\mathbf{B})^T]^\dagger" title="\mathbf{\hat{A}} = \mathbf{X}_{(1)} [(\mathbf{C}\odot \mathbf{B})^T]^\dagger" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{\hat{B}}&space;=&space;\mathbf{X}_{(2)}&space;[(\mathbf{C}\odot&space;\mathbf{A})^T]^\dagger" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{\hat{B}}&space;=&space;\mathbf{X}_{(2)}&space;[(\mathbf{C}\odot&space;\mathbf{A})^T]^\dagger" title="\mathbf{\hat{B}} = \mathbf{X}_{(2)} [(\mathbf{C}\odot \mathbf{A})^T]^\dagger" /></a>

<a href="https://www.codecogs.com/eqnedit.php?latex=\mathbf{\hat{C}}&space;=&space;\mathbf{X}_{(3)}&space;[(\mathbf{B}\odot&space;\mathbf{A})^T]^\dagger" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\mathbf{\hat{C}}&space;=&space;\mathbf{X}_{(3)}&space;[(\mathbf{B}\odot&space;\mathbf{A})^T]^\dagger" title="\mathbf{\hat{C}} = \mathbf{X}_{(3)} [(\mathbf{B}\odot \mathbf{A})^T]^\dagger" /></a>

Observe que ao fixar tudo, exceto uma matriz, o problema é reduzido a um problema de Erro de Mínimos Quadrados (MSE), em forma matricial, que é resolvido através da norma de Frobenius:

<a href="https://www.codecogs.com/eqnedit.php?latex=\left&space;\|&space;\mathbf{X}_{(1)}&space;-&space;\hat{\mathbf{A}}(\mathbf{\hat{C}}\odot&space;\mathbf{\hat{B}})\right&space;\|_F" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\left&space;\|&space;\mathbf{X}_{(1)}&space;-&space;\hat{\mathbf{A}}(\mathbf{\hat{C}}\odot&space;\mathbf{\hat{B}})\right&space;\|_F" title="\left \| \mathbf{X}_{(1)} - \hat{\mathbf{A}}(\mathbf{\hat{C}}\odot \mathbf{\hat{B}})\right \|_F" /></a>

Podendo ser utilizado no formato normalizado NMSE:

<a href="https://www.codecogs.com/eqnedit.php?latex=\frac{\left&space;\|&space;\boldsymbol{\mathbf{X}}&space;-&space;\hat{\boldsymbol{\mathbf{X}}}&space;\right&space;\|_{F}^2}{\left&space;\|&space;\boldsymbol{\mathbf{X}}\right&space;\|_{F}^2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\frac{\left&space;\|&space;\boldsymbol{\mathbf{X}}&space;-&space;\hat{\boldsymbol{\mathbf{X}}}&space;\right&space;\|_{F}^2}{\left&space;\|&space;\boldsymbol{\mathbf{X}}\right&space;\|_{F}^2}" title="\frac{\left \| \boldsymbol{\mathbf{X}} - \hat{\boldsymbol{\mathbf{X}}} \right \|_{F}^2}{\left \| \boldsymbol{\mathbf{X}}\right \|_{F}^2}" /></a>

% Monte Carlo

### 4ª Tarefa - Decomposição TUCKER
% Em construção
