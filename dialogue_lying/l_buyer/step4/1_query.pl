#include '../../seller.pl'.
%#include '../../buyer-lies.pl'.
#include 'seller-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(b)), evidence(maker(b,c)), evidence(quality(b)), Product=b, Maker=c, Price=lowest, sale(Product, Maker, Price).