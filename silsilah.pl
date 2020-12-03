lakilaki(ismail).
lakilaki(jamal).
lakilaki(taebdjakarta).
lakilaki(bandar).
lakilaki(sidang).
lakilaki(anto).
lakilaki(sulaiman).
lakilaki(ridwan).
lakilaki(edo).
lakilaki(reza).
lakilaki(andy).
lakilaki(dedy).
lakilaki(daffa).
lakilaki(bibie).

perempuan(saraha).
perempuan(yulianti).
perempuan(dahniar).
perempuan(siti).
perempuan(darmawati).
perempuan(darlina).
perempuan(atik).
perempuan(rosmeti).
perempuan(puput).
perempuan(ratu).
perempuan(wulan).
perempuan(sarah).
perempuan(maun).

menikah(ismail,saraha).
menikah(jamal,yulianti).
menikah(taebdjakarta,dahniar).
menikah(sidang,darmawati).
menikah(anto,darlina).
menikah(sulaiman,atik).
menikah(ridwan,rosmeti).

anak(taebdjakarta,ismail).

anak(dahniar,jamal).
anak(siti,jamal).
anak(bandar,jamal).

anak(sidang,taebdjakarta).
anak(darlina,taebdjakarta).
anak(sulaiman,taebdjakarta).
anak(rosmeti,taebdjakarta).

anak(edo,sidang).
anak(reza,sidang).
anak(puput,sidang).
anak(ratu,sidang).

anak(andy,anto).
anak(dedy,anto).

anak(wulan,sulaiman).
anak(daffa,sulaiman).

anak(bibie,ridwan).
anak(sarah,ridwan).
anak(maun,ridwan).

orangtua(A,B,C):-anak(A,B), menikah(B,C).
kakeknenek(A,D,E) :-anak(A,B), anak(B,D), menikah(D,E);anak(A,B),menikah(B,C),anak(C,D),menikah(D,E).
kakek(A,D):-anak(A,B), anak(B,D),menikah(D,E);anak(A,B),menikah(B,C),anak(C,D),menikah(D,E).
nenek(A,E):-anak(A,B), anak(B,D),menikah(D,E);anak(A,B),menikah(B,C),anak(C,D),menikah(D,E).
saudara(A,F) :-anak(A,B), anak(F,B), (F) \== (A).
saudaralakilaki(A,F):-anak(A,B), anak(F,B), (F) \== (A), not(perempuan(F)).
saudaraperempuan(A,F):-anak(A,B), anak(F,B), (F) \== (A), perempuan(F).
sepupu(A,G):-anak(A,B),anak(B,D),anak(G,F),anak(F,D), not(anak(G,B));anak(A,B),menikah(B,C),anak(C,D),anak(G,F),anak(F,D),not(anak(G,B)).
keponakankandung(A,I):-anak(I,J),menikah(J,C),anak(C,B),anak(A,B).
pamanDariIbu(A,K):-anak(A,B),menikah(B,C),anak(C,D),anak(K,D), not(perempuan(K)).
bibiDariIbu(A,K):-anak(A,B),menikah(B,C),anak(C,D),anak(K,D),perempuan(K),(K)\==(C).
bibiDariIbu(A,N):-anak(A,B),menikah(B,C),anak(C,D),anak(K,D),menikah(K,N),perempuan(N).
cucu(D,E,A):-menikah(D,E),anak(B,D),anak(A,B);anak(A,B),menikah(B,C),anak(C,D),menikah(D,E).
saudaranenek(A,B):-nenek(A,X),saudara(X,B).