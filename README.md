# Modeling Negotiation using Goal-Directed Answer Set Programming

This repository contains the files corresponding to the cases
presented in the paper "Modeling Negotiation using Goal-Directed
Answer Set Programming".

## Structure

The repository is organized as follows:

- [centralized/](./centralized/): Contains the code for the centralized
  negotiation model.
- [centralized_lying/](./centralized_lying/): Contains the code for the
  centralized negotiation model with lying.
- [alcahueta/](./alcahueta/): Contains the code for the negotiation
  model with the alcahueta assistance.
- [dialogue/](./dialogue/): Contains the code for the dialogue
  management.
- [dialogue_lying/](./dialogue_lying/): Contains the code for the
  dialogue management with lying.
- [dialogue_human/](./dialogue_human/): Contains the code for the dialogue
  management with human agents.

Each folder contains the following files:
---

### README.md
  
  A brief description of the folder and its contents.

### l_buyer/

  Contains the steps related to the conversation led by the buyer.
  In the case of [dialogue_human](./dialogue_human/), the buyer is always the leader agent, so it is replaced with the folder [human_buyer/](./dialogue_human/human_buyer/) containing the dialogue when the buyer is human.

### l_seller/

  Contains the steps related to the conversation led by the seller.
  In the case of [dialogue_human](./dialogue_human/), it is replaced with the folder [human_seller](./dialogue_human/human_seller/) containing the dialogue when the seller is human.


### buyer.pl

  Contains the code for the buyer agent. In the case of the negotiations with dishonesty ([centralized_lying](./centralized_lying/) and [dialogue_lying](./dialogue_lying/)), the buyer agent is the one that lies.

  In the case of [dialogue_human](./dialogue_human/), the buyer is human, so this code is not included.


### seller.pl

  Contains the code for the seller agent.

  In the case of [dialogue_human](./dialogue_human/), the seller is human, so this code is not included.

### nl_patterns.pl

Contains the directives needed to output justifications in natural
language.
