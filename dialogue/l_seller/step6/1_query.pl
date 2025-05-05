%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(age_older_than_65), not buy(b,d,high), Product = a, Price = low, buy(Product, Maker, Price).