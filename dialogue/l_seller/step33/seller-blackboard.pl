% Step 2
%asked(-buy(a, Maker, high)).

% Step 4
evidence(age_older_than_65).

% Step 10
evidence(mail_list).

% Step 12
evidence(cash).

% Step 14
%asked(-buy(b, d, high)).

% Step 16 (new proposals)
asked(-buy(a,c,low)).

% Step 18
%asked(-buy(a, Maker, high)).

% Step 20
%asked(-buy(b,d,high)).
%asked(-buy(a,Maker,low)).

% Step 22
%asked(-buy(b,Maker,high)).

% Step 24
%asked(-buy(b,Maker,low)).

% Step 26
evidence(-student).

% Step 28 (new proposals)
asked(-buy(b,d,lowest)).

% Step 30
asked(-buy(a, Maker, high)).

% Step 32
asked(-buy(b,d,high)).
asked(-buy(a,Maker,low)).