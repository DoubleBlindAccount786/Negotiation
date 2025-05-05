%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(age_older_than_65), not buy(a,c,high), not buy(b,d,high), buy(Product, Maker, Price).