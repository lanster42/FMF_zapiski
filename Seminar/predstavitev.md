# Permutacijsko pošteni nabori kock

## UVOD
Najprej bom začel z malo motivacije. Predstavljajte si, da imate 3 prijatelje, s katerimi se želiti igrati neko namizno igro. Te velikokrat potrebujejo nekoga, ki igro začne. Recimo pri Catanu se morajo igralci nekako dogovoriti, kdo bo prvi izbiral pozicijo svoje hiše (catan picture pp). Imamo več načinov, s katerimi to lahko naredimo. Najpogostejši je kar s kockami. Vsi igralci vržejo 6 strano kocko in se razvrstijo od največje pike do najmanjše. Če dva igralca vržeta isto številko, potem vržeta kocko šeenkrat. Če spet dobita isto številko, mečeta ponovno in tako naprej. Ampak ali je tak način določanja vrstnega reda pošten?

*!Turn on screen!*

Naj omenim, da je veliko lažje in pravično določiti vrstni red igralcev tako, da si vsak izbere eno karto, vse te karte potem zmešamo in jih povrsti vlečemo ven. Torej če boste spremljali mojo predstavitev, boste mogoče naslednič premislili preden boste za določanje vrstnega reda vzeli kocke.

No, moj članek raziskuje možnosti, kako se lahko ponovnim metom izognemo in pridemo do poštenega določanja vrstnega reda igralcev.
Najprej si poglejmo različne definicije poštenosti:
- poštenost prvega: vsi igralco imajo enako možnost biti prvi
- poštenost mesta: vsi igralci imajo enako možnost biti na katerem koli mestu
- permutacijska poštenost: ko vržemo vse kocke in jih razporedimo po velikosti, bodo vse različne razporeditve kock enako možne.

Dodatno lahko opazimo, da če uporabimo permutacijsko poštene kocke za 4 igralce, lahko z istimi kockami igrajo tudi 3 ali 2 igralca, pa je nabor kock še vedno permutacijsko pošten.


Kot očitno lahko predvidevate, če ste prebrali naslov predstavitve, se bomo mi osredotočili na zadnjo. 
*!slide!*
Naj vam najprej predstavim Erica Harshbargerja. Kar nekaj let se je preživljal s sestavljanjem originalnih Legic :)
Kar pa nas zanima, je njegovo zanimanje za iskanje permutacijsko poštenih naborov kock. 

S prijateljem sta se se posvetila iskanju kock, pri katerih:
- ne bi prišlo do neodločenega reultata
- vsak igralec ima enako možnost zmage
- vsaka podmnožica množice kock bi zadoščala prvima dvema pogojema.
Razlaga: če imamo recimo kocke za 10 igralcev, ki imajo vsak 1/10 možnosti za zmago, potem bo z istimi kockami 7 igralcev imalo 1/7 možnosti za zmago

Najprej sta probala z običajnimi 6-stranimi kockami, a sta hitro ugotovila, da že za recimo 5 igralcev to ni mogoče. Dokaz je precej preprost:
- če 5 igralcev meče 6-strane kocke, je 6^5 možnih izidov. Teh 6^5 različnih izidov pa mora biti deljivo s številom igralcev. Ampak 5 je praštevilo in 2^5 * 3^5 ni deljivo s 5.

To pomeni, da sta raziskovalca morala opustiti željo, da bodo običajne kocke zadostovale.Harshbargerjev prijatelj je z metodo "bruteforce" našel primer 4d12 permutacijsko pošten nabor kock *!slide s tabelo in sliko kock!*  torej imamo 4 12-strane kocke, ki so permutacijsko poštene.
Za dva igralca lahko uporabimo kovanec, ki je seveda permutacijsko pošten, za 3 igralce pa 3 običajne 6-strane kocke. Kaj pa permutacijsko pravičen nabor kock za 5 igralcev? Ali pa 6? Izkaže se, da brez metod konstrukcije ne bomo prišli daleč z "bruteforce"-om, saj je preveč možnosti.

Najprej se prepričajmo, da za vsako n iz N obstaja tak nabor:



## Unsorted and notes
Nujno notri vkljuci: 
- zacetek konstrukcij: konstrukcija za 2,3,4
- konstrukcija za 5
- za poljuben n obstaja nabor kock s permutacijsko poštenostjo video [2]
- ce imamo 3/n permutacijsko postene kocke imamo tudi 4/n perm. postene kocke  (theorem 6)
- indukcija: iz n/n perm post -> (n+1)/(n+1) perm postene kocke
- dejansko iskanje nabore kock: najprej metoda iz [2] (prehod iz 3/n v 4/n potrebuje faktor n!), nato Purcell: analiticna (ugotovi kako iz 1/n perm poštenih konstruira 2/n ter kako iz 3/n konstruira 4/n ---> ta prehod potrebuje le faktor 2 WHY??--ideja dokaza) in numerična tehnika(numerično le omeni)


kasneje: Michael Purcell je prejšnjo opombo posplošiu (mislm da ne bom dejansko povedou te ker je prevec teoretična)

cisto na koncu: raziskovanje lahko razširimo tudi na kocke, ki nimajo vse enako število strani, a so še vedno permutacijsko poštene. To bi lahko tudi pomenilo, da vsak igralec ne vrže natanko 1 kocke. PRIMER HARSHBERGERJA in PRIMER IZ BEST VIDEA NA 7:45