% Step 2
%asked(-buy(a,Maker,high)).

% Step 4
evidence(age_older_than_65).

% Step 8
%asked(-buy(b,d,high)).

% Step 10
evidence(-mail_list).

% Step 12 (new proposals)
asked(-buy(a,c,low)).

% Step 14
% asked(-buy(a,Maker,high)).

% Step 16
% asked(-buy(b,d,high)).
% asked(-buy(a,Maker,low)).

% Step 18
% asked(-buy(b,Maker,high)).

% Step 20
% asked(-buy(b,Maker,low)).

% Step 22 (correction)
evidence(mail_list).

% Step 24
evidence(cash).
evidence(-student).

% Step 26 (new proposals)
asked(-buy(b,d,lowest)).

% Step 28
asked(-buy(a,Maker,high)).

% Step 30
asked(-buy(b,d,high)).
asked(-buy(a,Maker,low)).