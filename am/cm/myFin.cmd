-- open ../myFin/myFin.cmd

!new Account('ucet')
!@ucet.name := 'ucet bezny'
!@ucet.descr := 'b�n� ��et �SOB'

!new Account('penezenka')
!@penezenka.name := 'penezenka'
!@penezenka.descr := 'hotovost v pen�ence'

!new Account('kreditka')
!@kreditka.name := 'kreditka'
!@kreditka.descr := 'kreditn� karta UniCredit AXA'

!new Account('hypoteka')
!@hypoteka.name := 'hypoteka'
!@hypoteka.descr := 'hypot�ka �SOB'

!new Account('pujcka')
!@pujcka.name := 'pujcka posilovna'
!@pujcka.descr := 'p�j�ka z posilovny'


!new Transaction('t1')
!insert (@t1,@ucet) into TransactionAccount
!@t1.date := 1
!@t1.amount := 55000.00
!@t1.descr := 'po��te�n� stav'

!new Transaction('t2')
!insert (@t2,@ucet) into TransactionAccount
!@t2.date := 4
!@t2.amount := -4000.00
!@t2.descr := 'n�jemn�'

