#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(a)), evidence(maker(a,c)), evidence(product(b)), evidence(maker(b,d)), evidence(-maker(b,c)), evidence(quality(b)), not sale(a,c,lowest), sale(b,d,lowest), Product=b,Maker=d,Price=lowest,sale(Product, Maker, Price).