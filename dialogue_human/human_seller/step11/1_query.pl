%#include '../../../seller.pl'.
#include '../../../buyer.pl'.
#include 'buyer-blackboard.pl'.
#include '../../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(mail_list), evidence(cash), Product=b, Maker=d, Price=lowest, buy(Product, Maker, Price).