#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- Product=a, Maker=c, Price=low, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(a)), evidence(maker(a,c)), evidence(-product(b)), evidence(-maker(a,d)), evidence(quality(a)), not sale(a,c,lowest),  Product=a, Maker=c, Price=low, sale(Product, Maker, Price).