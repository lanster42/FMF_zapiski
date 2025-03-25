# Permutacijsko pošteni nabori kock

## UVOD
Najprej bom začel z malo motivacije. Predstavljajte si, da imate 3 prijatelje, s katerimi se želiti igrati neko namizno igro. Te velikokrat potrebujejo nekoga, ki igro začne. Recimo pri Catanu se morajo igralci nekako dogovoriti, kdo bo prvi izbiral pozicijo svoje hiše (catan picture pp). Imamo več načinov, s katerimi to lahko naredimo. Najpogostejši je kar s kockami. Vsi igralci vržejo 6 strano kocko in se razvrstijo od največje pike do najmanjše. Če dva igralca vržeta isto številko, potem vržeta kocko šeenkrat. Če spet dobita isto številko, mečeta ponovno in tako naprej. Ampak ali je tak način določanja vrstnega reda pošten?

*!Turn on screen!*

Naj omenim, da je veliko lažje in pravično določiti vrstni red igralcev tako, da si vsak izbere eno karto, vse te karte potem zmešamo in jih povrsti vlečemo ven. (PRIPOMOCEK) Torej če boste spremljali mojo predstavitev, boste mogoče naslednič premislili preden boste za določanje vrstnega reda vzeli kocke. 

No, moj članek raziskuje možnosti, kako se lahko ponovnim metom izognemo in pridemo do poštenega določanja vrstnega reda igralcev.
Najprej si poglejmo različne definicije poštenosti:
- <ins> poštenost prvega</ins>: vsi igralco imajo enako možnost biti prvi
- <ins>poštenost mesta</ins>: vsi igralci imajo enako možnost biti na katerem koli mestu
- <ins>permutacijska poštenost</ins>: ko vržemo vse kocke in jih razporedimo po velikosti, bodo vse različne razporeditve kock enako možne.

Pomembno je, da to definicijo razumete ker je osnovna za razumevanje te teme. (Razdelim lahko kocke, oni jih vržejo in potem povem): torej poštenost mesta pomeni, da je imel/a "ime" enako možnost da je katerikoli, pa je bil še vedno zadnji. Permutacijska poštenost pa pove, da ima tole zaporedje kock ki smo ga dobili: napisem stevilke na tablo, enako verjetnost kot pa recimo 1234.

Kot očitno lahko predvidevate, če ste prebrali naslov predstavitve, se bomo mi osredotočili na permutacijsko poštenost. 
*!slide!*
Naj vam najprej predstavim Erica Harshbargerja. Kar nekaj let se je preživljal s sestavljanjem originalnih Legic :) Tukaj je nekaj primerov.
Kar pa nas zanima, je njegovo zanimanje za iskanje permutacijsko poštenih naborov kock. 

S prijateljem sta se se posvetila iskanju kock, pri katerih:
- ne bi prišlo do neodločenega reultata
- vsak igralec ima enako možnost zmage
- vsaka podmnožica množice kock bi zadoščala prvima dvema pogojema.
Razlaga: če imamo recimo kocke za 10 igralcev, ki imajo vsak 1/10 možnosti za zmago, potem bo z istimi kockami 7 igralcev imalo 1/7 možnosti za zmago.

Najprej sta probala z običajnimi 6-stranimi kockami, a sta hitro ugotovila, da že za recimo 5 igralcev to ni mogoče. Dokaz je precej preprost:
- če 5 igralcev meče 6-strane kocke, je 6^5 možnih izidov. Teh 6^5 različnih izidov pa mora biti deljivo s številom igralcev. Ampak 5 je praštevilo in 2^5 * 3^5 ni deljivo s 5.

To pomeni, da sta raziskovalca morala opustiti željo, da bodo običajne kocke zadostovale.Harshbargerjev prijatelj je z metodo "bruteforce" našel primer 4d12 permutacijsko pošten nabor kock *!slide s tabelo in sliko kock!*  torej imamo 4 12-strane kocke, ki so permutacijsko poštene. Dodatno lahko opazimo, da če uporabimo permutacijsko poštene kocke za 4 igralce, lahko z istimi kockami igrajo tudi 3 ali 2 igralca, pa je nabor kock še vedno permutacijsko pošten.

Verjetno pa ni najboljša izbira, da vzamemo kar 12-strane kocke za manj igralcev. Za dva igralca lahko najlažje uporabimo kovanec, ki je seveda permutacijsko pošten, za 3 igralce pa 3 običajne 6-strane kocke. Kaj pa permutacijsko pravičen nabor kock za 5 igralcev? Ali pa 6? Izkaže se, da brez metod konstrukcije ne bomo prišli daleč z "bruteforce"-om, saj je preveč možnosti.

Najprej se prepričajmo, da za vsako n iz N obstaja tak nabor kock. Dokaz oziroma konstrukcijo bomo naredili na primeru treh igralcev in nato posplošili za vsa naravna števila: VIDEO [2] TO BO MOJ GLAVNI IZREK - concatenation construction oziroma ZDRUŽITVENA KONSTRUKCIJA. V videu naredimo konstrukcijo, tako da v enem izreku dokažemo, da se za vsako naravno št to da narediti in tudi kako jih naredimo.

Michael Purcell je to metodo, ki smo jo ravnokar obravnavali, izboljšal. Dokazal je, da je na primer za 5 igralcev dovolj 120 strana kocka. Mogoče se ne sliši malo ampak dajmo se spomniti koliko strano kocko bi dobili z našo konstrukcijo: (5!)^(5-1) = 207,360,000 strane kocke. Torej zdi se mi da je kar velik napredek.

Konstrukcijo, ki smo jo naredili, je izboljšal tako, da je vpeljal m/n permutacijsko poštenost.

**definicija**: Nabor kock je m/n permutacijsko pošten, če je vsaka podmnožica kock od m permutacijsko poštena.

To pomeni: če je set 5/8 permutacijsko pošten, je set 8 kock 5/5 permutacijsko pošten, 4/4 permutacijsko pošten, 3/3 permutacijsko pošten in tudi 2/2 permutacijsko pošten. To pa ubistvu pomeni, da če vsamemo katerihkoli 5 kock iz tega seta 8 kock, bodo permutacijsko poštene. Prav tako velja za 4 in tako naprej.

Nove nabore kock je konstruiral tako, da je dokazal, da če zlepimo skupaj točno določene nabore m/n permutacijsko poštenih kock, lahko skonstruiramo nabor (m+1)/n permutacijsko poštene kocke.

Če se malo vrnemo na našo konstrukcijo. Za konstrukcijo 4/4 permutacijsko pravičnih kock smo potrebovali 4!   3/4 permutacijsko pravičnih kock. Purcell pa je za ta isti prehod potreboval le 2. (tu je 4 namesto n ampak n je pravilna).
Če vas zanimajo trditve, s katerimi je Purcell to dokazal, si lahko več preberete v mojem članku.

Čisto za na koncu pa želim še omeniti, da: Raziskovanje lahko razširimo tudi na kocke, ki nimajo vse enakega števila strani, a so še vedno permutacijsko poštene. To bi lahko tudi pomenilo, da vsak igralec ne vrže natanko 1 kocke. PRIMER HARSHBERGERJA in PRIMER IZ BEST VIDEA NA 7:45 Za konstrukcijo takih kock se lahko obrnete na moj članek ali pa na video iz katerega je bil tudi zadnji primer izvzet: https://www.youtube.com/watch?v=L3d0YIW7wHU&t=1s 


## Unsorted and notes
<ins> underlining </ins>


Notri vkljuci: 
- zacetek konstrukcij: konstrukcija za 2,3,4
- konstrukcija za 5
- za poljuben n obstaja nabor kock s permutacijsko poštenostjo video [2]
- ce imamo 3/n permutacijsko postene kocke imamo tudi 4/n perm postene kocke  (theorem 6)
- indukcija: iz n/n perm post -> (n+1)/(n+1) perm postene kocke
- dejansko iskanje nabore kock: najprej metoda iz [2] (prehod iz 3/n v 4/n potrebuje faktor n!), nato Purcell: analiticna (ugotovi kako iz 1/n perm poštenih konstruira 2/n ter kako iz 3/n konstruira 4/n ---> ta prehod potrebuje le faktor 2 WHY??--ideja dokaza) in numerična tehnika(numerično le omeni)
