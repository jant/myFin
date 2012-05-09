Transaction.delete_all


Account.delete_all
Account.create(name: 'bezny', descr: 'bezny ucet u CSOB')
Account.create(name: 'penezenka', descr: 'moje penezenka')
Account.create(name: 'kreditka', descr: 'kreditni karta od UniCredit')
Account.create(name: 'pujcka', descr: 'pujcka od rodicu')


Category.delete_all
Category.create(name: 'vyplata', descr: 'adamova vyplata ze zamestnani', direction: '1')
Category.create(name: 'rodicovsky', descr: 'rodicovsky prispevek', direction: '1')
Category.create(name: 'jidlo', descr: 'jidlo', direction: '-1')
Category.create(name: 'bydleni', descr: 'sluzby spojene s bydlenim', direction: '-1')
Category.create(name: 'auto', descr: 'udrzba auta - opravy, STK, pov. ruceni', direction: '-1')
Category.create(name: 'benzin', descr: 'benzin', direction: '-1')
Category.create(name: 'hypoteka', descr: 'hypoteka na byt', direction: '-1')
Category.create(name: 'adam', descr: 'osobni adamovy vydaje', direction: '-1')
Category.create(name: 'eva', descr: 'osobni eviny vydaje', direction: '-1')
Category.create(name: 'syn', descr: 'co nas stoji synek', direction: '-1')
Category.create(name: 'poplatek', descr: 'poplatky bance aj.', direction: '-1')
Category.create(name: 'prevod z', descr: 'prevod', direction: '-1')
Category.create(name: 'prevod na', descr: 'prevod', direction: '1')


# poc. stav
Transaction.create(realization_date: '2011-12-31', account_id: Account.find_by_name('bezny').id, category_id: nil, amount: 6870, description: 'pocatecni stav')
Transaction.create(realization_date: '2011-12-31', account_id: Account.find_by_name('penezenka').id, category_id: nil, amount: 2860, description: 'pocatecni stav')
Transaction.create(realization_date: '2011-12-31', account_id: Account.find_by_name('kreditka').id, category_id: nil, amount: -3900, description: 'pocatecni stav')
Transaction.create(realization_date: '2011-12-31', account_id: Account.find_by_name('pujcka').id, category_id: nil, amount: -15000, description: 'pocatecni stav')

# pravidelne platby - leden
Transaction.create(realization_date: '2012-01-02', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('prevod z').id, amount: -15000, description: 'prevod bezny -> penezenka')
Transaction.create(realization_date: '2012-01-02', account_id: Account.find_by_name('penezenka').id, category_id: Category.find_by_name('prevod na').id, amount: 15000, description: 'prevod bezny -> penezenka')
Transaction.create(realization_date: '2012-01-02', account_id: Account.find_by_name('penezenka').id, category_id: Category.find_by_name('jidlo').id, amount: -4000, description: 'jidlo')
Transaction.create(realization_date: '2012-01-02', account_id: Account.find_by_name('penezenka').id, category_id: Category.find_by_name('eva').id, amount: -3000, description: 'eva')
Transaction.create(realization_date: '2012-01-05', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('bydleni').id, amount: -4200, description: 'uhrada za uzivani bytu')
Transaction.create(realization_date: '2012-01-05', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('bydleni').id, amount: -400, description: 'elektrina')
Transaction.create(realization_date: '2012-01-05', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('bydleni').id, amount: -200, description: 'plyn')
Transaction.create(realization_date: '2012-01-05', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('bydleni').id, amount: -120, description: 'TV')
Transaction.create(realization_date: '2012-01-05', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('adam').id, amount: -500, description: 'penzijni pojisteni')
Transaction.create(realization_date: '2012-01-07', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('rodicovsky').id, amount: 7500, description: 'sprava socialniho zabezpeceni')
Transaction.create(realization_date: '2012-01-13', account_id: Account.find_by_name('kreditka').id, category_id: Category.find_by_name('benzin').id, amount: -1386, description: 'benzin')
Transaction.create(realization_date: '2012-01-14', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('bydleni').id, amount: -540, description: 'rozhlas')
Transaction.create(realization_date: '2012-01-15', account_id: Account.find_by_name('penezenka').id, category_id: Category.find_by_name('jidlo').id, amount: -3000, description: 'jidlo')
Transaction.create(realization_date: '2012-01-15', account_id: Account.find_by_name('penezenka').id, category_id: Category.find_by_name('syn').id, amount: -350, description: 'plinky')
Transaction.create(realization_date: '2012-01-17', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('vyplata').id, amount: 28000, description: 'vyplata')
Transaction.create(realization_date: '2012-01-25', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('bydleni').id, amount: -300, description: 'internet')
Transaction.create(realization_date: '2012-01-25', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('hypoteka').id, amount: -5000, description: 'hypoteka')
Transaction.create(realization_date: '2012-01-28', account_id: Account.find_by_name('penezenka').id, category_id: Category.find_by_name('adam').id, amount: -4300, description: 'obedy apod.')


# unor 2012 provedu jako kopii ledna
lednove = Transaction.where(realization_date: ('2012-01-01'.to_date)..('2012-01-28'.to_date))
lednove.each do |t|
  Transaction.create(realization_date: Date.new(t.realization_date.year, t.realization_date.month + 1, t.realization_date.day), account_id: t.account.id, category_id: t.category.id, amount: t.amount, description: t.description)
end
# a unorove nepravidelne
Transaction.create(realization_date: '2012-02-03', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('prevod z').id, amount: -1386, description: 'prevod bezny -> kreditka')
Transaction.create(realization_date: '2012-02-03', account_id: Account.find_by_name('kreditka').id, category_id: Category.find_by_name('prevod na').id, amount: 1386, description: 'prevod bezny -> kreditka')


# brezen 2012 provedu jako kopii unora
lednove.each do |t|
  Transaction.create(realization_date: Date.new(t.realization_date.year, t.realization_date.month + 2, t.realization_date.day), account_id: t.account.id, category_id: t.category.id, amount: t.amount, description: t.description)
end
# a breznove nepravidelne
Transaction.create(realization_date: '2012-03-03', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('prevod z').id, amount: -1386, description: 'prevod bezny -> kreditka')
Transaction.create(realization_date: '2012-03-03', account_id: Account.find_by_name('kreditka').id, category_id: Category.find_by_name('prevod na').id, amount: 1386, description: 'prevod bezny -> kreditka')


# duben 2012 provedu jako kopii unora
lednove.each do |t|
  Transaction.create(realization_date: Date.new(t.realization_date.year, t.realization_date.month + 3, t.realization_date.day), account_id: t.account.id, category_id: t.category.id, amount: t.amount, description: t.description)
end
# a dubnove nepravidelne
Transaction.create(realization_date: '2012-04-03', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('prevod z').id, amount: -1386, description: 'prevod bezny -> kreditka')
Transaction.create(realization_date: '2012-04-03', account_id: Account.find_by_name('kreditka').id, category_id: Category.find_by_name('prevod na').id, amount: 1386, description: 'prevod bezny -> kreditka')


# dodatecne doplnim do ledna nepravidelne platby
Transaction.create(realization_date: '2012-01-03', account_id: Account.find_by_name('bezny').id, category_id: Category.find_by_name('prevod z').id, amount: -3900, description: 'prevod bezny -> kreditka')
Transaction.create(realization_date: '2012-01-03', account_id: Account.find_by_name('kreditka').id, category_id: Category.find_by_name('prevod na').id, amount: 3900, description: 'prevod bezny -> kreditka')
Transaction.create(realization_date: '2012-01-21', account_id: Account.find_by_name('penezenka').id, category_id: Category.find_by_name('syn').id, amount: -900, description: 'boty')
