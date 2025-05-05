#include '../../seller.pl'.
%#include '../../buyer-lies.pl'.
#include 'seller-blackboard.pl'.

?- query(Product, Maker, Price).

query(Product, Maker, Price) :- sale(Product, Maker, Price).