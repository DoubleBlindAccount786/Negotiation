%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(cash), evidence(-student), not buy(a,c,high), not buy(b,d,high), not buy(b,d,low), buy(Product, Maker, Price).