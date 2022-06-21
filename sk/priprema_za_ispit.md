# Janičić

- Nad konačnim skupom promenljivih koliko ima sintaksički različitih formula?
    - prebrojivo mnogo, beskonačno
- koliko ima valudacija za k promenljivih
    - $2^k$
- interpretacija je proširenje čega
    - valuacije
- gde se poklapaju valucaija i interpretacija
    - u jednoj promenljivoj
- šta bi nastupilo pri izračunavnaju fje $A \& B$ (str 9)
    - rekurivni poziv, ako je A netačno rezultat je false i ne mora da se poziva rekurzivno, slično lenjom izračunavanju
- Kada je formula poreciva?
    - kada je njena vrednsot u nekoj valuciji 0
- Kada je skup nezadovoljiv
    - ne postoji valucija u kojoj su sve formule zadovoljive
- Skup koji je nezadovolji, a ni jedna fomrula nije nezadovoljiva
    - p i !p, obe su zadovoljive a čine neazdovoljiv skup
- Da li je problem ispitivanja porecivosti iskaznih formula odlučiv?
    - da, možemo napraviti tablicu sa $2^k$ redova, gde je k promenljivih
    - poreciva ako u zadnjoj koloni ima 0
- Da li je formula A poreciva
    - ako je !A zadovoljivo
- Imamo da li je poreciva, kako da li je zadovoljiva?
    - !A poreciva
- Šta je logička posledica kontradiktornog skupa formula?
    - bilo šta
- Logička posledica praznog skupa formula  
    - tautologija
- Zašto su izabrane ove logičke ekvivalencije? deo 2.3   
    - korsite se za primenu DPLLa, zgodno namje za svođenje na fomrulu kakava nam treba
- Teorema 2.2, Šta povezuje
    - objektni i meta nivo
- Čemu težiimo pa nam je važna ova fomrula
    - težimo ka tome da nemamo brojnu skalameriju nego da važna pitanja izrazmo u okviru logike
    - meta pitanja razmatramo koristeći mali broj crnih kutija
- Koliko nam crrnih kutija treba na kraju?
    - jednu, i to sat rešavač
    - meta pitanja svodimo na tautologičnost koju svodimo na zadovoljivost
- Šta omogućava teorema o zammeni
    - transormaciju formule, njeno uprošćavanje
- Šta je knf?
    - konjuktivna normalna forma, konjukcija klauza, gde su klauze disjkunkcije literala
- Šta je klauza?
    - disjunkcija literala
- Ako imamo n iskazih slova, koliko imao sintaksički različitih klauza?
    - prebrojivo mnogo
- Koliko imamo suštniski različitih klauza, koje nisu logički ekvivalente? n promenljivih i nema višestrukih pojavljivanja
    - $4^n$, može p i !p, a može da se ne pojavljuje
    - $2^{2n}$
- ako ne može p i !p? Koliko onda?
    - $3^n$, imamo p, !p ili ništa, na tri pozicije
- Problem sat je problem azdovoljivosti fomrule u ...?
    - KNFu
    - mora KNF, nije isto kao u DNF
- Ispistiavanje zadovoljivosti fomrule u DNF?
    - linearno
- unsat?
    - ispitivanje nezadovoljivosti
- k sat
    - sve klauze imaju k literala
- #sat 
    - problem prebrojavanja modela date sat formule
- max-sat
    - problem odredjivanja valuacije u kojoj je najveći broj klauza tačan
- Razlika između #sat i max-sat i ostalih
    - nisu probblemi odlučivanja, ne daju da/ne
- max sat je zgodan za ... ?
    - raspored, želimo što više zahteva da ispunimo

- kakva je izlazna formula algoitma 3.1, tj odnos ulazne i izlazne formule?
    - logički ekvivalente
    - jer primenjujemo teoremu o zameni
- Da li se ovaj algoritam zaustavlja?
    - da, jer je ovo konkretan program, a nema opšti algoritam
- Da li možemo da odgovorimo da li se algoritam zaustavlja
    - Halting problem: nema algorima koji daje odgovor da li se program zaustavlja, to je za opšti program, ne neki konkretan
- Kojom tehnikom bi proverili da se zaustavlja
    - mera zaustavljanja, neka metrika, npr broj ekvivalencija sa primenom svakog koraka se smanjuje za 1 pa pravilo više nije primenljiva
- Boljka algoritma?
    - eksponencijalna dužina izlaza u odnosu na ulaz
- Primer lošeg ulaza za KNF
    - formula u DNFu
- Cejtonova transformacija daje veličinu izlaza koja je u odnosu na ulaz ... ?
    - lineano veći
- Odnos formule i cejtinove transformacije
    - slabo ekvivalentni
    - izlazna formula nije logička posledica ulazne
    - nije isti skup promenljivh
- Šta čuva slaba ekvivalencija?
    - zadovoljivost
- Kako radi Cejtin?
    - uvodimo definicione promenljive, $p_1, p_2, ...$
- koliko ima onih malih formula u Cejtinu?
    - kao broj logičkih veznika
- Šta se dalje radi sa formulama?
    - pretvara se u KNF po formulama, imamo 5 pravila
- DPLL podrazumeva da je na ulazu?
    - formula u KNFu, zapravo multiskup klauza
- složenost DPLLa u odnosu na broj promenljivih
    - eksponencijalno
- Složnost savremenih SAT rešavača
    - eksponencijalna, nema dokaz, previše su komplikovani
- Šta radi korak tautology?
    - ako neka klauza Ci sadrži T ili literal i njegovu negackiju onda vraća vrednost DPLL(D\Ci)
- Koji korak je kritičan u DPLL
    - split
    - ostali koraci treba da ostave što manje u split
- ako se p pojavljuje samo pozitivno u klauzi
    - možemo da ignorišemo tu klauzu
- Koji rešavač od onih nema svojsvo potpunost?
    - stohastički, oni se zasnivaju na pametnim heuristikama
- kako rade portfolio rešavači?
    - koriste tehnike za izbor rešava u zavisnosti od ulaza
    - sat je problem a instanca je iskazna formula čiju zadovoljivost treba isptati
    - $problem \ne instanca$
- Šta se koristie za izbor rešavača
    - različita sintaksička svojstva, broj klauza, literala, literala po klauzu, prosečna dužina klauze
- Koje kategorije/discipline SAT takmičenja postoje?
    - prema domenu iz koje su došli, npr igre, praksa/industiijski, iz ekonomije, kriptogafija, verifikacija, pseudoslučajne u skladu sa sintaksičkim restrikcijama
- Kako se zove model za pseudoslučajne?
    - random-sat, random-3-sat
    - random-k-sat - problem kod kog za svaku instancu važi da je u knfu, sve klauze su dužine k, sve promenljive imaju istu verovatnoću pojavljivanja u svakom literalu, i svaki literal sadrži veznik negacije sa verovatnoćom 50%
    - uniformna distribucija promenljivih
- Dimacs format
    - p cnf broj_promenljivih broj_klauza
    - 0 za kraj reda
    - 1 true, -1 negacija
- Formula da ima 2 promenljive, tačna akko je tačna samo jedna od te dve promenljive
```
     p cnf 2 2
    -1 -2 0         -> tačno samo ako nisu obe tačne, znači bar jedna je netačna
    1 2 0           -> tačno ako je bar jedna tačna
```
- Da li problem sat pripada np  
    - da
- Da li je sat np kompletan
    - da
- Da li sat pripada klasi p
    - ne znamo
- Da li je p = np
    - ne znamo
- šta je dovoljno da bi dokazali da je p=np
    - da je SAT p
    - da je jedan np kompletan p
    - ne samo np da je p, jer je p podskup np
- Šta ako je p = np?
    - dobijemo milion 
- Šta znamo za unsat?
    - co-np kompletan, srodni ali ne isto
    - ako sat dobije da, unsat dobija ne
- DNF sat?
    - klasa p
- tautologičnost u knf?
    - klasa p
- Kukova teorema
    - dokazao da je sat np kompletan
- Klasa 2 sat
    - klasa p
    - jer rezolviranjem klauze dužine 2 dobijamo klauzu dužine 2
- preman faze za sat, menja se procenat ...?
    - zadovoljvih
    - promena faze postoji i u ostalim np kompletnim, samo treba naći odgovorajući parametar
- koji parametar se gleda za promenu faze sat?
    - L/N, broj klauza kroz broj promenljivih
    - za 3-sat tačka prekida je oko 4.27, zadovoljivost pre toga teži 1 a posle 0, najteže instance su u toj okolini
- Da bi u retkom kodiranju opisali uslov da je promenljiva jednaka nekoj vrednosti, koji su uslovi?
    - barem jedan i nema dva ista
- Osnovna ideja log kodiranja?
    - posebna pormenljiva za svaku binarnu cifru, u osnovi je binarni zapis
- Dva tipa promenljivih u URSI?
    - bulovske pocinju sa b
    - brojevne sa n
- Kako tražimo sve modele?
    - assert_all
- Kakava je nu promenljiva? primer 8.3
    - simbolička, sve simboličke će dobiti vrednsot
- Ekskluzivna dijsunkcija u URSI?
    - ^^
- If u URSI?
    - ite
- Koliko ima načina da se rasporede dva kralja na tabli...
- naći sve brojeve manje od 100, daljivih sa 5 i 3   
    - assert_all(nA == 15*nqA && nA < 100 && nqA > 0 && nqA < nA);
- petlja u n-dama
    - uslov u petlji mora biti realizovan promenljiva, tj mora biti konkretan broj

### Na ispitu nešto kratko u URSI :(

---
# Banković
0. Definisati CSP problem
    - problem koji se sastoji od skupa promenljivih, gde svaka ima svoj domen, i skupa ogranicenja nad nekim nizom promenljivih
    - resenj csp problema je dodela proemenljivma koji zadovoljavaju sva ogranicenja
    - uredjenja trojeka (X, D, C)
        - X - promenlive
        - D - domeni promenljivih
        - C - skup ogranicenja
1. Ogranicenje dekomponovati koriscteci ogrnicenje apsolutne vrednosti, stepena, proizvoda i linearno ogranicenje
    - $|x-y|^3 + 2*|x|*|y| \lt z$
    - resenje:
```
t1 = |x|
t2 = |y|
t3` = x - y
t3 = |t3`|
t4 = t3^3
t5 = 2*t1*t2
t4 + t5 - z <= 0 
```

2. Čemu je ekvivalentno alldiff(x,y,z,u) ograničenje
    - $x \ne y\ x \ne z \ x \ne u$  
    - $y \ne z\ y \ne u $
    - $z \ne u$
    - svi parovi su međusobno različiti

- Šta znači _atleas(x,y,z,u, 2, 1)_ ograničenje
    - oraničava neku vrstu kardinalnsoti
    - bar dve od promenljvih _x, y, z, u_ su jednake 1
- _atmost(x,y,z,u, 2, 1)_ - najvise dve od promenljivih _x, y, z, u_ imaju vrednosti 1
- _gcc(x1, ..., xn, {(c1, l1, u1), ... , (ck, lk, uk)})_ - vrednost ci ima najvise ui promenjvih, a najmanje li 

3. sta je svojstvo regularnsoti?
    - u nekom trenutku dolazimo do fiksne tacke, ne moze se primeiti ni jedno pravilo i da dobijemo nesto novo
    - svojstvo regularnosti se odnosi na redolsed primene pravila
    - cilje je da redosled bude takav da se u nekom koraku dodje u fiksnu tacku, ako je svojstvo regularnsoti ispunjeno  nekom trenutku cemo doci u fiksnu tacku

5. Najcesce varijante podele domena:
    - popagacija i petraga se rade, a podela domena je u pretrazi
    * enumeraciju domena - uzmemo jedan element, isprobavamo jedan po jedan, binarno stablo pretrage, u jednoj grani je jedanelement a u drugoj svi ostali
    * oznacavanje - razmatra se zaseban problem za svaku vrednost iz domena, n-arno stablo
    * bisekcija - podela domena na dve jednake polovine

6. Problem je resen ako nadjemo dodelu koja isunjava sva ogranicenja.
    - Problem je neuspesan ako utvrdimo da ne postoji dodela koja ispunjava sva ogranicenja.
    - Propagacijom se ne moze uvek stici do resenja ali se moze znacajno smanjiti domen.
    - Pretragom uvek mozemo stici do resenja problema, ili do toga da resenje ne postoji,

7. NC algoritam ja algoritam koji ima za cilj postizanje konzistenostnosti cvorova.
    - CSP problem ima svojstvo konzistentnosti cvorova ako svaki element domena x zadovoljava sva unarna ogranicenja promenljive x
    - NC-rule : P[D(x) := D(X) presek Cx]
    - uklanjamo sve elemente domena koji ne zadovoljavaju unarna ograncenja
    - nije bitan redosled pimene pravila jer su ogranicenja unarna pa imaju svojstvo idempotentnosti i komutativnosti
    - imamo konacan domen pa ce algoritam ili stati zato sto nema sta da izbaci ili zato sto je domen ostao prazan

8. 
- AC3 algoritam se koristi za postizanje konzistentnsoti lukova.
- CSP ima svojstvo kozistetnosti lukova ako za svako ograicenje C nad promenljivama (x, y) vazi:
    - za svaku vrednost a iz domena x postoji vrednost b iz domena y tako da (a, b) zadovoljava ogranicenje C
    - za svaku vrednost b iz domena y postoji vrednost a iz domena x tako da (a, b) zadovoljava ogranicenje C
- algoritam se zaustavlja jer imamo konacan broj ogranicenja i domena, a koracima algoritma samo izbaujemo elemente iz domena
- Rezultat ne zavisi od reosleda primene pravila, jer se naimenicno primenjuju pravila AC1 i AC2, a ogranicenja su binarna, ako izbacimo neku vrednost iz domena x, onda ce se opet gledati domen y, pa je svejedno da li smo prvo izbacili iz y... ?

9. AC3 - algoritam grube granulacije, što nači da ne pamtimo podrške pojedinačne promenljive, vec svaki put prolazimo kroz ceo skup
- kod algoritma fine granulacije pamtimo podršku, pa ne prolazimo kroz sve promenljive svaki put, to su npr algoritmi AC4 i AC6
- kod algoritama grube granulacije svaki put moramo da prolazimo kroz ceo skup sto je vremenski neefikasno, dok kod algoritama fine granulacije moramo da cuvamo poencijalno velike kolicine podataka, tj podrsku za sve promenljive i ogranicenja, sto je memorijski zahtevno.
- AC3 je $O(md^3)$ i ne mora uvek da dodje do slozenosti najgoreg slucaja jer mze da koristi specifinosti problema
- AC4 je $O(md^2)$ sto je efikasniji njgori slucaj, ali on ga u vecini slucajeva dostigne, i inicijalizacaija struktura je skupa, ne mogu da se koriste specificni problemu
- AC6 je slican AC4, samo malo efikasniji, koristi jednostavnije strukture podataka
- AC2001 je algoritam grube granulacije slozenosti $O(md^2)$

10. prednost globalnih ogranicenja, poput atmost, atlesa, alldiff
    - njihova semantika je ekvivalentma konjukciji vise jednostavniji oranicenja
    - komapktniji zapis globalnog ogranicčnja
    - može bit efikasnije nego da smo pisali ručno, jer kompajleri mogu da optimizuju

11. Lineana strategija resavanja problema ogranicene optimizacije:
    - npr maksimizujemo f(x1, ..., xn)
    - nadjemo jedno resenje d = (d1, ..., dn)
    - u sistem dodamo ogranicenje f(x1, ... xn) > d
    - ukoliko se ne nadje novo resenje onda je prethodno pronadjeno d maksimalno
    - ukoliko se nadje bolje resenje onda si i to doda kao ogranicenje
    - posupak se nastavlja dok god se pronalazi novo resenje

12. Slicnosti i razlike DPLL algoritma i opsteg algoritma resanja CSP prolema:
    - DPLL algoritam se korisit za resavanje SAT problema
    - SAT problem - problem ispitivanja zadovoljivosti formule u KNF-u
    - DPLL se moze gledati kao instanca opsteg algoritma resavanja CSP problema
    - jedinicna propagacija uspostavlja konistentnost hiper-lukova
    - pretraga se vrsi izborom pomenljive i njene vrednosti
- Razlozi koji su omogucili znacajno unapredjenje DPLL algoritma u novije vreme
    - CDCL - Conflict Driven Clause Learning
    - analiza konflikta, nehronolosko vracanje unazad i ucenje klauza

13. Razlika izmedju par i var pri deklaraciji promenljivih u MiniZinc:
    - par je podrazumevano
    - par definiše parametre, nešto što nisu promenljive, imenovane konstante, kao const, moraju biti fiksirane u fazi prevodjenja
    - parametri su zgodni zbog čitjivosti
    - var definise varijable, promenljive, imaju svoj domen i resavac pokusava da im pridruzi vrednost

14.  Definisnje nizova u MiniZinc:   
    - array \[1..10] of int: niz = \[1,2,3\]  
    - array \[1..10] of var 0..1: niz
    - Definisanje skupova u MiniZinc:
        - set of int: skup = 0..10
    - Definisanje matrica u MiniZinc:
        - array [1..3, 1..4] of int: mat = [
            | 1, 2, 3, 4
            | 5, 6, 7, 8
            | 9, 10, 11, 12
        ]

15.  CSP problem: imamo skup proneljivih x,y,z sa domenima {1,2,3,4}, potrebno je da budu sve razlicite i da zbir x+y bude manji od z
```
var 1..4: x;
var 1..4: y;
var 1..4: z;

constraint alldifferent([x, y, z])  
cosntraint x+y<=z

solve satisfy
```

16. Neka je u MiniZinc jeziku zadata dvodimenziona matrica promenljivih:
```
int: n = 10;
array [1..n, 1..n] of var 1..n: M
```
Koristici opise nizova i agregatne funkcije opisati uslov koji zahteva da u svakoj vrsti elementi koji su na ili ispod glavne dijagonale budu medjuspbno razliciti

```
????

alldifferent([x[i,j] | i,j in 1..10 where i>j ])

```
[comment]: <> (
00 01 02 03 04
10 11 12 13 14
20 21 22 23 24
30 31 32 33 34
40 41 42 43 44)


# Marić
1. Jezik u logici prvog reda: logicki i nelogički simboli
    - nelogički simboli su - relacijski, funkcjiski, paralelnost u geometriji, konstante karakeristicne za domen, sabiranje kod broojeva, aritmeticke operacije
    - rezultat relacije i je istinitosna vrednost
    - relacije arnosti 0 su logicke konstante, T/F
    - logički simboli - promenljive i logički vezniki, i kvantifikatori
2. kvantifikovati po funkcijsko simbolu
$\forall x \exists y (P(x,y)) => (\exists f) (\forall x) (P(x, f(x)))$
3. 
    - sintaksa - dobro zapisana formula, relacijski simbol, gledamo samo sintaksno da je u redu, ne gledamo znacenje
    - semantika - sve što je vezano za tačnost i interpretaciju formule, valuacija, model, struktura, valjana formula
    - dedukcija - aksioma, teorema, pravilo izvodjenj
4. I je model za F, I zadovoljava F, F je tačno u interpretciji I
5. Objektna logika - mi definišemo i radimo u nekom sistemu, a meta logika je za formalizaciju tog sistema.
6. 
    - |- , A |- B, B je dokazivo iz A, ne govori o pojmu tačnosti
    - |= smantički pojam, F je tačna u interpretaciji i, a ovde je B logička posledica A
7. Deduktivni sistem je saglasan ako ne možemo da dokažemo false, ne moze da se izvede kontradikcija.
8. Sistem je potpun ako sva tacna tvrdjenja mogu da se dokazu iz aksioma.
9. SAT rešavači koriste semantički, nema ispravnih pravila izvođenja.
10. Da, račun sekvenata, prirodna dedukcija, Hilbertov sistem.
11. Da, isto kao 10, prirodna dedukcija za iskaznu i logiku prvog reda nisu iste
12. Ne, to je   rezultat Gedela
13. Rasselov paradoks: $R = \{A | A  \notin A\}$. Ovaj paradoks je srusio prvi pokusaj formalizacije jer se oslanjao na gresku koja se vuce jos od Kantora.
14. Logicizam je pokret koji se zalaze za formualizovaciju matematiku preko teorije skupova i matematicke logike.
15. Racionalnih brojevi se mogu predstaviti preko parova celih brojeva $(a,b)$, gde je $b \ne 0$. A dva ovako definisana racionalna broja $(a_1, b_1)$ i $(a_2, b_2)$, su jednaka ako je $a_1*b_2 == a_2 *b_1$
16. ZFC, ne moze da se dokaze da nije potpuno. ZF u okviru logike prvog reda predlaze aksiome kojim se definisu skupovi i kako se od jednostavnih skupova grade slozeniji.  
17. ne možemo, druga Gedelova teorema. 
Koriscenjem ZFC aksioma ne mozemo dokazati saglasnost ZFCa, mozemo da probamo nekim drugim sistemom da pokazemo, ali onda moramo da dokazujemo saglasnost tog sistema sto opet ne mozemo.
18. Prva Gedelova teorema nepotpunosti: ne postoji formalan aksiomatski sistem koji bi bio potpun i dovoljan za defisnisanje osnovnih aritmetickih pojmova.  Druga gedelova teorema nepotpunosti: sistem ne moze istovremeno biti neprotivrecan i potpun.
19. Ideja dokaza Gedelove prve teoreme o nepotpunosti: napravimo fomulu koja kaže da jam needokaziva, ako je tačna ne može da se dokaže, ako je netačna onda laže. Recenica: Ova recenica je nedokaziva. Ako je recenica tacna sistem je protivrecan ali ne potpun. Ako nije tacna ona je sistem je protivrecan ali potpun, 
20. Problem je odlučiv - postoji algoritam koji ce datom poblemu dati odgovr da ili ne. Algoiriam kojim može da se ispita. Halting problem je neodluciv, ispitivanje da li je data iskazna formula zadovoljiva u datoj valuaciji je odluciv.
21. Entscheidung problem trazi odgovor na pitanje da li data formula logike prvog reda valjana, tj dokaziva iz nekih aksioma logike prvog reda. Tjuring je sveo problem odlucivanja u loici prvog reda na problem zaustavljanja Tjuringove masine (masina koja moze da opise svaki algoritam). Tjuringova masina se napravi da nabraja sve teoreme iz datih aksioma, ako dodjemo do one koju dokazujemo onda smo je dokazali, ali ako nije dokaziva onda se program ne zaustavlja, a on je neodluciv.

22. Proizvoljan program koji za iskaznu formulu moze da kaze da li jeste ili nije zadovoljiva: iskazne tablice daju odgovor ali izuzetno neefikasno, efikasan program je sat
23. Problem ispitivanja da li je proizvoljna formula logike prvog reda valjana je neolduciv.

21. algoritam je program za tjuringovu mašinu, precizna definicija je i da je algoritam c program, pod pp da ima konačno ali proizvoljno puno memorije, tjuring kompletni jezici, većina savremenih jezikka jeste.

24. Interaktivni dokazivaci teorema: isabell, coq, lean

25. Žil pričao, C kompajer je formalno dokazan, u matematici algebarski rezultati, 4-obojivost grafa

26. Kada se razmatra valuacija iskazne logike iskazna valuacija je preslikavanje iskaza u istinitosnu vrednost (tacno/netacno)

27. Odnos relacije |= i $I_v$: $v |= F$ akko je $I_v(F)$ tacno.

28. Formula je zadovoljiva ako postoji valuacija u kojoj je ona tacna.

29. SAT solveri daju odgovor da li je neka formula zadovoljiva, a formula je zadovoljiva ako je njena negacija tautologija.

30. Ako ispitujemo da li $A=>B$ sat TODO

31. TODO

32. Skup iskaznih formula je zadovoljiv ako postoji valuacija u kojoj je svaka iskazna formula u skupu zadovoljiva.

33. Kada se u nezadovoljiv skupp formula doda tautologija skup ostaje nezadovoljiv.

34. Uproscavanje konstantni za iskazni veznik =>  
$A => B \ \ \ not\ A\ or\ B$  

35. TODO

36. $ukloni\ A => B = not\ (ukloni\ A)\ or\ (ukloni\ B) $

37. $removeNot\ A = $ TODO

# Vesna
- Ideal 
    1. f i g pripadaju
    2.

    - reduce odredjuje ostatak pri dljenje, ako je ostatak 0 znači da pripada idealu
    - ispitivanje da li su dva ideala jednaka, da li jedan podkup drugog, i rugi podskup prvog

- Afin varijetet
    - skup zajedničkih nula polinoma
    - x-2 i y-3

- Poredak monoma