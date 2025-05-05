%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include 'buyer-blackboard.pl'.

?- Product=a, Price=low, not query(Product, Maker, Price).

query(Product, Maker, Price) :- not buy(b,d,high), Product=a, Price=low, buy(Product, Maker, Price).