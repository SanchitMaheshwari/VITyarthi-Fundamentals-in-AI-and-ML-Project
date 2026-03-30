# VITyarthi-Fundamentals-in-AI-and-ML-Project
This Prolog program is a logic-based House Price Predictor. It uses declarative rules to calculate real estate values based on size, room count, and location (City Center, Suburbs, or Rural). By unifying user input with defined facts, it demonstrates how symbolic AI can automate financial assessments through a simple, interactive CLI loop


This is a neat little logic-based calculator! Using Prolog for a house price predictor is a great way to show off how **declarative programming** works—where you define the "what" (the rules) rather than just the "how."

Since this is for GitHub, I've designed the README to be clean, informative, and beginner-friendly, especially since many users might not have a Prolog interpreter installed yet.



# House Price Predictor (Prolog)

A lightweight, logic-based expert system that calculates house price estimates based on square footage, room count, and location. Built using **Prolog**, this project demonstrates the power of declarative logic for rule-based financial calculations.

##  Overview

The predictor uses a set of facts and rules to determine a final price. It considers three primary factors:
1.  **Size:** Multiplied by a base rate of $1,000$ per unit.
2.  **Rooms:** Each room adds $25,000$ to the value.
3.  **Location:** Applies a specific multiplier based on the desirability of the area.

## The Formula

The price is calculated using the following logic:

$$FinalPrice = (Size \times 1000) + (Rooms \times 25000) + LocationValue$$

### Location Multipliers
| Location | Multiplier (USD) |
| :--- | :--- |
| **City Center** | $150,000$ |
| **Suburbs** | $50,000$ |
| **Rural** | $20,000$ |

## Requirements

To run this program, you need a Prolog interpreter. We recommend:
* [GNU Prolog](http://gprolog.org/) (Compatible with the `initialization` directive)
* [SWI-Prolog](https://www.swi-prolog.org/)

3.  **Follow the prompts:**
    * Enter the size followed by a period (e.g., `1500.`).
    * Enter the number of rooms followed by a period (e.g., `3.`).
    * Enter the location (e.g., `city_center.`, `suburbs.`, or `rural.`).
   
> **Syntax Note:** In Prolog, every input must end with a period (`.`). For example, type `yes.` instead of just `yes`.

##  File Structure
* `house_predictor.pl`: The main logic file containing the data facts and calculation rules.

---

Would you like me to add a **"How it Works"** section that breaks down the specific Prolog syntax (like predicates and atoms) for people new to logic programming?
