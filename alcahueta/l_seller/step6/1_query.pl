%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :-  evidence(age_older_than_65), not buy(a,c,high), not buy(b,d,high), Product=a, Price=low, buy(Product, Maker, Price).