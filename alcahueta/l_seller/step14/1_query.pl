%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :-  evidence(mail_list), evidence(cash), evidence(age_older_than_65), not buy(a,c,high), not buy(b,d,high), buy(a,c,low), Product=a, Maker=c, Price=low, buy(Product, Maker, Price).