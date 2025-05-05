%#include '../../../seller.pl'.
#include '../../../buyer.pl'.
#include 'buyer-blackboard.pl'.
#include '../../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=b, Maker=d, Price=high, buy(Product, Maker, Price).