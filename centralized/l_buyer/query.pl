#include '../seller.pl'.
#include '../buyer.pl'.
#include '../nl_patterns.pl'.

?- query(Product, Maker, Price).

% buyer leading
query(Product, Maker, Price) :- buy(Product, Maker, Price), sale(Product, Maker, Price).

% seller leading
% query(Product, Maker, Price) :- sale(Product, Maker, Price), buy(Product, Maker, Price).

