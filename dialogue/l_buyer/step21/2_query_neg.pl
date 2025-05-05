%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include 'buyer-blackboard.pl'.

?- not query(Product, Maker, Price).

query(Product, Maker, Price) :- buy(Product, Maker, Price).