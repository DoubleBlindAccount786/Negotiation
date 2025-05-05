#include '../../seller.pl'.
%#include '../../buyer-lies.pl'.
#include 'seller-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(quality(b)), not sale(a,c,lowest), Product=b, Maker=d, Price=lowest, sale(Product, Maker, Price).