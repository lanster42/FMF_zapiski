# Permutacijsko-pošteni nabori kock

## UVOD

Začel bom z malo motivacije. Predstavljajte si, da imate 3 prijatelje, s katerimi se želite igrati neko namizno igro. Te velikokrat potrebujejo nekoga, ki igro začne. Recimo pri Catanu se morajo igralci nekako dogovoriti, kdo bo prvi izbiral pozicijo svoje hiše. Imamo več načinov, s katerimi to lahko naredimo. Najpogostejši je kar s kockami. Vsi igralci vržejo običajno 6-strano kocko in se razvrstijo od največje pike do najmanjše. Če dva igralca vržeta isto številko, potem mečeta kocko še enkrat. Če spet dobita isto številko, mečeta ponovno in tako naprej. Ampak ali je tak način določanja vrstnega reda pošten?

_!slide!_

Naj omenim, da je veliko lažje in pravično določiti vrstni red igralcev tako, da si vsak izbere eno karto, vse te karte potem zmešamo in jih povrsti vlečemo ven. (KARTE) Torej če boste spremljali mojo predstavitev, boste mogoče naslednič pomislili, preden boste za določanje vrstnega reda vzeli kocke.

No, moj članek raziskuje možnosti, kako se lahko ponovnim metom izognemo in pridemo do poštenega določanja vrstnega reda igralcev.  
Najprej si poglejmo različne definicije poštenosti:

- **poštenost prvega**: vsi igralci imajo enako verjetnost biti prvi
- **poštenost mesta**: vsi igralci imajo enako verjetnost biti na katerem koli mestu
- **permutacijska poštenost**: ko vržemo vse kocke in jih razporedimo po velikosti, bodo vse različne razporeditve kock enako verjetne

Pomembno je, da to definicijo razumete, ker je osnovna za razumevanje te teme. (KOCKE): torej poštenost mesta pomeni, da je imel kolega enako možnost da je katerikoli, pa je bil še vedno zadnji. Permutacijska poštenost pa pove, da ima tole zaporedje kock, ki smo ga dobili, enako verjetnost kot pa recimo ABC.

Kot očitno lahko predvidevate, če ste prebrali naslov predstavitve, se bomo mi osredotočili na permutacijsko poštenost.

_!slide!_

Naj vam najprej predstavim Erica Harshbargerja. Kar nekaj let se je preživljal s sestavljanjem originalnih legic.  
Kar pa nas zanima, je njegovo zanimanje za iskanje permutacijsko poštenih naborov kock.

_!slide!_

S prijateljem sta se posvetila iskanju kock, pri katerih:

- ne bi prišlo do neodločenega rezultata
- veljala bi poštenost prvega
- vsaka podmnožica množice kock bi zadoščala prvima dvema pogojema  
    Razlaga: (KOCKE) če imamo recimo kocke za 6 igralcev, ki imajo vsak 1/6 možnosti za zmago, potem bo z istimi kockami 4 igralcev imelo 1/4 možnosti za zmago.

Najprej sta poskusila z običajnimi 6-stranimi kockami, a sta hitro ugotovila, da že za recimo 5 igralcev to ni mogoče. Dokaz tega je precej preprost:

če 5 igralcev meče 6-strane kocke, je 6^5 možnih izidov. Teh 6^5 različnih izidov pa mora biti deljivo s številom igralcev, če hočemo, da ima vsaka kocka enako strani. Ampak 5 je praštevilo in 2^5 \* 3^5 ni deljivo s 5.

_!slide!_

To pomeni, da sta raziskovalca morala opustiti željo, da bodo običajne kocke zadostovale. Harshbargerjev prijatelj je z metodo "bruteforce" našel primer 4d12 kocke, za katere je mislil, da zadoščajo le pogojem, ki sta jih želela zadovoljiti, ampak sta kasneje ugotovila, da zadoščajo tudi permutacijski poštenosti.

Če vzamemo 3 kocke iz teh 4 kock ali pa 2 kocki, bodo še vedno permutacijsko poštene.  
Verjetno pa ni najboljša izbira, da vzamemo kar 12-strane kocke za manj igralcev. Za dva igralca lahko najlažje uporabimo kovanec, ki je seveda permutacijsko pošten, za 3 igralce pa 3 6-strane kocke. Kaj pa permutacijsko pravičen nabor kock za 5 igralcev? Ali pa 6? Izkaže se, da brez metod konstrukcije ne bomo prišli daleč z "bruteforce"-om, saj je preveč možnosti.

## IZREK

Mi pa bomo zdaj dokazali, da za vsako naravno število obstaja tak nabor kock in osnovno konstrukcijo tega nabora. Konstrukcijo bomo naredili na primeru treh igralcev in nato posplošili na vsa naravna števila.

_!slide!_

### DOKAZ

Vzemimo take kocke(PP). Veliko lažje si jih bomo predstavljali, če jih zapišemo v niz. Kar hočem povedati je, da razvrstimo številke v vrsto in namesto števil napišemo osebo, kateri kocka z določeno številko pripada. Torej pri tem naboru bi bil niz torej: ABCBCACABCBAACBBAC.

Kaj pomeni permutacijska poštenost na tem nizu?  
Niz je permutacijsko pošten, če je število vsake trojice enako. Torej če preštejemo vse ABC, ACB, BAC, BCA, CAB in CBA v tem nizu in je njihovo število enako, potem je naš nabor permutacijsko pošten.  
Če smo pozorni na naš niz, lahko opazimo, da ga lahko razdelimo v trojice. Vidimo, da so to ravno vse različne permutacije ABC.  
Poskusimo zamenjati vrstni red teh trojic in jih ponovno zlepiti. Če ponovno preštejemo število vsake trojice, bomo ugotovili, da nov niz ni permutacijsko pošten. Torej tako ne moremo konstruirati poljubnega permutacijsko poštenega nabora. Če pa preštejemo raje število vsakega para v tem novem nizu, se izkaže, da je vseh parov enako. To pa zato, ker so vse trojice le permutirane verzije osnovnega niza ABC. Ko recimo štejemo število AB, lahko iz vsake trojice vzamemo eno črko, torej najprej vzamemo A iz prve in B iz druge in tako naprej. Lahko pa se AB pojavita v isti trojici. Očitno je, da za vsak par s tem postopkom dobimo 18 pojavitev. Ugotovili smo torej, da je število parov v tem nizu enako.

_!slide!_

Zdaj pa zapišimo ta niz še 6 krat (3!). V tem nizu nato permutiramo črke in vse nize zlepimo v en dolg niz. Če preštejemo zdaj število vseh trojic, bomo videli, da jih je enako.  
Zakaj?: število pojavitev niza ABC lahko podobno kot prej preštejemo glede na to, iz kje prihajajo črke A, B in C:

- lahko pridejo iz vsakega niza dolžine 18 posebej
- lahko sta AB skupaj in C v svojem
- lahko sta BC skupaj in A v svojem
- lahko je cel niz ABC v enem

Če gledamo niz BAC velja enako. V prvi točki se ABC in BAC ujemata, ker je število vseh črk v nizih dolžine 18 enako. V 2. in 3. se ujemata zaradi argumenta iz prej, ko smo gledali pare. Če se spomnimo, smo prej ravno v teh nizih dolžine 18 dokazali, da je število vseh parov enako. Cel niz pa se pojavi enako krat vse skupaj, saj so nizi dolžine 18 samo permutirana verzija osnovnega niza z dolžino 18, v katerem smo permutirali črke.

_!slide!_

## Povzetek

Na hitro bomo povzeli konstrukcijo in jo hkrati posplošili na 4 igralce ter nato na vsa naravna števila.

Vzamemo niz ABCD, ker imamo 4 igralce, in ga permutirajmo na vse možne načine. Torej imamo 24 različnih nizov dolžine 4. Te nize zlepimo skupaj, da dobimo en niz dolžine 4\*(4!). V tem nizu je število parov enako. Nato ta niz skopirajmo 4! krat

_!slide!_

in permutirajmo črke. Ta niz spet zlepimo skupaj, da dobimo niz dolžine 4\*(4!)^2, v katerem je število trojic enako. Ta proces spet ponovimo in dobimo niz dolžine 4\*(4!)^3, ki je permutacijsko pošten. Ploskev v tem nizu je (4!)^3.  
Iz konstrukcije je jasno, da jo lahko posplošimo na vsa naravna števila.

_!slide!_

## Dodatek

Michael Purcell je to metodo, ki smo jo ravnokar obravnavali, izboljšal. Dokazal je, da je za 5 igralcev dovolj 120-strana kocka. Mogoče se ne sliši malo, ampak spomnimo se, koliko strano kocko bi dobili z našo konstrukcijo (KALKULATOR): (5!)^(5-1) = 207,360,000-strane kocke. To je torej kar velik napredek.

_!slide!_

Konstrukcijo, ki smo jo naredili, je izboljšal tako, da je vpeljal m/n permutacijsko poštenost.

**definicija**: Nabor kock je m/n permutacijsko pošten, če je vsaka podmnožica kock od m permutacijsko poštena.

To pomeni(KOCKE): če je set 4/6 permutacijsko pošten, je set 6 kock 5/5, 4/4, 3/3 in tudi 2/2 permutacijsko pošten. To pa pomeni, da če vzamemo katerekoli 4 kocke iz tega seta 6 kock, bodo permutacijsko poštene. Prav tako velja za 3 in 2 kocki.

Nove nabore kock je Purcell konstruiral tako, da je dokazal, da če zlepimo skupaj točno določene nabore m/n permutacijsko poštenih kock, lahko skonstruiramo nabor (m+1)/n permutacijsko poštenih kock.

Če se malo vrnemo na našo konstrukcijo: za konstrukcijo 4/4 permutacijsko poštenih kock smo potrebovali 4! 3/4 permutacijsko poštenih kock. Purcell pa je za ta isti prehod potreboval le 2 ¾ permutacijsko poštenih kock.  
Če vas zanimajo trditve, s katerimi je Purcell to dokazal, si lahko več preberete v mojem članku.

_!slide!_

Čisto na koncu pa želim še omeniti: raziskovanje lahko razširimo tudi na kocke, ki nimajo vse enakega števila strani, a so še vedno permutacijsko poštene. To bi lahko tudi pomenilo, da vsak igralec ne vrže natanko 1 kocke.