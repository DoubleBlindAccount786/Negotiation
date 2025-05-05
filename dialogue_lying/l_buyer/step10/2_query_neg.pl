#include '../../seller.pl'.
%#include '../../buyer-lies.pl'.
#include 'seller-blackboard.pl'.

?- Product=b, Maker=d, Price=lowest, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(maker(b,d)), evidence(quality(b)), Product=b, Maker=d, Price=lowest, sale(Product, Maker, Price).