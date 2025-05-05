# Conversation buyer (bot) - seller (human)

## Step 1

### Question seller → buyer

> Seller: Can you tell me what do you want to buy?

```query :- buy(Product, Maker, Price).```

### Answer buyer → seller

Buyer (raw):

```
the proposal for product a from maker c at price lowest is acceptable, because
    buyer accepts buying product a from maker c at price lowest, because
        buyer can buy the product a from maker c at price lowest, because
            the product a is made by c, because
                the product a exists, because
                    there is no evidence that there is evidence that product a exists, and
                    there is no evidence that there is evidence that product a does not exist, and
                    there is no evidence that there is evidence that product a does not exist, justified above.
                there is no evidence that there is evidence of product a being made by c, and
                the product a exists, justified above, and
                there is no evidence that there is evidence of product a not being made by c, and
                there is no evidence that there is evidence of product a not being made by c, justified above, and
                it is assumed that the product a is made by c.
        the product a is of good quality, because
            there is no evidence that there is evidence of a being of good quality, and
            there is no evidence that there is evidence of a being of bad quality, and
            there is no evidence that there is evidence of a being of bad quality, justified above, and
            it is assumed that the product a is of good quality.
The global constraints hold.
```

Buyer (reduced):

```
the proposal for product a from maker c at price lowest is acceptable, because
    buyer accepts buying product a from maker c at price lowest, because
        buyer can buy the product a from maker c at price lowest, because
            the product a is made by c, because
                the product a exists, because
                    there is no evidence that there is evidence that product a exists, and
                    there is no evidence that there is evidence that product a does not exist, and
                there is no evidence that there is evidence of product a being made by c, and
                the product a exists, justified above, and
                there is no evidence that there is evidence of product a not being made by c, and
                it is assumed that the product a is made by c.
        the product a is of good quality, because
            there is no evidence that there is evidence of a being of good quality, and
            there is no evidence that there is evidence of a being of bad quality, and
            it is assumed that the product a is of good quality.
```

Proposal: product A from maker C at the lowest price.
Conditions:
- Product A exists.
- Product A is made by C.
- Product A is of good quality.

## Step 2

### Question buyer → seller

> Buyer: I'm assuming that there is a product A made by C, and that it
> is of good quality. Can you confirm that information, and offer the
> product A from maker C at the lowest price?

### Answer seller → buyer

Seller:

> Product A is made by C, and it is of good quality. However, I can't
> offer it at the lowest price. However, I can offer that product at a
> high price. Are you interested?

## Step 3

### Question seller → buyer
> Seller: Are you interested in buying product A from maker C at a
> high price?

```query :- Product=a, Maker=c, Price=high, buy(Product, Maker, Price).```

### Answer buyer → seller

Buyer (raw):

```
there is no evidence that the proposal for product a from maker c at price high is acceptable, because
    there is no evidence that buyer accepts buying product a from maker c at price high, because
        there is no evidence that buyer can buy the product a from maker c at price high, because
            the product a is made by c, because
                the product a exists, because
                    there is evidence that product a exists.
                there is evidence of product a being made by c.
            the product a is made by c, justified above.
The global constraints hold.
```

Buyer (reduced):

```
there is no evidence that the proposal for product a from maker c at price high is acceptable, because
    there is no evidence that buyer accepts buying product a from maker c at price high, because
        there is no evidence that buyer can buy the product a from maker c at price high, because
            the product a is made by c, because
                the product a exists, because
                    there is evidence that product a exists.
                there is evidence of product a being made by c.
            the product a is made by c, justified above.
```

Rejected: price is not acceptable.

## Step 4

### Question buyer → seller

Buyer:

> I can't accept the proposal for product A from maker C at a high
> price.

### Answer seller → buyer

Seller:

> I understand. Are you older than 65 years old? If so, I can offer a
> discount, and leave the product A from maker C at a low price.

## Step 5

### Question seller → buyer

> Seller: Are you older than 65 years old? If so, I can offer a
> discount, and leave the product A from maker C at a low price.

```query :- evidence(age_older_than_65), Product=a, Maker=c, Price=low, buy(Product, Maker, Price).```

## Answer buyer → seller

Buyer (raw):

```
the proposal for product a from maker c at price low is acceptable, because
    there is evidence of buyer being older than 65 years, and
    buyer accepts buying product a from maker c at price low, because
        buyer can buy the product a from maker c at price low, because
            the product a is made by c, because
                the product a exists, because
                    there is evidence that product a exists.
                there is evidence of product a being made by c.
            there is no evidence that the product Var3 not equal a, nor b is made by c, because
                there is no evidence that the product Var3 not equal a, nor b exists, and
                there is no evidence that the product Var3 not equal a, nor b exists.
            the product a is made by c, justified above, and
            there is no evidence that seller accepts selling product a from maker c at price lowest, because
                the product a exists, justified above, and
                the product a is made by c, justified above.
            there is no evidence that the product b is made by c, because
                there is no evidence that the product b exists, because
                    there is no evidence that there is evidence that product b exists, and
                    there is no evidence that there is evidence that product b exists, justified above, and
                    there is no evidence that there is evidence that product b does not exist.
                there is no evidence that the product b exists, justified above.
            there is no evidence that the product Var13 not equal a, nor b is made by d, because
                there is no evidence that the product Var13 not equal a, nor b exists, and
                there is no evidence that the product Var13 not equal a, nor b exists.
            there is no evidence that the product a is made by d, because
                the product a exists, justified above, and
                there is no evidence that there is evidence of product a being made by d, and
                there is no evidence that there is evidence of product a being made by d, justified above, and
                there is no evidence that there is evidence of product a not being made by d, and
                it is assumed that there is no evidence that the product a is made by d.
            there is no evidence that the product b is made by d, because
                there is no evidence that the product b exists, justified above.
        the product a is of good quality, because
            there is evidence of a being of good quality.
The global constraints hold.
```

Buyer (reduced):

```
the proposal for product a from maker c at price low is acceptable, because
    there is evidence of buyer being older than 65 years, and
    buyer accepts buying product a from maker c at price low, because
        buyer can buy the product a from maker c at price low, because
            the product a is made by c, because
                the product a exists, because
                    there is evidence that product a exists.
                there is evidence of product a being made by c.
            the product a is made by c, justified above, and
            there is no evidence that seller accepts selling product a from maker c at price lowest, because
                the product a exists, justified above, and
                the product a is made by c, justified above.
            there is no evidence that the product b is made by c, because
                there is no evidence that the product b exists, because
                    there is no evidence that there is evidence that product b exists, and
                    there is no evidence that there is evidence that product b does not exist.
                there is no evidence that the product b exists, justified above.
            there is no evidence that the product a is made by d, because
                the product a exists, justified above, and
                there is no evidence that there is evidence of product a being made by d, and
                there is no evidence that there is evidence of product a not being made by d, and
                it is assumed that there is no evidence that the product a is made by d.
            there is no evidence that the product b is made by d, because
                there is no evidence that the product b exists, justified above.
        the product a is of good quality, because
            there is evidence of a being of good quality.
```

Accepted. Conditions:
- I'm older than 65 years old.
- Product A is not made by D.
- Product B does not exist.

# Step 6

### Question buyer → seller

Buyer:
> I accept the proposal for product A from maker C at a low price, and
> I confirm that I'm older than 65 years old. I'm assuming that
> product A is not made by D, and product B does not exist. Is that
> correct?

### Answer seller → buyer

Seller:
> Yes, product A is not made by D, but product B exists. Are you
> interested in buying product B from maker D at a high price? It also
> has good quality.

## Step 7

### Question seller → buyer

```query :- Product=b, Maker=d, Price=high, buy(Product, Maker, Price).```

### Answer buyer → seller

Buyer (raw):

```
there is no evidence that the proposal for product b from maker d at price high is acceptable, because
    there is no evidence that buyer accepts buying product b from maker d at price high, because
        there is no evidence that buyer can buy the product b from maker d at price high, because
            the product b is made by d, because
                the product b exists, because
                    there is evidence that product b exists.
                there is evidence of product b being made by d.
The global constraints hold.
```

Buyer (reduced):

```
there is no evidence that the proposal for product b from maker d at price high is acceptable, because
    there is no evidence that buyer accepts buying product b from maker d at price high, because
        there is no evidence that buyer can buy the product b from maker d at price high, because
            the product b is made by d, because
                the product b exists, because
                    there is evidence that product b exists.
                there is evidence of product b being made by d.
```

Rejected: price is not acceptable.

## Step 8

### Question buyer → seller

Buyer:
> I can't accept the proposal for product B from maker D at a high
> price. Are there any other options for B available?

### Answer seller → buyer

Seller:

> I can offer you product B from maker D at a low price if you pay in
> cash. Are you interested in that option?

## Step 9

### Question seller → buyer

```query :- evidence(cash), Product=b, Maker=d, Price=low, buy(Product, Maker, Price).```

### Answer buyer → seller

Buyer (raw):

```
there is no evidence that the proposal for product b from maker d at price low is acceptable, because
    there is evidence of buyer paying in cash, and
    there is no evidence that buyer accepts buying product b from maker d at price low, because
        there is no evidence that buyer can buy the product b from maker d at price low, because
            the product b is made by d, because
                the product b exists, because
                    there is evidence that product b exists.
                there is evidence of product b being made by d.
The global constraints hold.
```

Buyer (reduced):

```
there is no evidence that the proposal for product b from maker d at price low is acceptable, because
    there is evidence of buyer paying in cash, and
    there is no evidence that buyer accepts buying product b from maker d at price low, because
        there is no evidence that buyer can buy the product b from maker d at price low, because
            the product b is made by d, because
                the product b exists, because
                    there is evidence that product b exists.
                there is evidence of product b being made by d.
```

Rejected: price is not acceptable.

## Step 10

### Question buyer → seller

Buyer:
> I can't accept the proposal for product B from maker D at a low
> price. Are there any other options for B available?

### Answer seller → buyer

Seller:
> I can offer you product B from maker D at the lowest price if you
> subscribe to our mailing list and pay in cash. Are you interested in
> that option?

## Step 11

### Question seller → buyer

```query :- evidence(mail_list), evidence(cash), Product=b, Maker=d, Price=lowest, buy(Product, Maker, Price).```

### Answer buyer → seller

Buyer (raw):

```
the proposal for product b from maker d at price lowest is acceptable, because
    there is evidence of buyer being subscribed to the mailing list, and
    there is evidence of buyer paying in cash, and
    buyer accepts buying product b from maker d at price lowest, because
        buyer can buy the product b from maker d at price lowest, because
            the product b is made by d, because
                the product b exists, because
                    there is evidence that product b exists.
                there is evidence of product b being made by d.
            there is no evidence that the product Var3 not equal a, nor b is made by c, because
                there is no evidence that the product Var3 not equal a, nor b exists, and
                there is no evidence that the product Var3 not equal a, nor b exists.
            the product a is made by c, because
                the product a exists, because
                    there is evidence that product a exists.
                there is evidence of product a being made by c.
            the product a is made by c, justified above, and
            there is no evidence that seller accepts selling product a from maker c at price lowest, because
                the product a exists, justified above, and
                the product a is made by c, justified above.
            there is no evidence that the product b is made by c, because
                the product b exists, justified above, and
                there is no evidence that there is evidence of product b being made by c, and
                there is no evidence that there is evidence of product b being made by c, justified above, and
                there is no evidence that there is evidence of product b not being made by c, and
                it is assumed that there is no evidence that the product b is made by c.
        the product b is of good quality, because
            there is evidence of b being of good quality.
The global constraints hold.
```

Buyer (reduced):

```
the proposal for product b from maker d at price lowest is acceptable, because
    there is evidence of buyer being subscribed to the mailing list, and
    there is evidence of buyer paying in cash, and
    buyer accepts buying product b from maker d at price lowest, because
        buyer can buy the product b from maker d at price lowest, because
            the product b is made by d, because
                the product b exists, because
                    there is evidence that product b exists.
                there is evidence of product b being made by d.
            the product a is made by c, because
                the product a exists, because
                    there is evidence that product a exists.
                there is evidence of product a being made by c.
            the product a is made by c, justified above, and
            there is no evidence that seller accepts selling product a from maker c at price lowest, because
                the product a exists, justified above, and
                the product a is made by c, justified above.
            there is no evidence that the product b is made by c, because
                the product b exists, justified above, and
                there is no evidence that there is evidence of product b being made by c, and
                there is no evidence that there is evidence of product b not being made by c, and
                it is assumed that there is no evidence that the product b is made by c.
        the product b is of good quality, because
            there is evidence of b being of good quality.
```

Accepted. Conditions:
- I'm subscribed to the mailing list.
- I'm paying in cash.

# Step 12

### Question buyer → seller

Buyer:
> I accept the proposal for product B from maker D at the lowest
> price, and I confirm that I'm subscribed to the mailing list and
> paying in cash. Is there anything else you want to ask?

### Answer seller → buyer

Seller:

> No, I don't have any other questions. I'll sell you product B from
> maker D at the lowest price. Thank you for your purchase!

---

End of negotiation. Result: product B from maker D at the lowest price.
