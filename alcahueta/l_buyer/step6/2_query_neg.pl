#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- Product=a, Maker=d, Price=lowest, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(a)), evidence(maker(a,d)), evidence(-maker(a, c)), evidence(-product(b)), evidence(quality(a)), Product=a, Maker=d, Price=lowest, sale(Product, Maker, Price).