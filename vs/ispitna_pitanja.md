# ISPITNA PITANJA

1. Kvalitet softvera. Briga o kvalitetu softvera u okviru procesa razvoja softvera. Atributi kojima se
meri kvalitet softvera.

Razvoj softvera:
- metode, principi i procedure potrebne da se procesom izrade softvera dođe do efikasnog i pouzdanog proizvoda
- aktivnosti:
    - analiza sistema, specifikacija zateva
    - projektovanje i implementacija softvera
    - briga o kvalitetu softvera (verfikacija i validacija softvera - V&V)
    - održavanje softvera

Kvalitet softvera
- atributi kojima se meri kvalitet softvera su 
    - statičk atributi kvaliteta - strukturianost koda, cena održavanja koda, mogućnost testiranja koda, prisutnost korekrne i kompletne dokumentacije
    - dinamički atributi kvaliteta - pouzdanost (realiability), ispravnost (correctness), kompletnost (completeness), konzistentnost (consistency),lakoća korišćenja (usability), performanse (performance)

- Značenje nekih atributa:
    - kompletnost - raspoloživost svih osobina koje su tražene u zahtevima ili korisničkim uputstvima
    - konzistentnost - pridržavanje opšteg skupa pravila i konvencija koje se podrazumevaju (npr boja dugmića prati konvenciju)
    - lakoća korišćenja - način korišćenja aplkacije se oslanja na psihološke karakteristike korisnika
    - performanse - vreme koje aplikacija koristi da obavi traženi zadatak

2. Kvalitet softvera. Odnos verifkacije i validacije.

- Validacija - da li specifikacija zadovoljava korisničke potrebe? Da li pravimo ono što korisniku treba?
- Verifikacija - da li softver zadovoljava spcifikaciju? Da li je softver ispravan?

![valiadicija vs verifikacija](./imgs/vandv.png)

3. Kvalitet softvera. Uticaj neispravnog softvera.

- greška pravi nedostatak, on dalje uzrokuje pad, pravi i incident koji ima posledice
- Neprijatnost 
    - mobilni telefoni, internet pregledači, muzički uređaji...
    - google maps gives us directions to nowhere (2012)
- korisnik briše mobilnu aplikaciju zbog jedne geške - gubitak korisnika
- materijalni gubici
    - poslovni softver, banke, gubici podataka (virusi)
- Love virus (2000) - desetine miliona zaraženih računara, značajan gubitak podtaka, šteta oko 10 milijardi dolara
- Knight Capital Group (2012) - izgubli 460 miliona dolara za 45 minuta jer su pokrenuli pogrešnu verziju softvera
- fatalne posledice
    - avioni, automobili, vozovi, aparati u zdravstvu, svvemirske letelice, nuklearne elektrane
- Ariana 5 (1996) - raspala se 37s nakon lansiranje usled greške u konverziji, 64bit u 16bit, 370 miliona dolara
- Dhahran raketa (1991) - pogodila cilj i ubila 28 vojnika: zbog grešske u softveru nije ispaljena protivodbrana
- Therac 25 (1986) - više ljudi je umrlo kao posledica predoziranja radijacijom usled neispravnosti softvera uređaja za terapijsku radijaciju

- neispravan softver košta američku ekonomoju 59,5 milijardi godišnje
- ranije otkrivanje greške moglo bi da uštedi 22 milijarde dolara godišnje
- broj linija koda se duplira svake godine, a broj defekata po liniji se nije menjao u zadnjih 10 godina

4. Tehnike verifkacije softvera. Osnovna podela i mogučnosti statičkog i dinamičkog pristupa.

Dinamička verifikacija softvera
- tehnika ispitivanja ispravnosti koda u toku njegovog izvršavanja
- testiranje 
    - sinonim za veriikaciju softvera, kao i za validaciju i verifikaciju
    - tehnika izvršavanja programa sa namerom da se pronađe što više mogućih defetata ili da se stekne dovoljnno poverenje u sistem koji se testira
    - u svakoj fazi razvoja softvera, plan testiranja zavisi od metodologije razvoja softvera i prilagođava se konkretnom projektu
    - skup podataka nad kojima će se vrštiti testiranje treba da bude reprezentativan:
        - visok potencijal otkrivanja greške
        - relativno mala veličina
        - visok stepen poverenja u pouzdanost softvera
    - testiranje crne kutije - funkcionalno testiranje, generisanje test primera bez rezmatranja interene strukture koda
    - testiranje bele kutije - strukturno testiranje, generisanje test primera na osnovu interne strukture koda, npr jedinični testovi; kriteriju pokrivenosti koda: broj izvršenih putanja, broj izvršenih istrukcija, broj ivršenih grana...
    - testiranje sive kutije - mešovita stratgija
    - automatizacija testiranja - sastavni deo alata za razvoj softvera, alati za kontinuiranu integraciju softvera, alati za testiranje specifičnih vrsta softvera
    - automatsko generisanje test primera - olakšava generisanje test primera, npr fuzz testing
    - koriste se alati za debagovanje i razne vrste profajliranja
    - testiranje ne može da dokaže ispravnost softvera

Statička verifikacija softvera
- analiza ispravnosti programa bez njegovog izvršavanja - analiza izvornog koda
- vrste statičke verifikacije:
    - ručne provere i pregledi koda
    - formalne metode verifikacije softvera - uslovi ispravnosti softvera se iskazuju u terminima matematičkih tvrđenja na sktriktno definisanom formalnom jeziku izabrane matematičke teorije
    - Halting problem - ne postoji opšti automatizovan način za proveraanje da li je neka naredba programa dostižna, pa samim tim ni da li je ispravna, tj da li je program ispravana
    - Nije moguće napraviti program koji bi potpuno automatski, u konačnom vremenu, koristeći konačne resurse, mogao da utvrdi ispravnost proizvoljnog programa potpuno precizno
        - to možemo ili precizno ili efikasno, ne oba

5. Testiranje u razvoju softvera. Cena greške u kontekstu vremena otkrivanja.

- poželjno je sve greške detektovati što ranije u fazi razvoja softvera jer je
ispravljanje grešaka jeftinije i brže u ranijim fazama razvoja softvera
- greška se vremenom samo povećava, pa je sve teže ukloniti
- Faza analize zahteva
    - cena greške = vreme potrebno da se utvrde i napišu novi zazhtevi
- Faza kodiranja
    - cena greške = dodatno vreme programera
    - vreme može da varira u zavisnosti od kompleksnosti greške, jer je značajno manje nego kada se ispravlja greška koju pronađe neko drugi, kad programer pronađe svoju grešku obično razume problem i zna kako da ga reši
- Faza integracije koda
    - cena greške = dodatni rad programera i drugih inženjera
    - greška se obično ispravlja duplo duže jer je potrebno naći gde je greška u kodu ili specifikaciji
- Sistemsko tstiranje
    - cena greške = dodatni rad programera i drugih inženjera, dodatni rad program menadžera i QA tima
    - QA itester treba da zna da reprodukuje i dokumentuje sve korake da se opiše greška
    - QA tester treba da prijavi grešku i da joj prioritet, da se sastane sa programeri i to prodiskutuje
    - nakon ispravljanja greške mora ponovo da se integriše, testira redom, proveri da li je greška stvarno uklonjena
- Testiranje prihvatiljivosti
    - cena greške = dodatni rad programera i drugih inženjera, dodatni rad program menadđera, QA tima i kupca/korisnika
    -komunikacija testera za proveru prihvatiljivosti i za sistemsko testiranje
    - sistemski tester treba da pokuša da reprokuje grešku, ako ne može onda treba dalje da komunicira sa testerom za prihvatljivost
    - ako se greška reprodukuje onda se kod vraća u prethdne faze da se greška ispravi, pa se sve ponovo tesira
- Program u upotrebi
    - cena greške = dodatni rad programera i drugih inženjera, dodatan rad program menadžera, QA tima i kupca/korisnika
    - koraci identični kao u prethodnom, ali su posledice značajno već jer ispravljen kod treb da se isporuči svima

6. Testiranje u razvoju softvera. Uloga testera u razvoju softvera.

- tester ima za cilj da pronalazi greške u kodu

Podele u timu:
- programeri su istovremeno i testeri
- programeri i testeri rade zajedno
- programeri i testeri su potpuno razdvojeni (nekad na fizički razvojenim lokacijama)

Problemi između programera i testea 
- loša komunikacija
- međusobno nerazumevanje
- netrpeljivost

Tester poseduje
- osnovno razumevanje programiranja i procesa razvoja softvera
- poznavanje procedure i procesa testiranja
- poznavanj alata i skript jezika
- poznavanje čestih greški i propusta, kao i nesvakidašnjih slučajeva upotrebe
- kreativnost i potrebu za stalnim usavršavanjem

7. Testiranje u razvoju softvera. Faze testiranja softvera: planiranje, analiza, dizajn i implementacija testova.

Ulazni kriterijumi
- nije neophodan kod za početak testiranja
- dovoljno je imati samo jasno definisane zateve korisnika, jer testiranje počinje analizom zahteva
- potrebno je da postoji specifikacija zahteva sistema koji treba da se izgradi

Test slučaj - dokument koji definiše ulaze u sistem i očekivane izlate za te ulaze

Planiranje
- priprema za ceo proces testiranja
- uključuje definisanje zadataka koje je potrebno sprovesti kao i način njihovog ivršavanja
- planiranje definiše:
    - vrste testova koje će biti sprovdene
    - opseg testiranja, pristup, strategije i metode testiranje
    - kriterijumi zevršetka
    - potrebne resurse i dogovora način komunikacije između članova tima
- zavisiti od primenjene metodologije razvoja softvera i prilagođava se svakom konkretnom projektu
- planiranjem se dobija skup dokumenata koji sadrže opšti pogled na sistem koji će se testirati, aktivnosti koje će biti izvršene kao i alate koji će biti korišćeni

Analiza, dizajn i implementacija testova
- obuhvata pravljenje detaljne specifikacije načina na koje će se aktivnosti predviđene planom izvršiti
- ispituje se mogućnost testiranja određenih delova koda, prikupljaju potrebni podaci i precizni zahtevi korisnika
- kreiaju se precizna uputstva kako će se vršiti testiranje sistema
- rezultat ove faze je skup test slučjeva i test procedura koja će biti korišćena u fazi zvršavanja testova
- izvršavanje može biti ručno ili automatsko

8. Testiranje u razvoju softvera. Faze testiranja softvera: izvršavanje i evaluacija testova.

Izvršavanje testova
- proces konkretne primene test slučajeva i test procedura formiranh na osnovu plana, analize, dizajna i implementacije
- određuje se prioritet izvršavanja testova, pripremaju se testovi za automatizovano testiranje (ukoliko je ono deo procesa testiranja) i organizuju testove za što efikasnije izvršavanje
- vrši se radi provere funkcionalnosti sistema
- obuhvata i dodatnu aktivnost statusa problema, ova aktivnost podrazumeva eliminaciju prijavljneih problema kao i potvrđivanje da je problem rešen
- ponovno izvršavanje testova posle popravke grešaka
- komunikacija tester-programer

Evaluacija testova
- procenu kriterijuma završetka testiranja i izvršavanja
- svaka izmena u kodu, čak i popravka greške može napraviti novu grešku
- kriterijum za završetak testova može biti procenat nerešenih bagova, reostalo vreme za testianje
- proces evaluacije uključuje pregled rezultata dobijenh analizom izlaza test slučajeva
- na kraju se kreira izveštaj sa opisom šta je testirano, na osnovu iveštaja se određuje da li je sistem spreman za korišćene u sklasu sa korisničkim zahtevima
- izlazni kriterijum određuje da li je testiranje kompletirano i da li je apikaicija spremna za korišćenje u sladu sa korisničkim zahtevima, uključuju test summary report, izračunavanje raznih metrika i izveštaja o defektima
- aktivnosti zatvaranja testiranja
    -testiranje se zatvara kada je softver isporučen korisniku, ili kada je projekat otkazan ili neki ugi cilj postignut
    - test skriptovi i dokumentacija se ariviraju, primenjeni proces testiranja se analizira i diskutuje se o tome šta je bilo dobro a šta ne

9. Vrste testiranja. Testiranje jedinca koda.

- proverava se funkcionisanje delova sistema koji se nezavisno mogu testirati
- to mogu biti podprogrami,
klase, manje ili veće celine formirane od tesno povezanih jedinica
- kroz ovo prolazi svaki i najmanji deo sistema
- jedinični tetovi su definisani standradom IEEE Standard for Software Unit Testing
- dobra podrška u alatima za automatsko izvršavanje i proveravanje ovih testova, sastavni deo razvojnog okruženja
- proverava da li izolovani delovi koda imaju predviđenu funkcionalnost
- ukoliko sistem komunicira sa mrežom, bazom podataka ili fajl sistemom, to se u testovima apstrahuje u nekakve fiksne vrednosti
- apstrahuje se u ukoliko komunicira sa drugim klasama, modulima ili komponentama sistema
- dozvoljena je samo dikretna komunikacija se memorijom
- testiranje metodama bele kutije
- testove piše programer
- ukoliko postoji greška unutar jedinice koda, ona bi trebalo da bude otkrivena u ovoj fazi

10. Vrste testiranja. Komponentno i integraciono testiranje.

Komponentno testiranje
- proverava komponente sastavljene od više jedinica koda
- jedinice koda su proverene da ispravno rade u izolaciji, sada se testira na nivou komponenti
- proverava se komunikacija između jedinica koda
- komponetna je skup povezanih jedinica koda koje imaju zajednički interfejs prema ostalim komponentama
- komponente se testiraju odmah po njnihovom kreiranju
- testiranje se može i ne mora vršiti izolovano od ostatka sistema, u zavisnoti od izabranog modela razvoja
- ovo je vrsta integracionog testiranja nižeg nivou jer se komponentom testiranja integrišu osnovne jedinice koda
- u zavisnosti od vrste projekta ga može vršiti programer ili tester

Integraciono testiranje
- proverava saradjnu komponeni koje predstavljaju jednu celinu
- ispituje da li su veze između komponenti dobro definisane i realizovane, tj da li komponente komuniciraju na način opisan u specifikaciji projekta
- ovim testovima se mogu naći propusti u komunikaciji između komponenti
- testiranje metodama crne kutije
- testiranje rade testeri

11. Vrste testiranja. Sistemsko testiranje. Istraživačko testiranje. Testovi prihvatljivosti.

Sistemsko testiranje
- proverava sistem kao celinu
- da li se sistem ponaša sa specifikacijom koju je zado klijent
- zahteva se pristup bazi i hardverskim delovima sistema
- može uključivati funkcionalne i nefunkcionalne aspekte sistema
- u ovu vrstu se nekad ubrajaju istraživačko testiranje i testiranje prihvatljivosti, a nekad se gledaju odvojeno

Istraživačko testiranje
- testeri pronalaze i proveravaju druge eventualne pravce korišćenja softverskog sistema
- podrazumeva prepoznavanje, kreiranje i izvršavanje novih test slučajeva (onih koji nisu bili predviđeni test planom)
- ima smisla kada je aplikacija u svom finalnom obliku, kada tester može da vidi i druge alternativne pravce korišćenja sistema koji se ranje nisu mogli tstirati
- ako se ova faza preskoči neki funkcionalnosti možda ne budu testirane

Testovi prihvatljivosti
- omogućava klijentukorisniku da se uveri da je napravljeni softver u skladu sa njihovim potrebama i očekivanjima
- validacija softvera
- izvode i procenjuju korisnici, a razvojni tim pruža pomoć oko tehničih pitanja ukoliko ima potrebe
- klijent može proceniti sistem na tri načina:  
    - referentim testiranjem - uobičajjni uslovi u kojima sistem treba da radi, da li je softver implementiran u skladu sa očekivanjima
    - pilot testranjem - instalacija sistema na privremenoj lokaciji i njegova upotreba, simulacija svakodnevnnog rada u sistemu
    - paralalenim testiranjem - tokom razvoja kada jedna verzija softvera treba da zameni drugu ili kada novi sistem treba da zameni stari, paralaleno funkcioniše stari i novi sisem dok se korisnici postepeno privikaaju i prelaze na novi sistem

12. Vrste testiranja. Nefunkcionalno testiranje. Testovi bezbednosti. Instalaciono testiranje.

Nefunkcionalno testiranje
- nefukncionalni zahtevi: brzina, efikasnost, otpornost na otkaze, uklapanje u okruženje u kom će se sistem koristiti
- testiranje performansi:
    - testovi konfiguracije - ispituje se ponašanje u razlečitim hardverskim i softverskim okruženjima, različite konfiguracije su namenjene različitim korisnicima sistema, ovim testovima se proveravaju sve konfiguracije sistema
    - testovi kapaciteta - proverava ponašanje sistema pri obrdi velikih količina podataka, skupovi podataka dostižu svoje maksimalne kapacitete
    - testovi kompatibilnosti - proverava se način ostvarivanja komunikacije sistema sa drugim spoljnim sistemima

Testovi bezbednosti
- proverava se da li su odredene funkcionalnosti dostupne isključivo onim korisnicima kojima su namenjene
- proverava dostupnost, integritet i poverljivost svih skupova podataka

Instalaciono testiranje
- izvodi se instaliranjem softvera na klijentskoj strani
- sistem se konfiguriše u skladu sa okruženjem
- uspostavlja komunikaciju sa spoljnim uređajima ukoliko je potrebno
- u saradnji sa korisnicima
- nakon uspeha ovog testiranja se sistem isporučuje

13. Tehnike testiranja. Odnos plana i strategije testiranja. Karakteristike dobrog skupa tesotva.
Osnovna podela na tehnike testiranja.

Plan testiranja - dokument sa informacijama o fokusus i obimu testiranja, definiše kriterijum pokrivenosti, raspored testiranja, osobine koje se testiraju i potrebne resurse
- šta testiramo i kako to želimo da ostvarimo

Strategija testiranja - vodič za postizanje cileva testiranja i izvršavanjne testova koji se pominju u planu testiranja
- definiše ciljeve, okruženja, pristup, automatizaciju i tehnike, nepredviđene situacije i analiza rizika

Ako je plan testiranja destinacija onda je strategija uputstvo kako do njega doći, mapa kako doći do destinacije.

Dobri test prmeri
- metod odeđivanja reprezntativnog skupa podataka nad kojima će se vršiti testiranje
    - visok potencijal otkrivanja grešaka
    - relativno mala veličina
    - relativno velika brzina izvršavanja
    - visok stepen poverenja u pouzdanost softvera
- pokrivenost koda - broj elemenata programa ispitanih testovima u odnosu na ukupan broj tih testova

Testiranje crne kutije
- generisanje testova na osnovu specifikacije, bez razmatranja interne strukture
- funkcionalno testiranje, testiranje ponašanja, testiranje vođeno podacima
- ponašanje iz korisničkog ugla
- dajemo ulaz i proveravamoočekivani izlaz
- pronaći prihvatljiv broj test slučajeva koji otkriva što više grešaka
- prednost: moguće potpuno razdvajanje programera i tester

Testiranje bele kutije
- npr jedinični testovi
- testovi se generišu na osnovu interne strukture koda
- kriterijum pokrivenosti - broj izvršenih putanja, instrukcija, grana ...
- strukturno testiranje, testiranje vođeno logikom
- ispituju se različite putanje kroz program
- može i za integraciono i sistemsko testiranje
- mogu se testirati putanje kroz jedinicu koda, putanja između jedinica koda za vreme integracije, putanje između podsistema za vreme sistemskog testiranja

Testiranje sive kutije
- mešovita strategija
- imamo uvid u unutrašnju strukturu, ali ne kao kod bele kutije
- kompozitno i integraciono testiranje
- programeri i testeri

14. Tehnike testiranja. Testiranje metodama crne kutije. Isprobavanja svih mogućih ulaza. Metod klasa ekvivalencije.

Isprobavanja svih mogućih ulaza
- nije moguće za netrivijalne programe
- npr za 3 32-bitna broja ima 2^{32} * 2^{32} * 2^{32} = 2^{96}

Metod klasa ekvivalencije
- cilje: smanjiti broj test slučajeva, a pritom održati razumnu pokrivenost testovima (pokrivenost se odnosi na broj mogućih ulaza koji će biti ispitan testovima)
- klasa ekvivalencije - skup podataka koji se tretiraju jadnako od strane modula ili koji treba da proizvede isti rezultat
    - sa tačke gledišta testiranja, podataka u okviru jedne klase su ekvivalene ostalim vrednostima u okviru te klase
    - ako jedan test slučaj u jednoj klasi ekvivalencije detektuje grešku, svi ostali test slučajevi u okviru ist klase ekvivalencije će verovatno detektovati istu grešku
    - ako jedan test slučaj u jednoj klasi ekvivalencije ne detektuje grešku, ni jedan drugi test slučaj u okviru ist klase ekvivalencije verovatno neće detektovati grešku
- identifikujemo klase ekvivalencije, pa pravimo test slučaj za svaku klasu ekvivalencije

15. Tehnike testiranja. Testiranje metodama crne kutije. Metod klasa ekvivalencije. Metod graničnih vrednosti.

Metod klasa ekvivalencije
- prethodno pitanje

Metod graničnih vrednosti
- fokusira se na granice, jer se tu krije mnogo grešaka
- česta greška je kodiranje nejednakosti, > umesto >=
- postupak:
    - identifikovati klase ekvivalencije
    - identfikovati granice svake od klasa ekvivalencije
    - praviti test slučaj za svaku graničnu vrednost birajući jednu tačku na granici, jednu ispod i jednu iznad granice
    - tačke ispod i iznad granice mogu pripadati drugim klasama ekvivalencije pa treba voditi računa o dupliranju testova
    - više dimenzija u klasama ekvivalencije, realni brojevi

16. Tehnike testiranja. Karakteristike dobrog skupa tesotva. Tabele odlučivanja.

Karakteristike dobrog skupa tesotva
- pitanje 13

Tabela odlučivanja
- prikaz složenih poslovnih pravla u lako čitljiv olik pomoću kog se mogu napraviti i test slučajevi
- prvu grupu redova čine uslovi nad ulazom a drugu moguće akcije
- kolone tabele predstavljaju pravila koja jedinstvenoj kombinaciji uslova dodeljuju odgovarajuće akcije
- uslovi pravila mogu biti binarni (izvode tačno jedan slučaj) ili sa više od dve vrednosti (mogu izvesti više slučajeva)
- izbor različitih test slučajeva iz jednog pravila može se vršiti u kombinaciji sa drugim tehnikama, kao što su klase ekvivalencije ili granične vrednosti
- kada imamo više pravila kod kojih akcija ne zavisi od vrednosti nekog uslova možemo ih spojiti u jedno pravilo (engl. table collapsing ). Takav uslov u novom pravilu označavamo sa '-' i nazivamo nebitnim (engl. don't care)

![](./imgs/tabela_odlucivanja.png)

17. Tehnike testiranja. Karakteristike dobrog skupa tesotva. Dijagrami stanja. Tabele stanja.

Dijagram stanja
- kompaktno opisuje kompleksne zahteve sistema i njegov način interakcije sa spoljašnjim svetom
- primenjuje se kod sistema čije akcije zavise od akcija izvršenih uprošlosti i koji reaguju na spoljašnje dogadaje
![](./imgs/dijagram_stanja.png)

- U svakom trenutku sistem se nalazi u nekom od konačno mnogo stanja i čeka na neki dogadaj
- Kombinacija stanja i događaja određuje stanje u koje sistem prelazi
- Pri prelasku sistem može da izvrši još neku akciju, obično pravljenje nekih izlaza
- Ovakav sistem se može modelovati konačnim automatom 
- Dijagram stanja je jedan od načina prikaza takvog modela
- test slučajevi se mogu praviti obilaskom dijagrama stanja
- pri pravljenju testova se mogu zahtevati različiti nivoi pokrivenosti, pri čemu postoji kompromis između pokrivenosti i količine testova
- dobro je svaki prelaz ispitati bar jednom, možemo zahtevati da se svako stanje ili svaka putanja kroz dijagram obiđu bar jednom

Tabela stanja
- konačni automat koji modeluje sistem sa može prikazati i tabelama stanja
- prednost: sistematski pristup, prikazuje sve moguće kombinacije stanja i događaja
- može se uočiti gde je nedefinisano ponašanje sistema, i sprečiti pojavu greške
- iz svakog reda se može izvesti jedan test slučaj

18. Tehnike testiranja. Testiranje metodama bele kutije. Pojam i vrste pokrivenosti.

Testiranje bele kutije
- pitanje 13

Pokrivenost putanja (Path Coverage) 
- mera prolaska kroz moguće putanje 
- potpuna pokrivenost: sve moguće putanje programa su izvršene bar jednom

Pokrivenost naredbi (Statement Coverage) 
- mera izvršavanja naredbi programa
- potpuna pokrivenost: svaka naredba programa je izvršena bar jednom

Pokrivenost grana/odluka (Branch/Decision Coverage)
- mera prolaska kroz grane programa 
- potpuna pokrivenost: svaka odluka u programu je doneta bar jedno

Pokrivenost uslova (Condition Coverage) 
- mera ispitivanja uslova programa 
- potpuna pokrivenost: svaki uslov u svakoj odluci je uzeo sve moguće vrednosti bar
jednom

Pokrivenost višestrukih uslova (Multiple Condition Coverage) 
- mera ispitivanja
višestrukih uslova programa 
- potpuna pokrivenost: svaka moguća kombinacija uslova u svakoj odluci je ispitana bar jednom

Pokrivenost funkcija (Function Coverage) 
- mera poziva svih funkcija programa

![](./imgs/hijerarhija_pokrivenosti.png)

Računanje pokrivenosti koda
- postoje alati koji računaju
- gcov, Cobertura, CodeCover,Coverage.py, Emma, Gretel, Hansel, JaaCoCO, JCov

19. Tehnike testiranja. Karakteristike dobrog skupa tesotva. Testiranje metodama bele kutije. Testiranje baznih putanja.

Testiranje baznih putanja:
- izvođenje grafa toka upravljanja iz softverkog modula
- izračunavanje iklomatične kompleksnosti grafa - **C**
- odabir skupa **C** baznih putanja
- pravljenje test slučajeva za svaku baznu putanju
- izvršavanje ovih testova

Ciklomatična kompleksnost
- metrika koja se koristi da se izračuna kompleksnost softvera
- kvantitativna mera broja linearno nezavisnih putanja koz kod programa
- $C = grane - čvorovi + 2*broj_povezanih_komponenti$
- kreiranjem i izvršavanjem svih baznih test slučajeva, garantuje se i pokrivenost grana i pokrivenost naredbi zato što skup baznih putanja pokriva sve grane i čvorove grafa kontrole toka

20. Načini testiranja. Automatizacija u testiranju.

Automatizacija:
- način generisanja test primera
    može samo za neke vrste testiranja, npr za metode bele kutije, neke nefunkcionalne testove
    - većina funkcionalnih testova se mora manuelno generisati
- način izvršavanja test primera
    - u mnogim slučajevima je moguće automatizovati izvršavanje testiranja
    - često deo alata za razvoj softvera, alata za kontinualnu integraciju softvera, alata za testiranje sšecifičnih vrsta softvera...
    - najčešće vezano za testiranje jedinica koda
    - xUnit framework, JUnit, CppUnit
    - obično povezano sa automatskim računanjem pokrivenosti koda

21. Metamorfno testiranje.

- problem proročišta - nije dostupno ili ga je teško koristiti
- izraženo u grafici, konstrukciji kompilatora i mašinskom učenju
- metamorfno testiranje testira bez korišćenja prorčišta, umesto toga se koriste osobine algoritma koji se testira kako bi se generisali dodatni test primeri i automatski verifikovali njihovi izlazi
- Većina aplikacija ima neka svojstva takva da za odredene promene ulaza mogu da se predvide neke karakteristike novog izlaza, uz poznavanje prvobitnog izlaza
- npr ukoliko se ulaz poveća za n izlaz se poveća za $n^2$, ukoliko je ulaz po modulu k isti onda je izlaz isti...
- može se implementirati nezavisno od određenog programskog jezika
- ključni korak je identifikovati metamorfne relacije koje daju neku veu između više ulaza i njihovih izlaza za dati program
- Dobro je izabrati metamorfne relacije koje rezultuju najvećim razlikama u izvršnim putevima izmedu izvornih i naknadnih test primera: ako imamo veliku razliku izmedu izvršnih puteva, imamo i veliki prostor u kojem može da se izrazi propust u softveru
- često nije očigledno koje metamorfne relacije će rezultovati većoj razlici između izvršnih puteva
- potrebno je domensko znanje 

Relacija ekvivalentnosti
- Relacija ekvivalentnosti kao relacija izmedu relevantnih izlaza se pokazala kao bolja od ostalih relacija pošto je ekvivalentnost uži uslov od ostalih neekvivalentnih uslova
- Metamorfne relacije sa relacijom ekvivalentnosti se lakše mogu prekršiti od ostalih relacija, čime bi trebalo da se detektuje veći broj grešaka

22. Debagovanje. Neophodna podrška, najpoznatiji debageri.

Debager - program koji se koristi za praćenje rada drugog programa sa ciljem pronalaženja uzroka greške

Da bi informacije koje debager daje bile razumljivije, potrebna je podrška kompajlera/linkera.
Da bi debager mogao da radi, potrebna je podrška operativnog sistema i/ili hardvera.

Potrebna podrška
- Operativni sistem i hardver
    - debageri hvataju sistemske prekida, oni su sistemski zahtevni alati pa je potrebno razumeti kako procesi i sistemsk prekidi funkcionišu na odggovarajućem operativnom sistemu
    - na Linuxu je za sistemske prekide važna funkcija ptrace (process trace), jedan proces može da kontroliše drugi
    - debager može direktno da koristi neke funkcionalnosti hardera ukoliko su dostupne
- watchpoints - prati vrednosi neke promenljive u memoriji


Poznati debageri
- GDB - GNU debugger
- LLDB - LLVM based debugger
- WinDBG - Microsoft
- Microsoft Visual Studio Debugger

23. Debagovanje. Razlika izmedu release i debug režima prevodenja.

Releas mode
- daje izvršnu verziju namenjenu krajnjem korisniku
- optimizacije koje omogućavaju efikasno izvršavanje koda
- efikasnost je nekad vidilja
- optimizacijama se gubi veza sa originalnim kodom, neki delovi koda se usled optimizacije obrišu, neki se pomere, neki prezapišu...
- veličina izvršnog fajla je manje nego fajla prevedenog u debug modu

Dbug mode
- prevođenje u izvršnu verziju namenjenu programeru
- isključuje optimizacije sa ciljem lakšeg uparivanja izvornog i izvršnog koda, tj može se utvrditi koji deo koda se izvršava u datom trenutku
- manje efikasno izvršavanje
- većina ivršnog fajla je veća nego veličina fajla prevedenog u releas mode, zbog manjka optimizzacija i viška dodatnih informacija

Različite verzije mogu raličito da se ponašaju
- nekad se greška ispoljava samo u releas verziji
- debug verzija usled dodatni podataka ili inicijalizacije memorije maskira grešku
- greška se možda javlja zbog neke optimizacije

24. Debagovanje. Kako rade debageri?

Debager 
- može da započne proces i da ga prati i debaguje, ili može da se nakači na proces koji se već ivršava
- omogućava izvršavanje instrukciju po instrukciju
- omogućava postaljanje tačaka prekida i izvršavanje programa do tih tačaka prekida
- omogućava praćenje stanja promenljivih kroz ivršavanje
- savremeni debageri omogućavaju izmenu koda koji se izvršava i posmatranje efekta takvih izmena, debagovanje unazada, uslovne prekidne tačke, watchpoints
- može se koristiti i za releas i za debug mod
- debug verzija je povezana sa ivornim kodom pa daje više informacija
- u releas verziji su informacije često uvid u asemblerski kod, kao što ih vidi procesor

Anti-debagovanja
- implementacija tehnika unutar koda koje ometaju pokušaj obrnutog-inženjeringa ili debagovanja ciljano procesa
- zaštita od kopiranja
- virusni programi ga koriste

Pojednostavljeno izvršavanje:
Kada se postavi prekidna tačka u programu sa željom da se na tom mestu zaustavi program, debager umetne na to mesto u softveru instrukciju prekida ili neku nevalidnu instrukciju. Kada se prilikom izvršavanja programa naiđe na ovu instrukciju desi se hardverski izuzetak koji uzrokuje prekid. Najpre se proveri da li je prekid u listi očekivanih debager prekida (tj da li je u pitanju namerno zaustavljanje ili greška u originalnom kodu). Ukoliko je greška u originalnom kodu, onda se dopusti da se ta greška i izvrši i da program pukne. Ukoliko je u pitanju tačka prekida, prekid se prosledi na obradu debageru koji ga onda obradi tako što na tom mestu omogući uvid u sve vrednosti razičkih registara procesa kao i u stanje memorije. Debager prikazuje pročitane informacije o procesu povezane sa informacijama o izvornom kodu koje su nalaze u programu umetnute od strane kompajlera/linkera prilikom prevodenja programa. Ukoliko je u pitanju uslovna prekidna tačka, debager proverava uslov i u slučaju da uslov nije ispunjen, preskače se obrada prekida i samo se nastavlja dalje sa izvršavanjem procesa.
Kada poželimo da nastavimo izvršavanje:
- debager zameni instrukciju prekida sa originalnom instrukcijom
- izvrši je
- zameni ponovo originalnu instrukciju instrukcijom prekida
- prepusti ponovo dalje kontrolu programu

25. Debagovanje. Otvoreni problemi. Za i protiv debagera.

Debagovanje višenitnih aplikacija
- teško je
- debagerima treba dodatna podrška, najvažniji debageri imau tu podršku
- komunikacija između niti često može zbuniti debager
- pokretanje aplikacije kroz debager može poremetiti redosles izvršavanja u okvir aplikacije i time zamaskirati problem

Ograničenost primene
- primenljivo nad aplikacijama srednje veličine, ne skalira se uvek
- za veće i kompleksnije softvere proces debagovanja može biti previše spor

Protivnici debagera
- Linus Torvalds - kreirao Linux
- Robert C. Martin - jedan od autora agilnog programiranja, misli da su debageri gubljenje vremena
- Brian W. Kernigham - debagovanje sa print
- Guido van Rossum - autor pythona, 90% debagovanja je print
- razlog: debageri nisu oduvek bili moćni i uspešni alati kao danas

Print umesto debagera
- potrebno novo prevođenje
- umetanje print može da zamaskira grešku
- ne može zaustaviit program i videti sve zanimljive vrednosti
- štampanje je statična aktivnost, za svaku promenu je potrebno novo izvršavanje
- dobro jedino ako ne postoji alternativni debager

26. Profajliranje. Osnovni pojmovi. Ciljevi profajliranja. Testiranje performansi i optimizacija. Podrška profajliranju. Instrumentalizacija. Ograničenja.

Performanse 
- testiranje performansi - merenje vremenske i memorijske efikasnosti programa
- ako program ne zadovoljava kriterijuma potrebno je naći uzrok i izvrštiti optimizaciju
- profajleri generišu informacije na osnovu kojih se donose odluke o optimizaciji

Profajliranje
- vid dinamičke analize koda čiji je rezultat skup podataka dobijen izvršavanjem programa sa odredenim ulaznim podacima
- zasniva se na instrumentalizaciji, tj ubacivanju dodatnih instrukcija u proram kako bi se prikupljali podaci o programu za vreme njegovog izvršavanja

Profil
- podaci dobijeni profajliranjem
- npr frekvencija izvršavanja funkcija ili blokova koda, procenat utrošenog vremena u bloku koda, podatke o alokaciji memorije
- pomaže otkrivanju koda koji se često izvršava, određivanju pokrivenosti koda datim ulazima prošitivanju skupa testova i rešavanju mnogih drugih problem
- merenje se najčešće odnose na broj izvršavanja određenog dela koda ili vreme provedeno u tom delu koda
- različiti ulazi daju različite profile
- da bi se donela odluka o optimiazaciji važno je da se profil napravi realnom upotrebom programa, da su ulazi ili skupovi ulaza relevantni

Testiranje performansi i optimizacija
- optimiaciju na osnovu profajliranja vrši čovek, a može i automatski
- samo čovek može suštinski da izmeni algoritam, dok automatska optimizacija može da poboljša efikasnost koda
- automatska optimizacija može da se sprovodi u fazi izvršavanja koda ili u fazi kompilacije
- u fazi kompilacije optimizacija koristi informacije dobijene profjliranjem da bi se dobila nova efikasnija izvršna verzija
- u fazi izvršavanja koristi informacije dobijene profajliranjem da bi se donela odluka o tome da se neki delovi izvršnog koda optimizuju u fazi izvršavanja

Podrška profajliranju
- samo softversko, može da ima podršku hardvera ili mešavina sofverskog i hardverskog profajliranja
- podrška hardvera omogućava veću efikasnost profajliranja, kao i veći opseg podataka dobijenih na osnovu profajliranja
- za neka merenja je neophodan hardver, brojanje promašaja keša u memoriji, merenje utrošenog vremena zbog čekanja protočne obrade neke instrukcije

Instrumentalizacija
- prikuplja samo potrebne podatke
    - premalo nije značajno, puno usporava
- ne utiče na funkcionalnost programa
    - ako utiče na rad rograma onda podaci ne oslikavaju pravi način njegovog rada
- ne usporava previše rad programa
    - zavisi od tipa aplikacije, možemo kontrolisati u zavisnosti od granulacije, tj delova programa koji se instrumentalizuju
- na osnovu toga kako se nove instrukcije ubacuju u program
    - programer manuelno dodaje željene llinije u kod
    - automatski u različitim fazama
        - sprovodi kompajler i/ili linker
        - može da se ubaci u već kompajlirani program
        - može da se ubaci u vreme kompajliranja

Ograničenja instrumentalizacije
- sistemi u realnom vremenu imaju stroga vremenska ograničenja koja se profajliranjem mogu poremetiti i time izazvati štetu
- memorijska ograničenja uređaja, program sa dodatnim kodom može da ne stane na uređaj


27. Profajliranje. Osnovne vrste. Profajliranje putanja, blokova, grana. Knutov algoritam.

- najčešće se prikupljaju informacije o količini izvršavanja određenih delova koda kako bi se pri optimizaciji obratila pažnja na njih
- najbitnije informacije su
    - sekvence blokova koje se najčešće izvršavaju
    - instrukcije (blokovi) koji se najčešće izvršavaju

Osnovne vrste profajliranja
- profajliranje putanja
- profajliranje blokova
- profajliranje grana

- postavljamo brojače kojima utvrđujemo koliko puta se neki događaj desio prilikom izvršavanja
- dobijeni profili se mogu koristiti za kompajlerski zasnovane optimizacije i za utvrđivanje pokrivnosti koda testovima

Profajliranje putanja
- složen vid profajliranja
- dobijaju se informacije o najčešće korišćenim putanjama kroz program
- sadrži informacije o profilima grana i blokova
- zahteva kompleksne algoritme i najviše utiče na performanse izvršavanja prilikom profajliranja

Profajliranje blokova
- blok - funkcija ili deo koda u kome se ne nalaze instrukcije grananja ili skovi
- broji ukupan broj izvršavanja svakog bloka
- naivni algoritam- svakom bloku dodeliiti brojč, precizna informacija ali prilično usporava sistem
- ne daje informacije koje su putanje najčešće ni koji su prelazi između blokova česti

Profajliranje grana
- grana - prelazak koji se ostvaraje instrukcijom grananja ili skoka kojom se prebacuje tok izvršavanja programa iz jednog bloka u drugi
- mogu se dobiti i podaci koji se dobijaju profajliranjem blokva
- broj izvršavanj bloka se može srračunati pomoću brojača grana, tako što se sumiraju sve grane koje ulaze u blok
- naivan algoritam - za svaku naredbu skoka umeće brojač
- efikasniji algoritam - radi u fazi kompilacije, Donald Knut umeće minimalan broj brojača

Knutov algoritam
- graf kontrole toka u kom su svi čvorovi blokovi instrukcija, a grane naredbe grananja ili skoka
- napravi se razapinjuće stablo, broj grana je v-1, gde je v broj čvorova grafa
- granama koje ne pripadanu stablu se dodaje brojač
- broj izvršavanja grana bez brojača se može izračunati na osnovu sračunatih vrednosti
- mana: isti broj grana može instumentalizovti na različite načine jer graf može da ima više razapinjućih stabala
- optimalno razapinjuće stablo - grane se najveći broj puta izvršavaju

28. Smanjenje trškova profajliranja. Uslovi prelaska. Duplirajući i proveravajući kod, delimično dupliranje i bez dupliranja. Profajliranje uzimanjem uzoraka.

- Tomas Bal i Džejms Larus - osmislili način kako da se proceni koji skup grana je optimalan

TODO