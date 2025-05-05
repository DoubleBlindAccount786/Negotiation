% Pr
sale(Product, Maker, Price) :- Product = a, offer_price_a(Product, Maker, Price). 
sale(Product, Maker, Price) :- Product = b, offer_price_b(Product, Maker, Price). 


bargain(Product) :- Product = b.
senior_customer  :- age_older_than_65.
student_customer :- student.

% Evidences
evidence(maker(Product, Maker))  :- Product = a, Maker = c.
evidence(maker(Product, Maker))  :- Product = b, Maker = d.
evidence(-maker(Product, Maker)) :- Product = b, Maker = c.
evidence(-maker(Product, Maker)) :- Product = a, Maker = d.

evidence(product(a)).
evidence(product(b)).

% L + B
evidence(quality(a)).
evidence(quality(b)).

% H

age_older_than_65     :- evidence(age_older_than_65).
neg_age_older_than_65 :- evidence(-age_older_than_65).
age_older_than_65     :- not evidence(age_older_than_65), not neg_age_older_than_65.
neg_age_older_than_65 :- not evidence(-age_older_than_65), not age_older_than_65.

student     :- evidence(student).
neg_student :- evidence(-student).
student     :- not evidence(student), not neg_student.
neg_student :- not evidence(-student), not student.

cash     :- evidence(cash).
neg_cash :- evidence(-cash).
cash     :- not evidence(cash), not neg_cash.
neg_cash :- not evidence(-cash), not cash.

mail_list     :- evidence(mail_list).
neg_mail_list :- evidence(-mail_list).
mail_list     :- not evidence(mail_list), not neg_mail_list.
neg_mail_list :- not evidence(-mail_list), not mail_list.

buy(Product, Maker, Price)     :- asked(buy(Product, Maker, Price)).
neg_buy(Product, Maker, Price) :- asked(-buy(Product, Maker, Price)).
buy(Product, Maker, Price)     :- evidence(product(Product)), evidence(maker(Product, Maker)), not asked(buy(Product, Maker, Price)), not neg_buy(Product, Maker, Price).
neg_buy(Product, Maker, Price) :- evidence(product(Product)), evidence(maker(Product, Maker)), not asked(-buy(Product, Maker, Price)), not buy(Product, Maker, Price).


% N<

offer_price_a(Product, Maker, Price) :- offer_price_1(Product, Maker, Price).
offer_price_a(Product, Maker, Price) :- offer_price_2(Product, Maker, Price), not offer_price_1_check.
offer_price_a(Product, Maker, Price) :- offer_price_3(Product, Maker, Price), not offer_price_1_check.
offer_price_a(Product, Maker, Price) :- offer_price_4(Product, Maker, Price), not offer_price_1_check.

offer_price_b(Product, Maker, Price) :- offer_price_1(Product, Maker, Price).
offer_price_b(Product, Maker, Price) :- offer_price_2(Product, Maker, Price), not offer_price_1_check.
offer_price_b(Product, Maker, Price) :- offer_price_3(Product, Maker, Price), not offer_price_1_check.
offer_price_b(Product, Maker, Price) :- offer_price_4(Product, Maker, Price), not offer_price_1_check.
offer_price_b(Product, Maker, Price) :- offer_price_5(Product, Maker, Price), not offer_price_1_check, not offer_price_2_check, not offer_price_3_check, not offer_price_4_check.

offer_price_1(Product, Maker, Price) :- Price = high.
offer_price_2(Product, Maker, Price) :- Price = low, senior_customer.
offer_price_3(Product, Maker, Price) :- Price = low, student_customer.
offer_price_4(Product, Maker, Price) :- Price = low, bargain(Product), cash.
offer_price_5(Product, Maker, Price) :- Price = lowest, mail_list, cash.

offer_price_1_check :- offer_price_1(Product, Maker, Price), buy(Product, Maker, Price).
offer_price_2_check :- offer_price_2(Product, Maker, Price), buy(Product, Maker, Price).
offer_price_3_check :- offer_price_3(Product, Maker, Price), buy(Product, Maker, Price).
offer_price_4_check :- offer_price_4(Product, Maker, Price), buy(Product, Maker, Price).
offer_price_5_check :- offer_price_5(Product, Maker, Price), buy(Product, Maker, Price).