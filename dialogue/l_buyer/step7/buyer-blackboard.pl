% Step 2
evidence(product(a)).
evidence(maker(a,c)).
evidence(quality(a)).

asked(-sale(a,c,lowest)).

% Step 4
evidence(product(b)).
evidence(-maker(b,c)).

% Step 6
evidence(-maker(a,d)).