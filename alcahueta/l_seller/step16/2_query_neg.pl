%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- Product=b, Price=high, not query(Product, Maker, Price).

query(Product, Maker, Price) :-  Product=b, Price=high, buy(Product, Maker, Price).