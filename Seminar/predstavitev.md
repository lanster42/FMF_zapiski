# Permutacijsko-pošteni nabori kock

## UVOD
Najprej vs prosim, da ignorirate tablo za mano in se osredotočite name.
Začel bom z malo motivacije. Predstavljajte si, da imate 3 prijatelje, s katerimi se želiti igrati neko namizno igro. Te velikokrat potrebujejo nekoga, ki igro začne. Recimo pri Catanu se morajo igralci nekako dogovoriti, kdo bo prvi izbiral pozicijo svoje hiše. Imamo več načinov, s katerimi to lahko naredimo. Najpogostejši je kar s kockami. Vsi igralci vržejo 6 strano kocko in se razvrstijo od največje pike do najmanjše. Če dva igralca vržeta isto številko, potem vržeta kocko šeenkrat. Če spet dobita isto številko, mečeta ponovno in tako naprej. Ampak ali je tak način določanja vrstnega reda pošten?

*!Turn on screen!*

Naj omenim, da je veliko lažje in pravično določiti vrstni red igralcev tako, da si vsak izbere eno karto, vse te karte potem zmešamo in jih povrsti vlečemo ven. (CARDS) Torej če boste spremljali mojo predstavitev, boste mogoče naslednič premislili preden boste za določanje vrstnega reda vzeli kocke. 

No, moj članek raziskuje možnosti, kako se lahko ponovnim metom izognemo in pridemo do poštenega določanja vrstnega reda igralcev.
Najprej si poglejmo različne definicije poštenosti:
- <ins>poštenost prvega</ins>: vsi igralco imajo enako verjetnost biti prvi  
- <ins>poštenost mesta</ins>: vsi igralci imajo enako verjetnost biti na katerem koli mestu  
- <ins>permutacijska poštenost</ins>: ko vržemo vse kocke in jih razporedimo po velikosti,   bodo vse različne razporeditve kock enako verjetne.

Pomembno je, da to definicijo razumete, ker je osnovna za razumevanje te teme. (RAZDELIM KOCKE): torej poštenost mesta pomeni, da je imel kolega enako možnost da je katerikoli, pa je bil še vedno zadnji. Permutacijska poštenost pa pove, da ima tole zaporedje kock ki smo ga dobili enako verjetnost kot pa recimo ABC.

Kot očitno lahko predvidevate, če ste prebrali naslov predstavitve, se bomo mi osredotočili na permutacijsko poštenost. 

*!slide!*

Naj vam najprej predstavim Erica Harshbargerja. Kar nekaj let se je preživljal s sestavljanjem originalnih Legic :) Tukaj je nekaj primerov.
Kar pa nas zanima, je njegovo zanimanje za iskanje permutacijsko poštenih naborov kock. 

*!slide!*

S prijateljem sta se se posvetila iskanju kock, pri katerih:
- ne bi prišlo do neodločenega rezultata
- veljala bi poštenost prvega
- vsaka podmnožica množice kock bi zadoščala prvima dvema pogojema.
Razlaga: (POKAŽI NA KOCKAH) če imamo recimo kocke za 6 igralcev, ki imajo vsak 1/6 možnosti za zmago, potem bo z istimi kockami 4 igralcev imelo 1/4 možnosti za zmago.

Najprej sta poskusila z običajnimi 6-stranimi kockami, a sta hitro ugotovila, da že za recimo 5 igralcev to ni mogoče. Dokaz tega je precej preprost:
- če 5 igralcev meče 6-strane kocke, je 6^5 možnih izidov. Teh 6^5 različnih izidov pa mora biti deljivo s številom igralcev, če hočemo, da ima vsak enako verjetnost biti 1. Ampak 5 je praštevilo in 2^5 * 3^5 ni deljivo s 5.

*!slide!*

To pomeni, da sta raziskovalca morala opustiti željo, da bodo običajne kocke zadostovale. Harshbargerjev prijatelj je z metodo "bruteforce" našel primer 4d12 kocke, za katere je mislil, da zadoščajo le tem pogojem, ki so tukaj na tabli, ampak sta kasneje ugotovila, da so tudi permutacijsko poštene.

Če vzamemo 3 kocke iz teh 4 kock ali pa 2 kocki, bodo še vedno permutacijsko poštene.
Verjetno pa ni najboljša izbira, da vzamemo kar 12-strane kocke za manj igralcev. Za dva igralca lahko najlažje uporabimo kovanec, ki je seveda permutacijsko pošten, za 3 igralce pa 3 običajne 6-strane kocke. Kaj pa permutacijsko pravičen nabor kock za 5 igralcev? Ali pa 6? Izkaže se, da brez metod konstrukcije ne bomo prišli daleč z "bruteforce"-om, saj je preveč možnosti.

## IZREK
Mi pa bomo zdaj dokazali, da za vsako n iz N obstaja tak nabor kock in osnovno konstrukcijo tega nabora. Konstrukcijo bomo naredili na primeru treh igralcev in nato posplošili za vsa naravna števila.

*!slide!*

### DOKAZ:
Vzemimo take kocke: veliko lažje si jih bomo predstavljali, če jih zapišemo v niz. Kar hočem povedati je, da razvrstimo številke v vrsto in namesto števil napišemo osebo, kateri kocka pripada. Torej pri tem naboru bi bil niz torej:
ABCBCACABCBAACBBAC.

Kaj pomeni permutacijska poštenost na tem nizu?
Niz je permutacijsko pošten, če je število vsake trojice enako. Torej če preštejemo vse ABC, ACB, BAC, BCA, CAB IN CBA v tem nizu in je število njih enako, potem je naš nabor permutacijsko pošten.
Če smo pozorni na naš niz, lahko opazimo, da ga lahko razdelimo v trojice. Vidimo, da so to ravno vse različne permutacije ABC.
Poskusimo zamenjati vrstni red teh trojic in jih ponovno zlepiti. Če ponovno preštejemo število vsake trojice, bomo ugotovili, da nov niz ni permutacijsko pošten. Torej tako ne moremo konstruirati poljubnega permutacijsko poštenega nabora. Ampak. Preštejmo število vsakega para v tem novem nizu. Izkaže se, da je vseh parov enako. To pa zato, ker so vse trojice le permutirane verzije osnovnega niza ABC. Ko recimo štejemo število AB, lahko iz vsake trojice vzamemo eno črko, torej najprej vzamemo A iz prve in B iz druge (show), ali pa.... Lahko pa se AB pojavita v isti trojici. Očitno je, da za vsak par s tem postopkom dobimo 18 pojavitev. Ugotovili smo torej, da je število parov v tem nizu enako. 

*!slide!*

Zdaj pa zapišimo ta niz še 6 krat (3!). V tem nizu nato permutiramo črke in vse nize zlepimo v en dolg niz. Če preštejemo zdaj število vseh trojic, bomo videli, da jih je enako.
Zakaj?: število pojavitev niza ABC lahko podobno kot prej preštejemo glede na to, iz kje prihajajo črke A, B in C:
- lahko pridejo iz vsakega niza dolžine 18 posebaj  
- lahko sta AB skupaj in C v svojem  
- lahko sta BC skupaj in A v svojem  
- lahko je cel niz ABC v enem  

Če gledamo niz BAC velja enako. V prvi točki se ujemata, ker je število vseh črk v nizih dolžine 18 enako. V 2. in 3. se ujemata zaradi argumenta iz prej, ko smo gledali pare. Če se spomnimo, smo prej ravno v teh nizih dolžine 18 dokazali, da je število vseh parov enako. Cel niz pa se pojavi enakokrat vse skupaj, saj so nizi dolžine 18 samo permutirana verzija osnovnega niza z dolžino 18, v katerem smo permutirali črke.

*!slide!*

### Povzetek
Na hitro bomo povzel konstrukcijo in jo hkrati posplošil na 4 igralce.

Vzamemo niz ABCD, ker imamo 4 igralce, in ga permutiramo na vse možne načine. Torej imamo 24 različnih nizov dolžine 4. Te nize zlepimo skupej, da dobimo en niz dolžine (4*(4!)). V tem nizu je število parov enako. Nato ta niz skopiramo 4! krat 

*!slide!*

in permutiramo črke. Ta niz spet zlepimo skupaj, da dobimo niz dolžine 4*(4!)^2, v katerem je število trojic enako. Ta proces spet ponovimo in dobimo niz dolžine 4*(4!)^3, ki je permutacijsko pošten. Ploskev v tem nizu je (4!)^3.
Iz konstrukcije je jasno, da jo lahko posplošimo na vsa naravna števila.

*!slide!*

## Dodatek
Michael Purcell je to metodo, ki smo jo ravnokar obravnavali, izboljšal. Dokazal je, da je na primer za 5 igralcev dovolj 120 strana kocka. Mogoče se ne sliši malo ampak dajmo se spomniti koliko strano kocko bi dobili z našo konstrukcijo (KALKULATOR): (5!)^(5-1) = 207,360,000 strane kocke. Torej zdi se mi da je kar velik napredek.

*!slide!*

Konstrukcijo, ki smo jo naredili, je izboljšal tako, da je vpeljal m/n permutacijsko poštenost.

**definicija**: Nabor kock je m/n permutacijsko pošten, če je vsaka podmnožica kock od m permutacijsko poštena.

To pomeni: če je set 4/6 permutacijsko pošten, je set 6 kock 5/5, 4/4 permutacijsko pošten, 3/3 permutacijsko pošten in tudi 2/2 permutacijsko pošten. To pa ubistvu pomeni, da če vzamemo katerekoli 4 kocke iz tega seta 6 kock, bodo permutacijsko poštene. Prav tako velja za 3 in 2 kocki.

Nove nabore kock je Purcell konstruiral tako, da je dokazal, da če zlepimo skupaj točno določene nabore m/n permutacijsko poštenih kock, lahko skonstruiramo nabor (m+1)/n permutacijsko poštene kocke.

Če se malo vrnemo na našo konstrukcijo. Za konstrukcijo 4/4 permutacijsko pravičnih kock smo potrebovali 4!   3/4 permutacijsko pravičnih kock. Purcell pa je za ta isti prehod potreboval le 2. (tu je 4 namesto n ampak n je pravilna).
Če vas zanimajo trditve, s katerimi je Purcell to dokazal, si lahko več preberete v mojem članku.

*!slide!*

Čisto na koncu pa želim še omeniti, da: Raziskovanje lahko razširimo tudi na kocke, ki nimajo vse enakega števila strani, a so še vedno permutacijsko poštene. To bi lahko tudi pomenilo, da vsak igralec ne vrže natanko 1 kocke.
