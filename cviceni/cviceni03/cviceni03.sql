SELECT nazev
from vypujcka, knihy
where kniha = id_kniha and vraceno = FALSE;

SELECT jmeno, prijmeni, nazev
from vypujcka, knihy, ctenar
where kniha = id_kniha and ctenar = id_ctenar and jmeno = 'Petr' and prijmeni = 'Novák';

SELECT nazev, vraceno
from vypujcka, knihy
where kniha = id_kniha and vraceno = TRUE;

SELECT jmeno, prijmeni, nazev, vraceno
FROM ctenar, knihy, vypujcka
where id_ctenar = ctenar and kniha = id_kniha and vraceno = false and nazev = 'Stopařův průvodce po galaxii';