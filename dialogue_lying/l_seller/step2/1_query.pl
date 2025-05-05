%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=a, Price=high, buy(Product, Maker, Price).