%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- Product=a, Price=high, not query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=a, Price=high, buy(Product, Maker, Price).