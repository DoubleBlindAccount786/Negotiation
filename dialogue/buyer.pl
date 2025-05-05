% Pr
buy(Product, Maker, Price) :- accept_price(Product, Maker, Price), quality(Product), not asked(sale(Product, Maker, Price)), not asked(-sale(Product, Maker, Price)).

% Evidences
evidence(age_older_than_65).

evidence(-student).

evidence(cash).

% L + B
evidence(mail_list).

% H

quality(Product)     :- evidence(quality(Product)).
neg_quality(Product) :- evidence(-quality(Product)).
quality(Product)     :- not evidence(quality(Product)), not neg_quality(Product).
neg_quality(Product) :- not evidence(-quality(Product)), not quality(Product).

maker(Product, Maker)     :- Maker = c, product(Product), evidence(maker(Product, Maker)).
neg_maker(Product, Maker) :- Maker = c, product(Product), evidence(-maker(Product, Maker)).
maker(Product, Maker)     :- Maker = c, product(Product), not evidence(maker(Product, Maker)), not neg_maker(Product, Maker).
neg_maker(Product, Maker) :- Maker = c, product(Product), not evidence(-maker(Product, Maker)),not maker(Product, Maker).

maker(Product, Maker)     :- Maker = d, product(Product), evidence(maker(Product, Maker)).
neg_maker(Product, Maker) :- Maker = d, product(Product), evidence(-maker(Product, Maker)).
maker(Product, Maker)     :- Maker = d, product(Product), not evidence(maker(Product, Maker)),  not neg_maker(Product, Maker).
neg_maker(Product, Maker) :- Maker = d, product(Product), not evidence(-maker(Product, Maker)), not maker(Product, Maker).

product_a     :- evidence(product(a)).
neg_product_a :- evidence(-product(a)).
product_a     :- not evidence(product(a)), not neg_product_a.
neg_product_a :- not evidence(-product(a)), not product_a.

product_b     :- evidence(product(b)).
neg_product_b :- evidence(-product(b)).
product_b     :- not evidence(product(b)), not neg_product_b.
neg_product_b :- not evidence(-product(b)), not product_b.

product(a) :- product_a.
product(b) :- product_b.

sale(Product, Maker, Price)     :- asked(sale(Product, Maker, Price)).
neg_sale(Product, Maker, Price) :- asked(-sale(Product, Maker, Price)).
sale(Product, Maker, Price)     :- product(Product), maker(Product, Maker), not asked(sale(Product, Maker, Price)), not neg_sale(Product, Maker, Price).
neg_sale(Product, Maker, Price) :- product(Product), maker(Product, Maker), not asked(-sale(Product, Maker, Price)), not sale(Product, Maker, Price).

% R + N<

accept_price(Product, Maker, Price) :- accept_price_1(Product, Maker, Price).
accept_price(Product, Maker, Price) :- accept_price_2(Product, Maker, Price), not accept_price_1_check.
accept_price(Product, Maker, Price) :- accept_price_3(Product, Maker, Price), not accept_price_1_check, not accept_price_2_check.

accept_price_1(Product, Maker, Price) :- Maker = c, maker(Product, Maker), Price = lowest.
accept_price_2(Product, Maker, Price) :- Maker = d, maker(Product, Maker), Price = lowest.
accept_price_3(Product, Maker, Price) :- Maker = c, maker(Product, Maker), Price = low   .

accept_price_1_check :- accept_price_1(Product, Maker, Price), sale(Product, Maker, Price).
accept_price_2_check :- accept_price_2(Product, Maker, Price), sale(Product, Maker, Price).
accept_price_3_check :- accept_price_3(Product, Maker, Price), sale(Product, Maker, Price).
