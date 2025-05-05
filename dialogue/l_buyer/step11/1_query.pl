%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(-student), not buy(a,c,high), not buy(b,d,high), not buy(a,c,low), not buy(b,d,low), Product=b, Maker=d, Price=lowest, buy(Product, Maker, Price).