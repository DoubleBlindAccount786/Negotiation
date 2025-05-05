% Step 5
evidence(product(b)).

% Step 7
evidence(maker(b,d)).

% Step 9
evidence(product(a)).
evidence(maker(a,c)).
evidence(-maker(b,c)).
evidence(-maker(a,d)).
evidence(quality(a)).
asked(-sale(a,c,lowest)).