%#include '../../../seller.pl'.
#include '../../../buyer.pl'.
#include 'buyer-blackboard.pl'.
#include '../../../nl_patterns.pl'.

?- Product=b, Maker=d, Price=low, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(cash), Product=b, Maker=d, Price=low, buy(Product, Maker, Price).