Account.delete_all
Account.create(name: 'bezny', descr: 'bezny ucet u CSOB')
Account.create(name: 'penezenka', descr: 'moje penezenka')
Account.create(name: 'kreditka', descr: 'kreditni karta od UniCredit')
Account.create(name: 'pujcka', descr: 'pujcka od rodicu')


Category.delete_all
Category.create(name: 'vyplata', descr: 'adamova vyplata ze zamestnani', direction: '1')
Category.create(name: 'rodicovsky', descr: 'rodicovsky prispevek', direction: '1')
Category.create(name: 'jidlo', descr: 'jidlo', direction: '-1')
Category.create(name: 'bydleni', descr: 'sluzby spojene s bydlenim: el, plyn, internet, TV, SV, teplo, voda, fond oprav, sprava domu', direction: '-1')
Category.create(name: 'auto', descr: 'udrzba auta - opravy, STK, pov. ruceni', direction: '-1')
Category.create(name: 'benzin', descr: 'benzin', direction: '-1')
Category.create(name: 'hypoteka', descr: 'hypoteka na byt', direction: '-1')
Category.create(name: 'adam', descr: 'osobni adamovy vydaje', direction: '-1')
Category.create(name: 'eva', descr: 'osobni eviny vydaje', direction: '-1')
Category.create(name: 'syn', descr: 'co nas stoji synek', direction: '-1')
Category.create(name: 'poplatek', descr: 'poplatky bance aj.', direction: '-1')



