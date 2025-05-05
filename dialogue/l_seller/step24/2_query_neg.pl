%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include 'buyer-blackboard.pl'.

?- Product=b, Price=low, not query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=b, Price=low, buy(Product, Maker, Price).