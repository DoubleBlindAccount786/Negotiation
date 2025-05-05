#include '../../seller.pl'.
%#include '../../buyer.pl'.
#include '../../nl_patterns.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- evidence(product(b)), evidence(maker(b,d)), evidence(product(a)), evidence(maker(a,c)), evidence(-maker(b,c)), evidence(quality(b)), mail_list, cash, age_older_than_65, not student, not buy(a,c,high), not buy(b,d,high), not buy(a,c,low), not buy(b,d,low), not sale(a,c,lowest), sale(b,d,lowest), Product=b, Maker=d, Price=lowest, sale(Product, Maker, Price).