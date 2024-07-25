goal([0,0,0,0,0,0,0,1,1,1,1,1,1,1]).

transition(X,Y):- lr_c1v1(X,Y).
transition(X,Y):- lr_c2v2(X,Y).
transition(X,Y):- lr_c3v3(X,Y).
transition(X,Y):- lr_v1(X,Y).
transition(X,Y):- lr_v2(X,Y).
transition(X,Y):- lr_v3(X,Y).
transition(X,Y):- lr_c1(X,Y).
transition(X,Y):- lr_c2(X,Y).
transition(X,Y):- lr_c3(X,Y).
transition(X,Y):- lr_c1c2(X,Y).
transition(X,Y):- lr_c1c3(X,Y).
transition(X,Y):- lr_c2c3(X,Y).
transition(X,Y):- lr_v1v2(X,Y).
transition(X,Y):- lr_v1v3(X,Y).
transition(X,Y):- lr_v2v3(X,Y).


transition(X,Y):- rl_c1v1(X,Y).
transition(X,Y):- rl_c2v2(X,Y).
transition(X,Y):- rl_c3v3(X,Y).
transition(X,Y):- rl_v1(X,Y).
transition(X,Y):- rl_v2(X,Y).
transition(X,Y):- rl_v3(X,Y).
transition(X,Y):- rl_c1(X,Y).
transition(X,Y):- rl_c2(X,Y).
transition(X,Y):- rl_c3(X,Y).
transition(X,Y):- rl_c1c2(X,Y).
transition(X,Y):- rl_c1c3(X,Y).
transition(X,Y):- rl_c2c3(X,Y).
transition(X,Y):- rl_v1v2(X,Y).
transition(X,Y):- rl_v1v3(X,Y).
transition(X,Y):- rl_v2v3(X,Y).


%thao tac chuyen trang thai tu trai sang phai

lr_c1v1([1,1,1,C2,V2,C3,V3,0,0,0,PC2,PV2,PC3,PV3],[0,0,0,C2,V2,C3,V3,1,1,1,PC2,PV2,PC3,PV3]).
lr_c2v2([1,C1,V1,1,1,C3,V3,0,PC1,PV1,0,0,PC3,PV3],[0,C1,V1,0,0,C3,V3,1,PC1,PV1,1,1,PC3,PV3]).
lr_c3v3([1,C1,V1,C2,V2,1,1,0,PC1,PV1,PC2,PV2,0,0],[0,C1,V1,C2,V2,0,0,1,PC1,PV1,PC2,PV2,1,1]).
lr_c1([1,1,V1,C2,V2,C3,V3,0,0,PV1,PC2,PV2,PC3,PV3],[0,0,V1,C2,V2,C3,V3,1,1,PV1,PC2,PV2,PC3,PV3]).
lr_c2([1,C1,V1,1,V2,C3,V3,0,PC1,PV1,0,PV2,PC3,PV3],[0,C1,V1,0,V2,C3,V3,1,PC1,PV1,1,PV2,PC3,PV3]).
lr_c3([1,C1,V1,C2,V2,1,V3,0,PC1,PV1,PC2,PV2,0,PV3],[0,C1,V1,C2,V2,0,V3,1,PC1,PV1,PC2,PV2,1,PV3]).
lr_v1([1,C1,1,C2,V2,C3,V3,0,PC1,0,PC2,PV2,PC3,PV3],[0,C1,0,C2,V2,C3,V3,1,PC1,1,PC2,PV2,PC3,PV3]).
lr_v2([1,C1,V1,C2,1,C3,V3,0,PC1,PV1,PC2,0,PC3,PV3],[0,C1,V1,C2,0,C3,V3,1,PC1,PV1,PC2,1,PC3,PV3]).
lr_v3([1,C1,V1,C2,V2,C3,1,0,PC1,PV1,PC2,PV2,PC3,0],[0,C1,V1,C2,V2,C3,0,1,PC1,PV1,PC2,PV2,PC3,1]).
lr_c1c2([1,1,V1,1,V2,C3,V3,0,0,PV1,0,PV2,PC3,PV3],[0,0,V1,0,V2,C3,V3,1,1,PV1,1,PV2,PC3,PV3]).
lr_c1c3([1,1,V1,C2,V2,1,V3,0,0,PV1,PC2,PV2,0,PV3],[0,0,V1,C2,V2,0,V3,1,1,PV1,PC2,PV2,1,PV3]).
lr_c2c3([1,C1,V1,1,V2,1,V3,0,PC1,PV1,0,PV2,0,PV3],[0,C1,V1,0,V2,0,V3,1,PC1,PV1,1,PV2,1,PV3]).
lr_v1v2([1,C1,1,C2,1,C3,V3,0,PC1,0,PC2,0,PC3,PV3],[0,C1,0,C2,0,C3,V3,1,PC1,1,PC2,1,PC3,PV3]).
lr_v1v3([1,C1,1,C2,V2,C3,1,0,PC1,0,PC2,PV2,PC3,0],[0,C1,0,C2,V2,C3,0,1,PC1,1,PC2,PV2,PC3,1]).
lr_v2v3([1,C1,V1,C2,1,C3,1,0,PC1,PV1,PC2,0,PC3,0],[0,C1,V1,C2,0,C3,0,1,PC1,PV1,PC2,1,PC3,1]).

%thao tac chuyen trang thai tu phai sang trai

rl_c1v1([0,0,0,C2,V2,C3,V3,1,1,1,PC2,PV2,PC3,PV3],[1,1,1,C2,V2,C3,V3,0,0,0,PC2,PV2,PC3,PV3]).
rl_c2v2([0,C1,V1,0,0,C3,V3,1,PC1,PV1,1,1,PC3,PV3],[1,C1,V1,1,1,C3,V3,0,PC1,PV1,0,0,PC3,PV3]).
rl_c3v3([0,C1,V1,C2,V2,0,0,1,PC1,PV1,PC2,PV2,1,1],[1,C1,V1,C2,V2,1,1,0,PC1,PV1,PC2,PV2,0,0]).
rl_c1([0,0,V1,C2,V2,C3,V3,1,1,PV1,PC2,PV2,PC3,PV3],[1,1,V1,C2,V2,C3,V3,0,0,PV1,PC2,PV2,PC3,PV3]).
rl_c2([0,C1,V1,0,V2,C3,V3,1,PC1,PV1,1,PV2,PC3,PV3],[1,C1,V1,1,V2,C3,V3,0,PC1,PV1,0,PV2,PC3,PV3]).
rl_c3([0,C1,V1,C2,V2,0,V3,1,PC1,PV1,PC2,PV2,1,PV3],[1,C1,V1,C2,V2,1,V3,0,PC1,PV1,PC2,PV2,0,PV3]).
rl_v1([0,C1,0,C2,V2,C3,V3,1,PC1,1,PC2,PV2,PC3,PV3],[1,C1,1,C2,V2,C3,V3,0,PC1,0,PC2,PV2,PC3,PV3]).
rl_v2([0,C1,V1,C2,0,C3,V3,1,PC1,PV1,PC2,1,PC3,PV3],[1,C1,V1,C2,1,C3,V3,0,PC1,PV1,PC2,0,PC3,PV3]).
rl_v3([0,C1,V1,C2,V2,C3,0,1,PC1,PV1,PC2,PV2,PC3,1],[1,C1,V1,C2,V2,C3,1,0,PC1,PV1,PC2,PV2,PC3,0]).
rl_c1c2([0,0,V1,0,V2,C3,V3,1,1,PV1,1,PV2,PC3,PV3],[1,1,V1,1,V2,C3,V3,0,0,PV1,0,PV2,PC3,PV3]).
rl_c1c3([0,0,V1,C2,V2,0,V3,1,1,PV1,PC2,PV2,1,PV3],[1,1,V1,C2,V2,1,V3,0,0,PV1,PC2,PV2,0,PV3]).
rl_c2c3([0,C1,V1,0,V2,0,V3,1,PC1,PV1,1,PV2,1,PV3],[1,C1,V1,1,V2,1,V3,0,PC1,PV1,0,PV2,0,PV3]).
rl_v1v2([0,C1,0,C2,0,C3,V3,1,PC1,1,PC2,1,PC3,PV3],[1,C1,1,C2,1,C3,V3,0,PC1,0,PC2,0,PC3,PV3]).
rl_v1v3([0,C1,0,C2,V2,C3,0,1,PC1,1,PC2,PV2,PC3,1],[1,C1,1,C2,V2,C3,1,0,PC1,0,PC2,PV2,PC3,0]).
rl_v2v3([0,C1,V1,C2,0,C3,0,1,PC1,PV1,PC2,1,PC3,1],[1,C1,V1,C2,1,C3,1,0,PC1,PV1,PC2,0,PC3,0]).

%cac rang buoc
%bo trai

dangerous([_,0,1,1,_,_,_,_,1,0,0,_,_,_]).
dangerous([_,0,1,_,_,1,_,_,1,0,_,_,0,_]).
dangerous([_,1,_,0,1,_,_,_,0,_,1,0,_,_]).
dangerous([_,_,_,0,1,1,_,_,_,_,1,0,0,_]).
dangerous([_,1,_,_,_,0,1,_,0,_,_,_,1,0]).
dangerous([_,_,_,1,_,0,1,_,_,_,0,_,1,0]).

%bo phai

dangerous([_,1,0,0,_,_,_,_,0,1,1,_,_,_]).
dangerous([_,1,0,_,_,0,_,_,0,1,_,_,1,_]).
dangerous([_,0,_,1,0,_,_,_,1,_,0,1,_,_]).
dangerous([_,_,_,1,0,0,_,_,_,_,0,1,1,_]).
dangerous([_,0,_,_,_,1,0,_,1,_,_,_,0,1]).
dangerous([_,_,_,0,_,1,0,_,_,_,1,_,0,1]).

dfs(X,P,[X|P]):- goal(X),!.
dfs(X,P,L):- transition(X,Y),X\=Y,\+member(Y,P),\+dangerous(Y),dfs(Y,[X|P],L).

dfs_y(X,P,[X|P],M):- goal(X),M>=0,!.
dfs_y(X,P,L,M):- transition(X,Y),X\=Y,\+member(Y,P),C is M - 1,
                 \+dangerous(Y),dfs_y(Y,[X|P],L,C).







