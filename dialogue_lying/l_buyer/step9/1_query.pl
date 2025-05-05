%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(mail_list), evidence(cash), evidence(-age_older_than_65), evidence(-student), not buy(a,c,high), not buy(b,d,high), not buy(b,d,low), Product=b, Maker=d, Price=lowest, buy(Product, Maker, Price).