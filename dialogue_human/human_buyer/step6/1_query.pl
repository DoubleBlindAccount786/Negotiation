#include '../../../seller.pl'.
%#include '../../../buyer.pl'.
#include 'seller-blackboard.pl'.
#include '../../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- Product=b, Maker=d, Price=lowest, sale(Product, Maker, Price).