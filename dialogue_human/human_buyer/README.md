# Conversation buyer (human) - seller (bot)

## Step 1

### Question seller → buyer

> Seller: Can you tell me what do you want to buy?

### Answer buyer → seller

Buyer:
> I want to buy a product from maker C that has good quality, at the
> lowest price available.

## Step 2

### Question buyer → seller

Buyer:

```query(Product, Maker, Price) :- Maker=c, Price=lowest, evidence(product(Product)), evidence(maker(Product,Maker)), evidence(quality(Product)), sale(Product, Maker, Price).```

### Answer seller → buyer

Seller (raw):

```
there is evidence that product a exists, and
there is no evidence that the proposal for product a from maker c at price lowest is acceptable, because
    there is evidence that product a exists, justified above, and
    there is evidence of product a being made by c, and
    there is evidence of a being of good quality, and
    there is no evidence that seller accepts selling product a from maker c at price lowest, because
        there is no evidence that the product a from maker c at price lowest is acceptable for Seller.
The global constraints hold.
```

Seller (reduced):

```
there is evidence that product a exists, and
there is no evidence that the proposal for product a from maker c at price lowest is acceptable, because
    there is evidence that product a exists, justified above, and
    there is evidence of product a being made by c, and
    there is evidence of a being of good quality, and
    there is no evidence that seller accepts selling product a from maker c at price lowest, because
        there is no evidence that the product a from maker c at price lowest is acceptable for Seller.
```

Rejected: price is not acceptable.
Conditions:
- Product A is from maker C.
- Product A is of good quality.

## Step 3

### Question seller → buyer

```query :- buy(Product, Maker, Price).```

> Seller: Can you tell me what do you want to buy?

### Answer buyer → seller

Buyer:
> Then, I want to buy a product from maker D that has good quality, at
> the lowest price available.

## Step 4

### Question buyer → seller

```query(Product, Maker, Price) :- Maker=d, Price=lowest, evidence(product(Product)), evidence(maker(Product, Maker)), evidence(quality(Product)), sale(Product, Maker, Price).```

### Answer seller → buyer

Seller (raw):

```
the proposal for product b from maker d at price lowest is acceptable, because
    there is evidence that product b exists, and
    there is evidence of product b being made by d, and
    there is evidence of b being of good quality, and
    seller accepts selling product b from maker d at price lowest, because
        the product b from maker d at price lowest is acceptable for Seller, because
            buyer is subscribed to the mailing list, because
                there is no evidence that there is evidence of buyer being subscribed to the mailing list, and
                there is no evidence that there is evidence of buyer not being subscribed to the mailing list, and
                there is no evidence that there is evidence of buyer not being subscribed to the mailing list, justified above, and
                it is assumed that buyer is subscribed to the mailing list.
            buyer pays in cash, because
                there is no evidence that there is evidence of buyer paying in cash, and
                there is no evidence that there is evidence of buyer not paying in cash, and
                there is no evidence that there is evidence of buyer not paying in cash, justified above, and
                it is assumed that buyer pays in cash.
            there is no evidence that buyer accepts buying product Var3 not equal a, nor b from maker Var4 at price high, because
                there is no evidence that there is evidence that product Var3 not equal a, nor b exists.
            there is no evidence that buyer accepts buying product a from maker Var6 not equal c at price high, because
                there is evidence that product a exists, and
                there is no evidence that there is evidence of product a being made by Var6 not equal c.
            there is no evidence that buyer accepts buying product a from maker c at price high, because
                there is evidence that product a exists, justified above, and
                there is evidence of product a being made by c, and
                there is evidence of product a being made by c, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product a from maker c at price high.
            there is no evidence that buyer accepts buying product b from maker Var9 not equal d at price high, because
                there is evidence that product b exists, justified above, and
                there is no evidence that there is evidence of product b being made by Var9 not equal d.
            there is no evidence that buyer accepts buying product b from maker d at price high, because
                there is evidence of product b being made by d, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product b from maker d at price high.
            there is no evidence that the customer is senior, because
                there is no evidence that buyer is older than 65 years, because
                    there is no evidence that there is evidence of buyer being older than 65 years, and
                    there is no evidence that there is evidence of buyer being older than 65 years, justified above, and
                    there is no evidence that there is evidence of buyer not being older than 65 years, and
                    it is assumed that there is no evidence that buyer is older than 65 years.
            there is no evidence that the customer is a student, because
                there is no evidence that buyer is a student, because
                    there is no evidence that there is evidence of buyer being a student, and
                    there is no evidence that there is evidence of buyer being a student, justified above, and
                    there is no evidence that there is evidence of buyer not being a student, and
                    it is assumed that there is no evidence that buyer is a student.
            there is no evidence that seller can bargain about the price of product Var18 not equal b, and
            seller can bargain about the price of product b, and
            buyer pays in cash, justified above, and
            there is no evidence that buyer accepts buying product b from maker Var21 not equal d at price low, because
                there is evidence that product b exists, justified above, and
                there is no evidence that there is evidence of product b being made by Var21 not equal d.
            seller can bargain about the price of product b, justified above, and
            there is no evidence that buyer accepts buying product b from maker d at price low, because
                there is evidence of product b being made by d, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product b from maker d at price low.
The global constraints hold.
```

Seller (reduced):

```
the proposal for product b from maker d at price lowest is acceptable, because
    there is evidence that product b exists, and
    there is evidence of product b being made by d, and
    there is evidence of b being of good quality, and
    seller accepts selling product b from maker d at price lowest, because
        the product b from maker d at price lowest is acceptable for Seller, because
            buyer is subscribed to the mailing list, because
                there is no evidence that there is evidence of buyer being subscribed to the mailing list, and
                there is no evidence that there is evidence of buyer not being subscribed to the mailing list, and
                it is assumed that buyer is subscribed to the mailing list.
            buyer pays in cash, because
                there is no evidence that there is evidence of buyer paying in cash, and
                there is no evidence that there is evidence of buyer not paying in cash, and
                it is assumed that buyer pays in cash.
            there is no evidence that buyer accepts buying product a from maker c at price high, because
                there is evidence that product a exists, justified above, and
                there is evidence of product a being made by c, and
                it is assumed that there is no evidence that buyer accepts buying product a from maker c at price high.
            there is no evidence that buyer accepts buying product b from maker d at price high, because
                there is evidence of product b being made by d, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product b from maker d at price high.
            there is no evidence that the customer is senior, because
                there is no evidence that buyer is older than 65 years, because
                    there is no evidence that there is evidence of buyer being older than 65 years, and
                    there is no evidence that there is evidence of buyer not being older than 65 years, and
                    it is assumed that there is no evidence that buyer is older than 65 years.
            there is no evidence that the customer is a student, because
                there is no evidence that buyer is a student, because
                    there is no evidence that there is evidence of buyer being a student, and
                    there is no evidence that there is evidence of buyer not being a student, and
                    it is assumed that there is no evidence that buyer is a student.
            seller can bargain about the price of product b, and
            buyer pays in cash, justified above, and
            seller can bargain about the price of product b, justified above, and
            there is no evidence that buyer accepts buying product b from maker d at price low, because
                there is evidence of product b being made by d, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product b from maker d at price low.
```

Accepted. Conditions:
- Product B is from maker D.
- Product B is of good quality.
- Buyer is subscribed to the mailing list.
- Buyer pays in cash.
- Buyer is not interested in buying product A from maker C at a high price.
- Buyer is not interested in buying product B from maker D at a high price.
- Buyer is not interested in buying product B from maker D at a low price.
- Buyer is not older than 65 years.
- Buyer is not a student.

## Step 5

### Question seller → buyer

> Seller: I assume that you are subscribed to the mailing list, you
> pay in cash, you do not want the product A from maker C at a high
> price, you do not want the product B from maker D at a high price,
> you are not older than 65 years, you are not a student, and you do
> not want the product B from maker D at a low price. Is it correct?

### Answer buyer → seller

Buyer:

> I am subscribed to the mailing list and I pay in cash. I am not a
> student, but I am older than 65 years. I am not interested in buying
> anything from maker C at a high price, nor buying anything from
> maker D at a high or low price. Is the offer for product B from
> maker D at the lowest price still valid?

## Step 6

### Question buyer → seller

```query(Product, Maker, Price) :- Product=b, Maker=c, Price=lowest, sale(Product, Maker, Price).```

### Answer seller → buyer

Seller (raw):

```
the proposal for product b from maker d at price lowest is acceptable, because
    seller accepts selling product b from maker d at price lowest, because
        the product b from maker d at price lowest is acceptable for Seller, because
            buyer is subscribed to the mailing list, because
                there is evidence of buyer being subscribed to the mailing list.
            buyer pays in cash, because
                there is evidence of buyer paying in cash.
            there is no evidence that buyer accepts buying product Var3 not equal a, nor b from maker Var4 at price high, because
                there is no evidence that there is evidence that product Var3 not equal a, nor b exists.
            there is no evidence that buyer accepts buying product a from maker Var6 not equal c at price high, because
                there is evidence that product a exists, and
                there is no evidence that there is evidence of product a being made by Var6 not equal c.
            there is no evidence that buyer accepts buying product a from maker c at price high, because
                there is evidence that product a exists, justified above, and
                there is evidence of product a being made by c.
            there is no evidence that buyer accepts buying product b from maker Var9 not equal d at price high, because
                there is evidence that product b exists, and
                there is no evidence that there is evidence of product b being made by Var9 not equal d.
            there is no evidence that buyer accepts buying product b from maker d at price high, because
                there is evidence that product b exists, justified above, and
                there is evidence of product b being made by d.
            the customer is senior, because
                buyer is older than 65 years, because
                    there is evidence of buyer being older than 65 years.
            there is no evidence that buyer accepts buying product Var12 not equal a, nor b from maker Var13 at price low, because
                there is no evidence that there is evidence that product Var12 not equal a, nor b exists.
            the customer is senior, justified above, and
            there is no evidence that buyer accepts buying product a from maker Var15 not equal c at price low, because
                there is evidence that product a exists, justified above, and
                there is no evidence that there is evidence of product a being made by Var15 not equal c.
            there is no evidence that buyer accepts buying product a from maker c at price low, because
                there is evidence of product a being made by c, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product a from maker c at price low.
            there is no evidence that buyer accepts buying product b from maker Var18 not equal d at price low, because
                there is evidence that product b exists, justified above, and
                there is no evidence that there is evidence of product b being made by Var18 not equal d.
            there is no evidence that buyer accepts buying product b from maker d at price low, because
                there is evidence of product b being made by d, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product b from maker d at price low.
            there is no evidence that the customer is a student, because
                there is no evidence that buyer is a student, because
                    there is no evidence that there is evidence of buyer being a student, and
                    there is no evidence that there is evidence of buyer being a student, justified above, and
                    there is evidence of buyer not being a student.
            there is no evidence that seller can bargain about the price of product Var24 not equal b, and
            seller can bargain about the price of product b, and
            buyer pays in cash, justified above, and
            there is no evidence that buyer accepts buying product b from maker Var27 not equal d at price low, because
                there is evidence that product b exists, justified above, and
                there is no evidence that there is evidence of product b being made by Var27 not equal d.
            seller can bargain about the price of product b, justified above, and
            there is no evidence that buyer accepts buying product b from maker d at price low, justified above.
The global constraints hold.
```

Seller (reduced):

```
the proposal for product b from maker d at price lowest is acceptable, because
    seller accepts selling product b from maker d at price lowest, because
        the product b from maker d at price lowest is acceptable for Seller, because
            buyer is subscribed to the mailing list, because
                there is evidence of buyer being subscribed to the mailing list.
            buyer pays in cash, because
                there is evidence of buyer paying in cash.
            there is no evidence that buyer accepts buying product a from maker c at price high, because
                there is evidence that product a exists, justified above, and
                there is evidence of product a being made by c.
            there is no evidence that buyer accepts buying product b from maker d at price high, because
                there is evidence that product b exists, justified above, and
                there is evidence of product b being made by d.
            the customer is senior, because
                buyer is older than 65 years, because
                    there is evidence of buyer being older than 65 years.
            the customer is senior, justified above, and
            there is no evidence that buyer accepts buying product a from maker c at price low, because
                there is evidence of product a being made by c, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product a from maker c at price low.
            there is no evidence that buyer accepts buying product b from maker d at price low, because
                there is evidence of product b being made by d, justified above, and
                it is assumed that there is no evidence that buyer accepts buying product b from maker d at price low.
            there is no evidence that the customer is a student, because
                there is no evidence that buyer is a student, because
                    there is no evidence that there is evidence of buyer being a student, and
                    there is no evidence that there is evidence of buyer being a student, justified above, and
                    there is evidence of buyer not being a student.
            seller can bargain about the price of product b, and
            buyer pays in cash, justified above, and
            seller can bargain about the price of product b, justified above, and
            there is no evidence that buyer accepts buying product b from maker d at price low, justified above.
```

Accepted. Conditions:
- Buyer is not interested in buying product A from maker C at a low price.
- Buyer is not interested in buying product B from maker D at a low price.

## Step 7

### Question seller → buyer

> Seller: I assume that you are not interested in buying product A
> from maker C at a low price, and you are not interested in buying
> product B from maker D at a low price. Is it correct?

### Answer buyer → seller

Buyer:

> I may be interested in buying product A from maker C at a low price.
> Can you give me more details about that offer?

## Step 8

### Question buyer → seller

```query(Product, Maker, Price) :- Product=a, Maker=c, Price=low, sale(Product, Maker, Price).```

### Answer seller → buyer

Seller (raw):

```
the proposal for product a from maker c at price low is acceptable, because
    seller accepts selling product a from maker c at price low, because
        the product a from maker c at price low is acceptable for Seller, because
            the customer is senior, because
                buyer is older than 65 years, because
                    there is evidence of buyer being older than 65 years.
            there is no evidence that buyer accepts buying product Var3 not equal a, nor b from maker Var4 at price high, because
                there is no evidence that there is evidence that product Var3 not equal a, nor b exists.
            there is no evidence that buyer accepts buying product a from maker Var6 not equal c at price high, because
                there is evidence that product a exists, and
                there is no evidence that there is evidence of product a being made by Var6 not equal c.
            there is no evidence that buyer accepts buying product a from maker c at price high, because
                there is evidence that product a exists, justified above, and
                there is evidence of product a being made by c.
            there is no evidence that buyer accepts buying product b from maker Var9 not equal d at price high, because
                there is evidence that product b exists, and
                there is no evidence that there is evidence of product b being made by Var9 not equal d.
            there is no evidence that buyer accepts buying product b from maker d at price high, because
                there is evidence that product b exists, justified above, and
                there is evidence of product b being made by d.
The global constraints hold.
```

Seller (reduced):

```
the proposal for product a from maker c at price low is acceptable, because
    seller accepts selling product a from maker c at price low, because
        the product a from maker c at price low is acceptable for Seller, because
            the customer is senior, because
                buyer is older than 65 years, because
                    there is evidence of buyer being older than 65 years.
            there is no evidence that buyer accepts buying product a from maker c at price high, because
                there is evidence that product a exists, justified above, and
                there is evidence of product a being made by c.
            there is no evidence that buyer accepts buying product b from maker d at price high, because
                there is evidence that product b exists, justified above, and
                there is evidence of product b being made by d.
The global constraints hold.
```

Accepted. No further conditions.

## Step 7

### Question seller → buyer

Seller: 

> There are no additional conditions for this offer. Are you
> interested in buying product A from maker C at a low price? (last
> offer)

### Answer buyer → seller

Buyer:

> I prefer the previous offer, the one for product B from maker D at
> the lowest price.

---
End of negotiation. Result: product B from maker D at the lowest price.
