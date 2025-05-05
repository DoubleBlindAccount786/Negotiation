#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include 'seller-blackboard.pl'.

?- Product=b, Maker=c, Price=lowest, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(b)), evidence(maker(b,c)), evidence(quality(b)), Product=b, Maker=c, Price=lowest, sale(Product, Maker, Price).