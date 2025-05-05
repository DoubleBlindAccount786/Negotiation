#include '../../seller.pl'.
%#include '../../buyer-lies.pl'.
#include 'seller-blackboard.pl'.

?- Product=b, Maker=d, Price=lowest, not query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=a, Maker=c, Price=lowest, sale(Product, Maker, Price).