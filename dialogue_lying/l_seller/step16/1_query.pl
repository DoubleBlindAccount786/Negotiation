%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- not buy(b,d,high), Product=a, Price=low, buy(Product, Maker, Price).