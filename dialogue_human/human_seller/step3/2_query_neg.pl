%#include '../../../seller.pl'.
#include '../../../buyer.pl'.
#include 'buyer-blackboard.pl'.
#include '../../../nl_patterns.pl'.

?- Product=a, Maker=c, Price=high, not query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=a, Maker=c, Price=high, buy(Product, Maker, Price).