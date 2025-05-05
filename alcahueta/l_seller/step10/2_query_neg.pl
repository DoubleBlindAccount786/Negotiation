%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- Product=a, Maker=c, Price=low, not query(Product, Maker, Price).

query(Product, Maker, Price) :-  evidence(-mail_list), evidence(age_older_than_65), not buy(a,c,high), not buy(b,d,high), Product=a, Maker=c, Price=low, buy(Product, Maker, Price).