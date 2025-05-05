#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(-product(a)), evidence(product(b)), evidence(-maker(b,d)), evidence(maker(b,c)), evidence(quality(b)), not sale(b,c,lowest), Product=b, Maker=c, Price=low, sale(Product, Maker, Price).