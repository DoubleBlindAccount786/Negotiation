#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- Product=b, Maker=c, Price=low, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(a)), evidence(-maker(a,c)), evidence(product(b)), evidence(-maker(b,d)), evidence(maker(b,c)), evidence(-maker(a,d)), evidence(quality(b)), not sale(b,c,lowest), Product=b, Maker=c, Price=low, sale(Product, Maker, Price).