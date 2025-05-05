%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :-  Product=a, Price=high, buy(Product, Maker, Price).