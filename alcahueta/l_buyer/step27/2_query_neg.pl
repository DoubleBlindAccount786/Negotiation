%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- Product=a, Maker=c, Price=low, not query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(mail_list), evidence(-cash), evidence(age_older_than_65), product(a), maker(a,c), product(b), not maker(b,c), not maker(a,d), maker(b,d), quality(a), not sale(a,c,lowest), not sale(b,d,lowest), not buy(a,c,high), not buy(b,d,high), Product=a, Maker=c, Price=low, buy(Product, Maker, Price).