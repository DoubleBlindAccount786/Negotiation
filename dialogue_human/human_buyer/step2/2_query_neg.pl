#include '../../../seller.pl'.
%#include '../../../buyer.pl'.
#include 'seller-blackboard.pl'.
#include '../../../nl_patterns.pl'.

?- evidence(product(Product)), Maker=c, Price=lowest, not query(Product, Maker, Price).

query(Product, Maker, Price) :- Maker=c, Price=lowest, evidence(product(Product)), evidence(maker(Product,Maker)), evidence(quality(Product)), sale(Product, Maker, Price).