%#include '../../seller.pl'.
#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(mail_list), evidence(cash), evidence(age_older_than_65), evidence(-student), product(b), maker(b,d), product(a), maker(a,c), not maker(b,c), quality(b), not sale(a,c,lowest), not buy(a,c,high), not buy(b,d,high), not buy(a,c,low), not buy(b,d,low), Product=b, Maker=d, Price=lowest, buy(Product, Maker, Price).