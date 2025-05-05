#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(a)), evidence(maker(a,c)), evidence(product(b)), evidence(maker(b,d)),  evidence(-maker(b,c)), evidence(maker(a,d)), evidence(quality(b)), not sale(a,c,lowest), sale(a,d,lowest), Product=b,Maker=c,Price=lowest,sale(Product, Maker, Price).