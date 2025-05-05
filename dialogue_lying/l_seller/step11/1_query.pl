#include '../../seller.pl'.
%#include '../../buyer-lies.pl'.
#include 'seller-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- not sale(b,d,lowest), Product=a, Maker=c, Price=low, sale(Product, Maker, Price).