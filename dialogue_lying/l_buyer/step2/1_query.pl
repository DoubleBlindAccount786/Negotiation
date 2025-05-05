#include '../../seller.pl'.
%#include '../../buyer-lies.pl'.
#include 'seller-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(a)), evidence(maker(a,c)), evidence(quality(a)), Product=a, Maker=c, Price=lowest, sale(Product, Maker, Price).