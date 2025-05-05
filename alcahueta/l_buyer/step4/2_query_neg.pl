#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.


?- Product=b, Maker=c, Price=lowest, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(b)), evidence(maker(b,c)), evidence(quality(b)), Product=b, Maker=c, Price=lowest, sale(Product, Maker, Price).