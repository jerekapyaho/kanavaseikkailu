# Kanavaseikkailu

Kanavaseikkailu (tai "Kanavalla seikkailemassa") on [tekstiseikkailupeli](https://fi.wikipedia.org/wiki/Seikkailupeli#Tekstiseikkailut), joka on alun perin tehty
vuonna 1986 [Amstrad CPC 464](https://www.cpcwiki.eu/index.php/CPC_old_generation) -tietokoneen
[Locomotive BASIC](https://www.cpcwiki.eu/index.php/Locomotive_BASIC) -ohjelmointikielellä.
Sen esikuvina ovat olleet Infocomin klassiset tekstiseikkailupelit
kuten [Zork-sarja](https://adventuregamers.com/gameseries/zork), sekä alkuperäinen
[Colossal Cave Adventure](https://rickadams.org/adventure/).

Vuonna 1986 kävin lukiota, ja kun atk-opettajani kuuli, että olin tehnyt tekstiseikkailupelin, hän
kysyi voisiko sen sovittaa koulun atk-luokan Auditek-tietokoneille. Ryhdyin
toimeen, ja MBASIC-käännös alkuperäisestä pelistä valmistui elokuussa 1986.

Tähän saakka tiettävästi ainoa säilynyt kopio tästä pelistä on
jatkolomakkeelle tulostettu ohjelmalistaus. Tässä repositoriossa oleva BASIC-ohjelma sisältää tuon listauksen tekstin lähes identtisenä.
Ohjelma käyttää vain BASIC-kielen tekoaikana vakiintuneita
käskyjä, joten se toiminee jotenkin myös nykyisissä BASIC-tulkeissa, mutta ainakin
vanhojen BASIC-tulkkien emulaattoreissa. Tämä versio
on testattu [PC-BASIC](https://robhagemans.github.io/pcbasic/index.html)-tulkilla, joka on
tehty Python-ohjelmointikielellä. (Ainakin muissa ympäristöissä kuin Linuxissa kannattaa tehdä virtuaaliympäristö, aktivoida se ja asentaa sitten PC-BASIC käyttäen pip-ohjelmaa).
