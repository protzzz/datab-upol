use('cviceni08')

db.knihy.insertMany([
    {nazev:"Stopařův průvodce po galaxii", vydavatel:"MF", rok_vydani:1985, pocet_stran:214, cena:120, zanr:"scifi", typ:"kniha"},
    {nazev:"Pán prstenů - Dvě věže", vydavatel:"MF", rok_vydani:1948, pocet_stran:251, cena:240, zanr:"fantasy", typ:"kniha"},
    {nazev:"Kedrigern a hlas pro princeznu", vydavatel:"MF", rok_vydani:1996, pocet_stran:null, cena:53, zanr:"fantasy", typ:"kniha"},
    {nazev:"Hobit", vydavatel:"MF", rok_vydani:1950, pocet_stran:410, cena:178, zanr:"fantasy", typ:"kniha"},
    {nazev:"Barva kouzel", vydavatel:"Talpress", rok_vydani:1989, pocet_stran:358, cena:120, zanr:"fantasy", typ:"ebook"},
    {nazev:"Stráže! Stráže!", vydavatel:"Talpress", rok_vydani:2000, pocet_stran:null, cena:214, zanr:"fantasy", typ:"ebook"},
    {nazev:"Lehké fantastično", vydavatel:"Talpress", rok_vydani:1999, pocet_stran:145, cena:415, zanr:"fantasy", typ:"ebook"},
])

db.knihy.find({ zanr: "fantasy", vydavatel: "MF" })
db.knihy.find({ $or: [ { typ: "ebook" }, { zanr: "scifi" } ] })

db.knihy.updateMany({nazev:"Stopařův průvodce po galaxii"}, {$set:{autor:{jmeno:"Douglas", prijmeni:"Adams", narodnost:"Britka"}}})
db.knihy.updateMany({nazev:"Pán prstenů - Dvě věže"}, {$set:{autor:{jmeno:"John", prijmeni:"Doe", narodnost:"Američan"}}})
db.knihy.updateMany({nazev:"Kedrigern a hlas pro princeznu"}, {$set:{autor:{jmeno:"Anna", prijmeni:"Johnson", narodnost:"Kanaďanka"}}})
db.knihy.updateMany({nazev:"Hobit"}, {$set:{autor:{jmeno:"Robert", prijmeni:"Williams", narodnost:"Australan"}}})
db.knihy.updateMany({nazev:"Barva kouzel"}, {$set:{autor:{jmeno:"Emily", prijmeni:"Brown", narodnost:"Irka"}}})
db.knihy.updateMany({nazev:"Stráže! Stráže!"}, {$set:{autor:{jmeno:"Michael", prijmeni:"Davis", narodnost:"Němec"}}})
db.knihy.updateMany({nazev:"Lehké fantastično"}, {$set:{autor:{jmeno:"Maria", prijmeni:"Rodriguez", narodnost:"Španělka"}}})
    

db.knihy.updateMany({nazev:"Stopařův průvodce po galaxii"}, {$set:{osoby:["Jan Novák", "Marie Kovářová"]}})
db.knihy.updateMany({nazev:"Pán prstenů - Dvě věže"}, {$set:{osoby:["Jan Novák"]}})
    
    
    
    
    