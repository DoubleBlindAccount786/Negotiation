% Human
#pred query(Product, Maker, Price) :: 'the proposal for product @(Product) from maker @(Maker) at price @(Price) is acceptable'.
#pred buy(Product, Maker, Price) :: 'buyer accepts buying product @(Product) from maker @(Maker) at price @(Price)'.
#pred quality(Product) :: 'the product @(Product) is of good quality'.
#pred evidence(quality(X)) :: 'there is evidence of @(X) being of good quality'.
#pred evidence(-quality(X)) :: 'there is evidence of @(X) being of bad quality'.
#pred maker(Product, Maker) :: 'the product @(Product) is made by @(Maker)'.
#pred evidence(maker(Product, Maker)) :: 'there is evidence of product @(Product) being made by @(Maker)'.
#pred evidence(-maker(Product, Maker)) :: 'there is evidence of product @(Product) not being made by @(Maker)'.
#pred product(Product) :: 'the product @(Product) exists'.
#pred evidence(product(Product)) :: 'there is evidence that product @(Product) exists'.
#pred evidence(-product(Product)) :: 'there is evidence that product @(Product) does not exist'.
#pred product_a :: 'there is a product a'.
#pred product_b :: 'there is a product b'.
#pred accept_price(Product, Maker, Price) :: 'buyer can buy the product @(Product) from maker @(Maker) at price @(Price)'.
#pred evidence(asked(buy(Product, Maker, Price))) :: 'it has already been asked, and buyer will buy the product @(Product) from maker @(Maker) at price @(Price)'.
#pred evidence(-asked(buy(Product, Maker, Price))) :: 'it has already been asked, and buyer will not buy the product @(Product) from maker @(Maker) at price @(Price)'.
#pred sale(Product, Maker, Price) :: 'seller accepts selling product @(Product) from maker @(Maker) at price @(Price)'.
#pred bargain(Product) :: 'seller can bargain about the price of product @(Product)'.
#pred senior_customer :: 'the customer is senior'.
#pred student_customer :: 'the customer is a student'.
#pred age_older_than_65 :: 'buyer is older than 65 years'.
#pred evidence(age_older_than_65) :: 'there is evidence of buyer being older than 65 years'.
#pred evidence(-age_older_than_65) :: 'there is evidence of buyer not being older than 65 years'.
#pred student :: 'buyer is a student'.
#pred evidence(student) :: 'there is evidence of buyer being a student'.
#pred evidence(-student) :: 'there is evidence of buyer not being a student'.
#pred cash :: 'buyer pays in cash'.
#pred evidence(cash) :: 'there is evidence of buyer paying in cash'.
#pred evidence(-cash) :: 'there is evidence of buyer not paying in cash'.
#pred mail_list :: 'buyer is subscribed to the mailing list'.
#pred evidence(mail_list) :: 'there is evidence of buyer being subscribed to the mailing list'.
#pred evidence(-mail_list) :: 'there is evidence of buyer not being subscribed to the mailing list'.
#pred offer_price_a(Product, Maker, Price) :: 'the product @(Product) from maker @(Maker) at price @(Price) is acceptable for Seller'.
#pred offer_price_b(Product, Maker, Price) :: 'the product @(Product) from maker @(Maker) at price @(Price) is acceptable for Seller'.
#pred evidence(asked(sale(Product, Maker, Price))) :: 'it has already been asked, and seller will sell the product @(Product) from maker @(Maker) at price @(Price)'.
#pred evidence(-asked(sale(Product, Maker, Price))) :: 'it has already been asked, and seller will not sell the product @(Product) from maker @(Maker) at price @(Price)'.
#show query/3, evidence/1.
#show buy/3, quality/1, maker/2, product/1, accept_price/3.
#show sale/3, bargain/1, senior_customer/0, student_customer/0, age_older_than_65/0, student/0, cash/0, mail_list/0, offer_price_a/3, offer_price_b/3, product_a/0, product_b/0.
%#show not senior_customer/0.