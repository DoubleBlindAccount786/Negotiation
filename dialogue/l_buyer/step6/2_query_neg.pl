#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include 'seller-blackboard.pl'.

?- Product=a, Maker=d, Price=lowest, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(maker(a,d)), Product=a, Maker=d, Price=lowest, sale(Product, Maker, Price).