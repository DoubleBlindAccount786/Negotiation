%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- not buy(b,d,high), buy(a,c,low), Product = a, Maker=c, Price = low, buy(Product, Maker, Price).