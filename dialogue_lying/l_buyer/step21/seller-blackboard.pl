% Step 9
evidence(-mail_list).

% Step 13
evidence(age_older_than_65).
%asked(-buy(a,c,high)).
%asked(-buy(b,d,high)).

% Step 14 (new proposals)
asked(-buy(a,c,low)).

% Step 19 (correction)
evidence(mail_list).

% Step 21
evidence(cash).
evidence(-student).
asked(-buy(a,c,high)).
asked(-buy(b,d,high)).
asked(-buy(b,d,low)).