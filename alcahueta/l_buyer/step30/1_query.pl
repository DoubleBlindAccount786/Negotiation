#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(a)), evidence(maker(a,c)), evidence(product(b)), evidence(-maker(b,c)), evidence(-maker(a,d)), evidence(maker(b,d)), evidence(quality(a)), not sale(a,c,lowest), not sale(b,d,lowest), not buy(a,c,high), not buy(b,d,high), Product=a, Maker=c, Price=low, sale(Product, Maker, Price).