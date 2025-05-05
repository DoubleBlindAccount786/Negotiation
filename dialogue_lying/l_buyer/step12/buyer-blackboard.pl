% Step 2 - not lying
evidence(product(a)).
evidence(maker(a,c)).
evidence(quality(a)).
asked(-sale(a,c,lowest)).

% Step 4 - not lying
evidence(product(b)).
evidence(-maker(b,c)).

% Step 6 - not lying
evidence(-maker(a,d)).

% Step 8 - not lying
evidence(maker(b,d)).
evidence(quality(b)).

% Step 10 - not lying
asked(-sale(b,d,lowest)). % By not lying

