%#include '../../seller.pl'.
#include '../../buyer-lies.pl'.
#include 'buyer-blackboard.pl'.

?- query(Product, Maker, Price).

% Can we lie about the mail list?
query(Product, Maker, Price) :- evidence(mail_list), buy(Product, Maker, Price).