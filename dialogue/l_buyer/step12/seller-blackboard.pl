% Step 9
evidence(mail_list).
evidence(cash).
evidence(age_older_than_65).

% Step 11
evidence(-student).
asked(-buy(a,c,high)).
asked(-buy(b,d,high)).
asked(-buy(b,d,low)).
asked(-buy(a,c,low)). % non-monotonic