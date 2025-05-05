% Step 2
evidence(product(a)).
evidence(maker(a,c)).
evidence(quality(a)).

%asked(-sale(a,c,lowest)).

% Step 4
evidence(product(b)).
evidence(-maker(b,c)).

% Step 6
evidence(-maker(a,d)).

% Step 8
evidence(maker(b,d)).
evidence(quality(b)).

% Step 12 (new proposals)
asked(-sale(b,d,lowest)).


% Step 14
asked(-sale(a,c,lowest)).