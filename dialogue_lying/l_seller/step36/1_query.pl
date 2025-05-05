%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=b, Price=lowest, buy(Product, Maker, Price).