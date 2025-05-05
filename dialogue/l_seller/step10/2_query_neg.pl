%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include 'buyer-blackboard.pl'.

?- Product = a, Maker=c, Price = low, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(-mail_list), not buy(b,d,high), Product = a, Maker=c, Price = low, buy(Product, Maker, Price).