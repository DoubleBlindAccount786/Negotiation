#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include 'seller-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(maker(a,d)), Product=a, Maker=d, Price=lowest, sale(Product, Maker, Price).