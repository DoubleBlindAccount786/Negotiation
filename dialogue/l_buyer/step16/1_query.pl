#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include 'seller-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=a, Maker=c, Price=low, sale(Product, Maker, Price).