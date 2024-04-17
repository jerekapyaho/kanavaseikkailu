1 REM Kanavaseikkailu - k„„nn”s Locomotive BASICista MBASICiin
2 REM (C) Jere K„pyaho / Novicesoft 20/08/86
3 REM Novicesoft, PL 25, 33881 S„„ksj„rvi
10 CLEAR:RANDOMIZE TIME
15 AL%=0:ESI%=0:I%=31:IKKU%=1:J%=17:KA%=1:N%=0:OVI%=0:P%=1:S%=0:SAT%=INT(RND*5):SL%=0:V%=0:K$="":NN$="":S$="":VB$=""
20 DIM AL%(I%),EKU%(J%),EPA%(J%),ET%(I%),IT%(I%),LA%(I%),PO%(I%),YL%(I%),EL$(J%),EP$(J%),K$(1),P$(I%),S$(3)
25 GOSUB 570
30 PRINT CHR$(26):PRINT"KANAVALLA  seikkailemassa":PRINT:PRINT"(C) Jere K„pyaho":PRINT"    Novicesoft":PRINT"    1986"
45 FOR I%=1 TO 31:READ P$(I%):NEXT
50 FOR I%=1 TO 31:READ PO%(I%),IT%(I%),ET%(I%),LA%(I%),YL%(I%),AL%(I%):NEXT
55 FOR J%=1 TO 17:READ EP$(J%):NEXT
56 FOR J%=1 TO 17:READ EPA%(J%),EKU%(J%):NEXT
58 FOR J%=1 TO 17:READ EL$(J%):NEXT
60 PRINT:PRINT"Haluatko ohjeet  (K/E) ?"
65 A$=INKEY$:IF A$="" THEN 65
70 IF A$<>"k" AND A$<>"K" AND A$<>"e" AND A$<>"E" THEN 65
75 IF A$="k" OR A$="K" THEN GOSUB 150
80 PRINT CHR$(26):GOTO 200
100 PA%=PO%(P%):RETURN
101 PA%=IT%(P%):RETURN
102 PA%=ET%(P%):RETURN
103 PA%=LA%(P%):RETURN
104 PA%=YL%(P%):RETURN
105 PA%=AL%(P%):RETURN
110 FOR J%=1 TO 17:IF EPA%(J%)<>0 THEN NEXT J%:PRINT"Sinulla ei ole mit„„n.":GOTO 300
114 PRINT"Sinulla on:"
115 FOR J%=1 TO 17:IF EPA%(J%)<>0 THEN 125
120 PRINT EL$(J%)
125 NEXT J%
126 GOTO 300
130 PRINT ETS$;S$(1);CHR$(34);".":GOTO 300
140 PRINT ETS$;S$(2);CHR$(34);".":GOTO 300
150 PRINT CHR$(26)
151 PRINT" Olet nyt ryhtym„ss„ pelaamaan ns. seikkailupeli„. T„ss„ sinulle muutamia oh-":PRINT"jeita, jotta menestyisit ja kauan viihtyisit pelin parissa."
152 PRINT" Seikkailupeli„ pelataan seuraavasti:":PRINT"Tietokone toimii silmin„si, korvinasi ja k„sin„si. K„ytt„en yksinkertaisia":PRINT"suomenkielisi„ komentoja, kuten OTA KARTTAKEPPI tai TUTKI LUOKKA,teht„v„n„si on"
153 PRINT"l”yt„„ vahtimestari Raimo Iluksen kadonnut avainnippu ja palauttaa se h„nelle.":PRINT"Mutta ole varuillasi: Kanavan koulussa sanotaan tapahtuvan kummallisia asioi-":PRINT"ta  ja monet pulmatilanteet kohtaavat valmistautumatonta."
155 PRINT" Seikkailupeli„ pelatessa on hyv„ tehd„ kartta, koska paikasta toiseen p„„see":PRINT"useimmiten antamalla komennoksi haluamansa ilmansuunnan ensimm„isen kirjaimen":PRINT"kuten 'P'ohjoinen, 'E'tel„ jne. tai joskus my”s 'Y'l”s ja 'A'las. Komennot"
156 PRINT"p„„tet„„n painamalla ENTER-n„pp„int„. Sitten kone analysoi komentosi ja tutkii":PRINT"onko siin„ mit„„n j„rke„. Komennoista tutkitaan vain kunkin sanan nelj„ ensim-":PRINT"m„ist„ kirjainta, joten s„„st„t vaivaa lyhent„m„ll„ vaikka TUTKI KARTTAKE
157 PRINT"muotoon TUTK KART."
158 PRINT" Jos haluat lopettaa pelin kesken, anna komennoksi 'X'. Jos sattuu niin, ett„":PRINT"kokeillessasi eri k„skyj„ paikkakuvaus on h„ipynyt ruudulta, saat sen uudes-":PRINT"taan komennolla 'N'„yt„. Saat my”s tiet„„, mit„ sinulla on mukanasi kirjoitt
159 PRINT"malla 'M'ukana. Muita komentoja: HYPPŽŽ, JUOKSE, TUTKI, TAITA, OTA, PUDOTA,":PRINT"AVAA, SULJE, MENE ym. ym. Kokeilemalla l”ytyy aina lis„„."
160 PRINT:PRINT"ONNEA MATKAAN !!"
161 A$=INKEY$:IF A$="" THEN 161
162 RETURN
170 PRINT"Se kuuluu jollekin opettajalle...hehe.":GOTO 300
171 PRINT"Sen etiketiss„ lukee:  PELIMANNIN VALITUS osa 1":GOTO 300
172 PRINT"Se on s„hk”miehen erikoissekoitusta.":GOTO 300
173 PRINT"Sen n„yt”ss„ on se juuri, joka juuri ja juuri on neli”juuri.":GOTO 300
174 PRINT"Se on hengenvaarallinen.":KAKU%=1:GOTO 300
175 PRINT"Susi jo syntyess„„n...":GOTO 300
176 PRINT"Se pit„„ kovempaa meteli„ kuin Commodore 64.":GOTO 300
177 PRINT"N„yt”ll„ on teksti:":PRINT" Jo muinaiset roomalaiset sanoivat:":PRINT" - Ceterum censeo, Scolarum Canalem esse delendam.":GOTO 300
178 PRINT"Rampe sanoo: 'Takaisin ei ole tulemista ilman avaimia !'":GOTO 300
190 PRINT"Hmm...en ymm„rr„.":GOTO 300
200 PRINT:PRINT P$(P%)
202 IF P%=2 THEN IF SAT%>2 THEN PRINT:PRINT"Karmea V. Paunun bussi ajoi p„„llesi - mit„s hortoilit ajotiell„.":GOTO 920
203 IF P%=16 AND KAKU%<0 THEN 207
204 IF P%=16 THEN KAKU%=KAKU%+1
205 IF P%=16 AND KAKU%>2 THEN PRINT:PRINT"Kahvinkeittimen tuottama s„hk”isku surmaa sinut.":GOTO 920
206 IF P%=29 THEN 920
207 FOR J%=1 TO 17:IF EPA%(J%)<>P% OR EKU%(J%)>4 THEN NEXT J%:GOTO 300
210 PRINT:PRINT"N„kyviss„:"
212 FOR J%=1 TO 17:IF EPA%(J%)<>P% OR EKU%(J%)>4 THEN 217
215 PRINT EP$(J%)
217 NEXT J%
300 ERASE K$
320 PRINT:INPUT K$(1)
330 IF K$(1)="" THEN 320
355 IF LEN(K$(1))=1 THEN 500
400 ERASE S$:K$(1)=K$(1)+" ":AL%=1:SL%=0
404 FOR S%=1 TO 2
405 FOR I%=AL% TO LEN(K$(1))
410 IF MID$(K$(1),I%,1)=" " THEN S$(S%)=MID$(K$(1),AL%,I%-AL%):AL%=I%+1:I%=LEN(K$(1))
415 NEXT I%
420 IF S$(S%)<>" " THEN SL%=SL%+1
425 NEXT S%
435 V%=INSTR(VB$,LEFT$(S$(1)+"**",4)):V%=V%+3
440 IF V%/4=INT(V%/4) THEN V%=INT(V%/4) ELSE V%=0
442 IF V%=0 THEN 130
445 N%=INSTR(NN$,LEFT$(S$(2)+"**",4)):N%=N%+3
446 IF N%/4=INT(N%/4) THEN N%=INT(N%/4) ELSE N%=0
447 IF N%=0 THEN 140
450 IF N%=21 AND P%>2 THEN 465
451 IF N%=22 AND P%>5 THEN 465
456 IF N%<17 THEN IF (EPA%(N%)<>P% AND EPA%(N%)<>0) OR EKU%(N%)>4 THEN PRINT ETN$:GOTO 300
459 IF N%>17 AND N%<27 THEN IF P%<>31 AND P%<>12 AND P%<>3 AND P%<>5 AND P%<>6 AND P%<>13 AND P%<>19 AND P%<>30 AND P%<>31 THEN PRINT ETN$:GOTO 300
460 IF P%=16 AND KAKU%<0 THEN 465
461 IF P%=16 THEN KAKU%=KAKU%+1
462 IF P%=16 AND KAKU%>2 THEN PRINT:PRINT"Kahvinkeittimen tuottama s„hk”isku surmaa sinut.":GOTO 920
465 IF V%=1 THEN 600
466 IF V%=2 THEN 620
467 IF V%=3 THEN 640
468 IF V%=4 THEN 660
469 IF V%=5 THEN 680
470 IF V%=6 THEN 700
471 IF V%=7 THEN 720
472 IF V%=8 THEN 740
473 IF V%=9 THEN 760
474 IF V%=10 THEN 780
475 IF V%=11 THEN 800
476 IF V%=12 THEN 820
477 IF V%=13 THEN 840
478 IF V%=14 THEN 860
479 IF V%=15 THEN 880
480 IF V%=16 THEN 900
495 GOTO 300
500 X%=INSTR("pielyamnx",K$(1))
505 IF X%=0 THEN 190
510 IF X%=1 THEN GOSUB 100
511 IF X%=2 THEN GOSUB 101
512 IF X%=3 THEN GOSUB 102
513 IF X%=4 THEN GOSUB 103
514 IF X%=5 THEN GOSUB 104
515 IF X%=6 THEN GOSUB 105
516 IF X%=7 THEN 110
517 IF X%=8 THEN 200
518 IF X%=9 THEN 980
530 IF PA%=0 THEN PRINT"Et voi menn„ siihen suuntaan.":GOTO 300
540 P%=PA%:GOTO 200
570 VB$="annaavaahyppjuokkiiplue*ly”*meneota*panepoimpoltpudosuljtaittutk"
575 NN$="avaikartlehtnippperusatesivetohvarvodiskpakelaskkeittietlevyohjavahtfiikikkukaidkoulluokmikrovi*painpianp”ntsis„ulosholmalasyl”s"
580 ETN$="Ei t„„ll„ n„y mit„„n sellaista.":ESO$="Ei sinulla ole sit„.":ENVOI$="Ei...en usko ett„ voin.":ES$="Ei t„„ll„ ole sellaista ":EAV$="avattavaa.":EAS$="suljettavaa.":SUL$=" on suljettu.":AVO$=" on nyt auki.":ETS$="En tunne sanaa "+CHR$(34)
585 RETURN
600 IF N%>12 THEN PRINT ENVOI$:GOTO 300
602 IF P%<>23 AND P%<>8 THEN PRINT"Vaan ei oo ket„„n kelle antais mit„„n.":GOTO 300
604 IF EPA%(N%)<>0 THEN PRINT ESO$:GOTO 300
607 IF P%=23 THEN 610
608 IF P%=8 THEN 612
610 IF N%<>9 THEN PRINT"Leena-Maija sulkee sinut onnesta vinkuen syliins„.  Et saa ilmaa...tukehdut.":GOTO 920 ELSE PRINT"Leena-Maija ottaa ilahtuneena vastaan kirjansa ja antaa sinulle avainnipun.":EPA%(9)=-1:EPA%(4)=0:EKU%(4)=1:GOTO 300
612 IF N%<>4 THEN PRINT"Rampe ei huoli muuta kuin oman avainnippunsa.":GOTO 300 ELSE GOTO 990
620 IF P%<>5 AND P%<>6 AND P%<>31 THEN PRINT"Ei t„„ll„ n„y mit„„n avattavaa.":GOTO 300
621 IF P%=5 OR P%=6 THEN 624
622 IF P%=21 THEN 627
623 GOTO 300
624 IF N%<>24 THEN PRINT ES$;EAV$:GOTO 300
625 IF EPA%(1)<>0 THEN PRINT"Mill„s sen avaisin ?":GOTO 300
626 OVI%=1:PRINT"Ovi";AVO$:GOTO 300
627 IF N%<>19 THEN PRINT ES$;EAV$:GOTO 300
628 IKKU%=1:PRINT"Ikkuna";AVO$:GOTO 300
640 IF P%<>12 THEN PRINT"Hyppiminen yleens„kin on varsin hy”dyt”nt„ hommaa.":GOTO 300
641 IF N%<>31 AND N%<>32 THEN 190
642 IF N%=32 THEN PRINT"Vai viel„ yl”s...":GOTO 300
643 IF N%=31 THEN 645
645 PRINT:PRINT"Katkaisit pahasti niskasi ja muitakin luita pudottuasi  - varomattomuuttasi -   kaiteen yli alas juhlasaliin.":GOTO 920
658 GOTO 300
660 IF P%<>12 AND P%<>4 THEN PRINT"Ei. Juokseminen on rahvaanomaista.":GOTO 300
662 IF P%=12 THEN 645
664 IF P%<>4 THEN PRINT"Ei auta. Olet yh„ pahemmin eksyksiss„.":GOTO 300
680 IF P%<>31 AND P%<>3 THEN PRINT"Ota rauhallisesti, k„yt„ tavallisia keinoja.":GOTO 300
682 IF P%=31 THEN 686
683 IF P%=3 THEN 688
686 IF N%>27 THEN PRINT"Ikkunasta p„„see ihan menem„ll„kin.":GOTO 300
688 IF N%>27 THEN PRINT"Hiljaa m„ess„.":GOTO 300
698 GOTO 300
700 IF EPA%(N%)<>0 THEN PRINT ESO$:GOTO 300
701 IF N%<>3 AND N%<>9 THEN PRINT"Jaa-a...":GOTO 300
702 IF N%=3 THEN PRINT"Eiih...se on tyls„„ luettavaa.":GOTO 300
705 IF N%=9 THEN PRINT"Hyi, h„pe„ ! Ei opettajien arvostelukirjoja saa lukea !":GOTO 300
720 IF N%<>17 THEN PRINT"Tuskin tokenee.":GOTO 300
725 PRINT"Rampe suuttuu ja ly” takaisin niin lujaa ett„ silmiss„si mustenee...heit„tp„    jopa veivisi (ruots. kasta bort startaren).":GOTO 920
740 IF P%<>5 AND P%<>6 AND P%<>31 THEN PRINT"K„yt„ mieluummin suuntia.":GOTO 300
741 IF N%<>28 AND N%<>29 THEN 190
742 IF N%=28 THEN 745
743 IF N%=29 THEN 746
744 GOTO 300
745 IF P%=5 THEN IF OVI%=0 THEN PRINT"Ovi";SUL$:GOTO 300 ELSE P%=6:GOTO 200
746 IF P%=6 THEN IF OVI%=0 THEN PRINT"Ovi";SUL$:GOTO 300 ELSE P%=5:GOTO 200
747 IF P%=31 THEN IF IKKU%=0 THEN PRINT"Ikkuna";SUL$:GOTO 300 ELSE P%=4:GOTO 200
758 GOTO 300
760 IF N%>12 THEN PRINT ENVOI$:GOTO 300
765 IF EPA%(N%)=0 THEN PRINT"Ei kun SE sinulla jo on.":GOTO 300
767 IF KA%>3 THEN PRINT"Et voi kantaa enemp„„.":GOTO 300
769 PRINT"Selv„...mukana on.":EPA%(N%)=0:KA%=KA%+1:GOTO 300
778 GOTO 300
780 IF EPA%(N%)<>0 THEN PRINT ESO$:GOTO 300
781 IF P%<>24 THEN PRINT"Onkohan siit„ niin kamalasti hy”ty„..?":GOTO 300
782 IF N%=10 THEN PRINT"Levyasema nappaa disketin ahnaasti urahtaen. Ja yh„ kummempaa: ruudulle ilmestyyteksti„:"
783 PRINT:PRINT"' Kyll„ el„m„ on ankeeta...kaikki vaan sanoo ett„  soita Tauno ja  laula Tauno  mutta miksei kukaan anna Taunolle ruokaa. N„lk„„n kuolee Tauno ! '"
784 EPA%(10)=-1:KA%=KA%-1:GOTO 300
800 PRINT"K„yt„ mieluummin yksinkertaisesti sanaa 'ota'.":GOTO 300
820 IF N%=21 THEN 824
821 IF EPA%(N%)<>0 THEN PRINT ESO$:GOTO 300
822 GOTO 825
824 PRINT:PRINT"Siit„ l„hti palamaan iloisesti Kanavan koulu...ei sinua t„st„ ainakaan kiitet„.":FOR T=1 TO 2500:NEXT T:PRINT:PRINT"Seisot koulun savuavissa raunioissa. Se paloi maan tasalle sinun sytytt„m„n„si.":GOTO 980
825 PRINT"No...siin„ meni hyv„ sellainen.":EPA%(N%)=-1:GOTO 300
840 IF N%>12 THEN PRINT ENVOI$:GOTO 300
841 IF EPA%(N%)<>0 THEN PRINT ESO$:GOTO 300
842 IF KA%<1 THEN PRINT"Ei ole paljoa pudotettavaa.":GOTO 300
844 IF N%=11 THEN IF P%=16 THEN 857 ELSE IF KAKU%>2 THEN PRINT:PRINT"Kahvinkeittimest„ tullut s„hk”isku surmaa sinut.":GOTO 920
848 PRINT"Selv„...pudotettu.":EPA%(N%)=P%:KA%=KA%-1:GOTO 300
857 PRINT"Keitin pulputtaa hetken iloisesti... se on nyt vaaraton.":KAKU%=-1:EPA%(11)=-1:KA%=KA%-1:EP$(13)="Kahvinkeitin.":GOTO 300
858 GOTO 300
860 IF P%<>5 AND P%<>6 AND P%<>31 THEN PRINT"Ei t„„ll„ ole mit„„n suljettavaa.":GOTO 300
861 IF P%=5 OR P%=6 THEN 864
862 IF P%=31 THEN 867
863 GOTO 300
864 IF N%<>24 THEN PRINT ES$+EAS$:GOTO 300
866 OVI%=0:PRINT"Ovi"+SUL$:GOTO 300
867 IF N%<>19 THEN PRINT ES$+EAS$:GOTO 300
868 IKKU%=0:PRINT"Ikkuna"+SUL$:GOTO 300
878 GOTO 300
880 IF N%>12 THEN PRINT ENVOI$:GOTO 300
881 IF EPA%(N%)<>0 THEN PRINT ESO$:GOTO 300
882 IF N%=2 THEN PRINT"Jaha. Kaksi karttakeppi„, vai ?":KA%=KA%-1:EPA%(2)=-1:GOTO 300
883 IF N%=10 THEN PRINT"Niin, t„t„ EI saanut tehd„ disketeille.":KA%=KA%-1:EPA%(10)=-1:GOTO 300
884 PRINT"En suosittele.":GOTO 300
900 IF N%=21 THEN PRINT"Koulu on koulu.":GOTO 300
901 IF N%=22 THEN PRINT"Luokka on luokka.":GOTO 300
904 IF N%>12 THEN 907
905 IF EPA%(N%)<>0 THEN PRINT ESO$:GOTO 300
906 IF N%<9 OR N%>17 THEN PRINT "Ei maksa vaivaa.":GOTO 300
907 TU%=N%-8
908 IF TU%=1 THEN 170
909 IF TU%=2 THEN 171
910 IF TU%=3 THEN 172
911 IF TU%=4 THEN 173
912 IF TU%=5 THEN 174
913 IF TU%=6 THEN 175
914 IF TU%=7 THEN 176
915 IF TU%=8 THEN 177
916 IF TU%=9 THEN 178
917 GOTO 300
920 PRINT"Olet kuollut, tyystin kuollut."
980 PRINT:PRINT"Haluatko uuden pelin  (K/E) ?"
981 VA$=INKEY$:IF VA$="" THEN 981
982 IF VA$<>"E" AND VA$<>"e" AND VA$<>"K" AND VA$<>"k" THEN 981
983 IF VA$="k" OR VA$="K" THEN RUN
984 IF VA$="e" OR VA$="E" THEN PRINT CHR$(26):PRINT"(C) Novicesoft 1986":PRINT"Kaikki oikeudet pid„tet„„n."
985 WHILE INKEY$="":WEND
986 RUN
990 PRINT CHR$(26):FOR T=1 TO 1500:NEXT:PRINT"Onneksi olkoon !!":PRINT:PRINT"Olet selvitt„nyt Kanavan koulun arvoituksen. Rampe taputtaa sinua toverillisestiselk„„n ja kaikki opettajat ja oppilaat rynt„„v„t onnittelemaan sinua."
991 PRINT:PRINT"Rehtori Palmu ojentaa sinulle kunniaoppilaan valtakirjan ja samettityynyll„ ma- kaavan kultaisen WC:n avaimen."
992 WHILE INKEY$="":WEND
993 PRINT:PRINT"Novicesoft puolestaan haluaa antaa sinulle tosi seikkailijan arvonimen.         Olemme nimitt„in sit„ mielt„, ett„ tietokonepeleist„ parhaita ovat seikkailu-   pelit, sill„ niiden ratkaisemiseen ei tarvita nopeita refleksej„ vaan „ly„ !"
994 PRINT:PRINT:PRINT"Moi !"
995 FOR T=1 TO 25:FOR S=1 TO 500:NEXT S:PRINT:NEXT T
1010 DATA "Olet Kanavan koulun portilla.Toisella puolellasi  on  vilkkaasti  liikenn”ity   ajotie bussipys„kkeineen, toisella alasp„in viett„v„ m„ki. Taivas on sininen,   r„k„ttirastaat sirkuttavat ja aurinko paistaa."
1020 DATA "Olet keskell„ vilkkaasti liikenn”ity„ kaksikaistaista ajotiet„.   Hurjastelevat autoilijat antavat sinulle vihaisia „„nimerkkej„."
1030 DATA "Seisot loivasti alas luoteeseen viett„v„ss„ m„ess„.   Ymp„rill„si aukeaa koulun piha, ja takanasi on koulun portti.  Koulurakennus kohoaa edess„si."
1040 DATA "Olet eksyksiss„ Kanavan koulun pihalla."
1050 DATA "Seisot koulun betonisilla portailla. Takanasi aukeaa piha. Kuulet veden virtaa- van kanavassa ja autojen ajavan tiell„. Koulun automaattinen kello pirisee  n.  20 sekuntia."
1060 DATA "Kanavan koulun eteisaulassa.   Vanhat r„nsistyneet naulakot tuijottavat sinua.  Miss„„n niist„ ei ole yht„„n takkia.  N„kyviss„ on yksi liukuovi ja kolme tavallista ovea."
1070 DATA "Olet koulun suuren juhlasalin pohjoisessa p„„ss„. Havaitset penkkien revityt    p„„llysteet (ai ai) ja kuvaamataidon ty”t, jotka riippuvat kehyksiss„ seinill„."
1080 DATA "Olet vahtimestari Raimo Iluksen ty”tilassa.   Vahtimestari itse on paikalla     ja n„ytt„„ kovin murheelliselta ilman avaimiaan. H„n panee kaiken toivonsa      sinuun."
1090 DATA "Olet pitk„ss„,ikkunattomassa k„yt„v„ss„, jossa tuntuu maalink„ry„ ja jota valai-see pari tehotonta lamppua."
1100 DATA "Olet pitk„ss„, h„m„r„ss„ k„yt„v„ss„.  Edess„si n„et kahdet portaat."
1110 DATA "Olet pitk„ss„, valoisassa k„yt„v„ss„.  Ikkunoista n„kyy koulun sis„pihalle."
1120 DATA "Olet parvella korkealla juhlasalin yl„puolella.  Vain matala kaide est„„ sinua  putoamasta alas."
1130 DATA "Olet koulun punttisalissa.  Erilaisia lihaskuntov„lineit„ lojuu hajallaan eri   puolilla huonetta.  Oven vieress„ on paino, jossa lukee ' 10 t '."
1140 DATA "Olet koulun ruokalassa.  Ankeat puiset p”yd„t ja vanhan maksalaatikon tuhti hajueiv„t houkuttele j„„m„„n pitemm„ksi aikaa."
1150 DATA "Olet opettajainhuoneessa. P”ydill„ lojuu korjaamattomia koenippuja. Katselet    upottavia nojatuoleja kateellisena.  Ilmassa leijuu kaffin tuoksu."
1160 DATA "Olet opettajakunnan kahvihuoneessa. Suuret leposohvat houkuttelevat istahtamaan.Keittopisteess„ on tussilla tehty kyltti:                                                                   'Kahvinkeitin RIKKI !  VAARALLINEN !'."
1170 DATA "Olet  Kanavan koulun kansliassa.  Valokopiokoneen kyljess„ on tarra:            - Tekij„noikeuslaki on vain rikkomista varten - "
1180 DATA "Olet koulun kaikkein pyhimm„ss„ : rehtorin kansliassa. Kaken tohvelit ovat oven alla, mutta miest„ itse„„n ei n„y miss„„n."
1190 DATA "Musiikkiluokka.  Ep„vireinen piano ja suuri m„„r„ rikkin„isi„ soittimia valtaa- vat luokan kokonaan."
1200 DATA "Biologian luokassa.  Taulu on raapustettu t„yteen jotain t„ysin h„m„ri„ ristey- tyskaavioita ja kromosomimalleja."
1210 DATA "Yl„kerran kuvaamataidon luokka, josta on oikein hyv„ n„k”ala koulun pohjois-    puolelle."
1220 DATA "Koulun kirjasto.  Pari py”re„„ p”yt„„, hyllyt t„ynn„ huonokuntoisia kirjoja ja  vanhoja lehti„ - siin„ kaikki."
1230 DATA "Moderni ja hieno kielistudio. Edess„ on opettajien painajainen - studion ohjaus-p”yt„. Sen vieress„ seisoo ruotsinopettaja Leena-Maija Hellen."
1240 DATA "Koulun ATK-luokassa.  Birgitin varjelemat Auditekit eiv„t p„rj„isi Amstradille ylivoimallakaan."
1250 DATA "Matikan luokka.  Erkin kaikkein pyhin, jossa pulpetit ovat suorassa ja sienet   aina m„rki„."
1260 DATA "Fysiikan ja kemian luokka, Uken valtakunta, jossa s„ilytet„„n h„nen valtikkaan- sa, nahkaista ruoskaa (III C 1986-1987 osti sen h„nelle Tukholmasta). Ilmassa   on m„d„n kananmunan haju."
1270 DATA "Englannin luokka.  Ei mit„„n mainittavaa n„kyviss„."
1280 DATA "Alakerran kuvaamataidon luokka, maanpinnan alapuolella.   Seinill„ on muutamia  vesiv„rit”it„."
1290 DATA "Olet hyisess„ Lemp„„l„n kanavassa. Tulit m„est„ liian lujaa etk„ ehtinyt k„„n-  ty„.  Kylm„ vesi kangistaa sinut nopeasti..."
1300 DATA "Olet koulun juhlasalin etel„p„„ss„.  Edess„ on puhujanp”ntt”, fiikus ja vanha   mikrofoni, joka usein p„tkii."
1310 DATA "Olet koulun WC:ss„.  Avoimesta ikkunasta puhaltaa  kylm„ huiku.  Vesipisaroita  tipahtelee lattialle. T„„ll„ on aavemainen kaiku..ku..ku.."
1500 REM
1510 DATA 0,2,2,3,0,3
1520 DATA 0,0,0,1,0,0
1530 DATA 5,1,4,29,1,0
1540 DATA 4,4,4,4,0,0
1550 DATA 0,3,0,0,0,0
1560 DATA 10,7,5,8,0,31
1570 DATA 0,30,19,6,12,10
1580 DATA 0,6,0,0,0,0
1590 DATA 0,28,0,13,10,14
1600 DATA 15,0,6,0,7,9
1610 DATA 21,23,0,22,0,30
1620 DATA 26,25,24,27,0,7
1630 DATA 0,9,0,0,0,0
1640 DATA 0,0,0,0,7,0
1650 DATA 16,0,10,17,0,0
1660 DATA 0,0,15,0,0,0
1670 DATA 0,15,0,18,0,0
1680 DATA 0,17,0,0,0,0
1690 DATA 7,0,0,0,0,0
1700 DATA 0,0,0,30,0,0
1710 DATA 0,0,11,0,0,0
1720 DATA 0,11,0,0,0,0
1730 DATA 0,0,0,11,0,0
1740 DATA 12,0,0,0,0,0
1750 DATA 0,0,0,12,0,0
1760 DATA 0,0,12,0,0,0
1770 DATA 0,12,0,0,0,0
1780 DATA 0,0,0,9,0,0
1790 DATA 0,0,0,0,0,0
1800 DATA 0,20,0,7,11,0
1810 DATA 0,4,0,0,6,0
2000 REM
2010 DATA "Abloy-avain."
2020 DATA "Puinen karttakeppi."
2030 DATA "Vanha Tiede 2000 -lehden numero."
2040 DATA "Raimo Iluksen avainnippu."
2050 DATA "Puoleksi sy”ty raaka peruna."
2060 DATA "Ter„v„k„rkinen sateenvarjo."
2070 DATA "Ohutk„rkinen sivellin."
2080 DATA "Rehtori Palmun tohvelit."
2090 DATA "Opettajan arvostelukirja."
2100 DATA "Viis- ja varttinen disketti."
2110 DATA "Paketti Saludo-kahvia."
2120 DATA "Pienikokoinen tieteislaskin."
2130 DATA "Rikkin„inen keitin (kahvin)."
2140 DATA "Auditek AMC-100 -tietokone."
2150 DATA "Levyasema."
2160 DATA "Kielistudion ohjausp”yt„."
2170 DATA "Vahtimestari Raimo Ilus."
2210 DATA 0,1
2220 DATA 20,2
2230 DATA 22,2
2240 DATA 23,5
2250 DATA 14,1
2260 DATA 6,1
2270 DATA 21,1
2280 DATA 18,1
2290 DATA 15,1
2300 DATA 17,1
2310 DATA 8,1
2320 DATA 25,1
2330 DATA 16,4
2340 DATA 24,3
2350 DATA 24,3
2360 DATA 23,3
2370 DATA 8,3
2500 DATA "Avain"
2519 DATA "Karttakeppi"
2520 DATA "Tiede 2000 -lehti"
2530 DATA "Avainnippu"
2540 DATA "Raaka peruna"
2550 DATA "Sateenvarjo"
2560 DATA "Sivellin"
2570 DATA "Tohvelit"
2580 DATA "Arvostelukirja"
2590 DATA "Disketti"
2600 DATA "Kahvipaketti"
2610 DATA "Taskulaskin"
2620 DATA "Keitin"
2630 DATA "Tietokone"
2640 DATA "Levyasema"
2650 DATA "Ohjausp”yt„"
2660 DATA "Vahtimestari"
