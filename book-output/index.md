# Prospectus
Danton Noriega  
`r format(Sys.Date(), "%B %d %Y")`  

# Overview {#index}

This document contains drafts and ideas for my prospectus.

Chapter 2 is a descriptive paper exploring the policy of improving health and food equity of SNAP participants through targeted fruit and vegetables subsidies. The focal point will be on the [*Double Up Food Bucks*][dufb] (DUFB) program run by the non-profit *Fair Foods Network* based out of Michigan. A comparison will be made with another subsidy program called the *Healthy Incentives Pilot* (HIP). I will argue how and why the DUFB is a more scalable program and better policy if the aim is increase fruit and vegetable consumption. I will remain neutral on whether subsidizing fruit and vegetable purchases lead to improved health outcomes. The paper will conclude with a preview of results from recently acquired point-of-sale data from a recent pilot of DUFB in 3 independent Michigan grocery stores.

[dufb]: http://www.doubleupfoodbucks.org/

Chapter 3 is a proposed evaluation of the effectiveness of the DUFB program. "Effectiveness" will be defined by the change in total sales and volume of produce sold within grocery stores that implement DUFB (treatment group). The control group would be other stores within census tracks or zip codes where surrounding populations have similar demographic composition. A difference-in-difference between stores using DUFB (treatment) and those without (control) will be used to measure the size of the effect. While an actual experiment is being designed for FFN by researchers at NYU, the experiment will span through 2016, making analysis of the data in the short-term difficult. My research will serve as an initial benchmark to help ground expectations and results---with full knowledge that results may be biased---before data from the RCT becomes available.


## Ideas

1. **What product purchases correlate (predict) abnormally fast increases in the BMI of young children?**
    - Clearly, must control for the fact that BMI for kids increases over time naturally; expect variation effect will be driven mostly by outliers
    - quick and dirty analysis will be to run L1 or L2 penalized regression on BMI to see which product purchases seem to predict abnormally high BMI increases
2. **What is the redemption rate of DUFB coupons?**
    - DUFB coupons are, in effect, free money that can be used on ANY produce conditional on the prior purchase of Michigan produce
    - under the assumption that consumers are rational and utility maximizing, we would predict a relatively high redemption rate; consumers would not leave free money on the table
    - this is unlikely to be the case but the question is, *just how high (or low) is the redemption rate?* Do most coupons go unredeemed?
    - This will be a technically difficult problem as we do not have panel data but the data could still be used to attempt to answer this question
3. **What purchasing behavior distinguishes DUFB participants from non-DUFB participants?**
    - households have already self-selected into DUFB and non-DUFB. do their purchasing patterns differ substantially?
    - Is it possible to identify a DUFB purchase if we remove Michigan Produce?
    - This will depend a lot on how frequently Michigan produce is purchased without DUFB; otherwise, MI produce purchases will be a perfect predictor of DUFB transaction

<!--chapter:end:index.Rmd-->

---
knit: bookdown::preview_chapter
---

# Double Up Food Bucks Description {#DUFB}

## Summary

**Problem**

SNAP participants, compared to higher income groups, tend to purchase more unhealthy foods and fewer fruits and vegetables. This is known as the "Nutrition Gap". These individual choices, in aggregate, produces a negative externality: poor diet---one consisting of processed foods and other products high in sugar, salts, and fats---is closely linked to adverse health outcomes e.g. obesity, heart disease, and type 2 diabetes. But the health care costs of these diet-related conditions are not paid for by SNAP participants but by taxpayers. Policymakers, therefore, should be looking for cost-effective was to incentivize SNAP participants towards making healthier food choices.

**Question(s)**

How effective would a targeted subsidy aimed be at reducing the nutrition gap? Specifically, could a subsidy aimed at increasing the fruit and vegetables purchases of SNAP participants make a significant impact on overall diet? And would the costs of the subsidy justify the health care savings---assuming there are any?

**Case Study**

A recently successful fruit and vegetable subsidy program for SNAP participants has been the [**Double Up Food Bucks**][dufb] program. The program initially began as way to encourage more SNAP participants to visits local farmer's markets. DUFB grew dramatically across Michigan farmer's market from 2009 to 2014. To make the DUFB more accessible, the USDA provided funding via that 2014 Farm Bill for the program to be piloted in grocery stores. Four months of point-of-sale data have collected but **a rigorous analysis of the point-of-sale data has yet to be completed**.


## Introduction

The Supplemental Nutrition Assistance Program (SNAP)---know as "Food Stamps" before to 2008---was created to help mitigate food insecurity in the US. The intention of policymakers was to ensure a basic, minimal level of food security for low-income families [@usda_fns_short_2014]. Other than obvious vices, like alcohol and cigarettes, there are no restrictions on what food items (excluding pet food) can be purchased with SNAP. Consumer are free to purchase unhealthy and/or healthy food. But in the last few years, these light restrictions on what can and cannot be purchases with SNAP have fallen under scrutiny.

### Purchasing Patterns of SNAP Beneficiaries

Research has found that SNAP participants, at best, consume same amount of unhealthy foods (e.g. sugar-sweetened beverages, baked goods, snacks, candy) compared to non-participants and ineligible households [@todd_caloric_2014; @hoynes_snap_2014]. This is not a positive results. The average US household, regardless of income, fails to meet the USDA's dietary guidelines [@usda_scientific_2015]. Most US households purchase and consume far too much meat and foods rich in sugars and fats, and far too few fruits, vegetables and whole grains [@frazao_americas_1999]. Far more research has found that SNAP participants are significantly *less* likely to meet USDA dietary guidelines than the average US household and much *more* likely to consume unhealthy foods [@andreyeva_dietary_2015; @leung_dietary_2012; @nguyen_supplemental_2015; @wolfson_fruit_2015].


### Poor Diet and Metabolic Risk Factors

Frequent and continuous consumption of unhealthy foods---as is captured by "unhealthy" part of "unhealthy foods"---is worrisome to health experts and policy makers. There is a direct and well-established link between poor diet, metabolic risk factors (e.g. obesity, high blood pressure, type 2 diabetes, raised blood lipids), and cardiovascular disease and strokes. Metabolic risk factors (MRFs) lead to deaths that are considered "avoidable" by the World Health Organization and the Centers for Disease Control and Prevention [@who_global_2014; @cdc_vital_2013]. Governments and individuals, therefore, have a role in reducing the incidence rates of MRFs because both can help reduce the consumption of unhealthy foods and increase the consumption ones. The US, in particular, given it has the highest per capita health care costs in the world, could greatly benefit economically from policy interventions aimed at promoting better diet quality and reducing the rate (and cost) of MRFs.


### The Economic Costs of Diet-Related Chronic Diseases

Cardiovascular disease, stroke, diabetes, and certain cancers can be considered "diet-related" chronic diseases if the person suffering from the disease exhibits any of the MRFs and consumes an unhealthy diet. While it is possible to eat well and still suffer from a heart attack or a stroke, the likelihood is relatively low compared to a counter-factual self that eats poorly. On the other hand, it is a well established that a poor diet greatly increases the risk of any of the MRFs, which in turn greatly increases the risk of chronic diseases [@burke_gl_impact_2008].

[**LIST OF THE COSTS OF CHRONIC DISEASES AFTER HAVING ESTABLISHED POOR DIET->MRF LINK**]


### Adjustments to SNAP


There is mixed evidence about whether participating in SNAP leads to increases in MRFs, particularly obesity. A review of the literature and empirics by @meyerhoefer_relationship_2011 highlights how poor methodology has yielded a confusing landscape of results. But while no definitive link between SNAP participation and poor health has not been made, it is still a fact that the average American---SNAP participant or not---has a poor diet.

There has been enough evidence of SNAP participants using their benefits to purchase unhealthy foods that some policy makers have asked why restrictions on some food items (e.g. sugar-sweetened beverages) have yet to be imposed [@barnhill_impact_2011].

[**MORE INFO ON SNAP RESTRICTIONS**]



Within the context of US obesity epidemic, alarmingly high rates of MRFs, and accelerating government health care cost, some policy makers have suggested making SNAP more like the Woman, Infants, and Children (WIC) program. The WIC program provides food vouchers which limit participants to a select group of products. These products are specifically selected to be healthy to ensure women and their children receive nutritious, healthy foods. This is in contrast to SNAP, where there are few restrictions and participants are free to purchase cookies, chips, soda, and any other assortment of process foods that have no WIC voucher equivalent.

The purchase of unhealthy foods by SNAP participants is considered problematic because SNAP participants also tend to receive some form of government subsidized health care (e.g. Medicaid). The government is therefore providing a benefit transfer to individuals who generally tend to spend those benefits on a largely unhealthy diets, which are closely linked to higher morbidity rates. But the financial cost of treating MRFs are not borne by the participants of government subsidized health care. The government is therefore helping fund, and then pay for, a negative externality produced by the individual consumption choices of most SNAP participants. Ideally, given the strong link between diet and morbidity, the government would prefer SNAP participants make, on the whole, healthier food choices when using SNAP benefits [@richards_rewarding_2013; @brownell_kd_supplemental_2011; @guthrie_usda_2007]. It would lower health care costs and save the government money.

These unhealthy food choices, some have argued, are a function of limited *budget constraints* [@andreyeva_impact_2010]. That is, folks purchase unhealthy foods because they are cheaper, per calorie, then healthy foods, and make it easier to satisfy food requirements given a limited budget. Therefore, while not optimal for health, it is optimal/rational given a small food budget. But SNAP participants, like any and all other consumers, do not entirely optimizing on price. All consumers optimize across many dimensions (e.g. habit, taste, price, convenience etc). It is not entirely clear that if SNAP participants did receive more money that they would necessarily eat better [@an_effectiveness_2013].

If SNAP participants desire fruits and vegetables but they lie beyond their limited means, then increasing their purchasing power *overall* would be sufficient to make fruits and vegetables more accessible. This would imply that the most "straightforward" solution---if one ignores the political challenges---would be to increase benefit transfers to SNAP participants. This of course is not what happens when low-income households receive marginal boosts of income; a dislike for fruits and vegetables is endemic across all income groups in the United States [@frazao_americas_1999]. While proclivity to purchase for fruits and veggies does rise with income and education, the increases are not dramatic. SNAP participants, when they to receive a marginal increase in SNAP benefits, do not suddenly begin purchasing more fruits and vegetables [@hayden_income_2003]. Concern for eating healthy is a luxury; it becomes a priority only after incomes rise enough to alleviate more pressing concerns---like hunger or buying enough food to last until the next benefit transfer.

[**ADD MORE ABOUT HOW TARGET SUBSIDIES LIKE DUFB CAN PROVIDE A BETTER INCENTIVE FOR HOUSEHOLDS TO PURCHASE MORE FRUITS & VEGGIES PROVIDE**]

## The Double Up Food Bucks Program

[**Describe DUFB**]

## Data and Data Collection Process

These data were collected from 3 independent grocery stores in the Detroit area. After pre-processing, the combined dataset contains 6.5 million point-of-sale transactions. Observed are item name, item department, UPC, price paid, tender (e.g. `cash`, `debit`), and the last 4 digits of any card used as tender. Apart from the last 4 digits of a debit, credit, or EBT card, there is no way to uniquely identifying information about consumers. None of the participating grocery stores had existing loyalty card programs.

Double Up Food Bucks are observed as items purchased for zero dollars.

## Preview of Results



## Misc.

### Why is this interesting and why should we care?

* As a Society
    - There are societal costs (externalities) to having SNAP participants eat unhealthy foods.
        * Increases the costs of Medicaid and Medicare (more heart disease, type 2 diabetes)
        * Reduces productivity (poor diet, poor health results in worse labor market participation)
* As policymakers
    + Can SNAP be tweaked to nudge participants towards healthier foods without restricting food options?
    + If so, can it be done such that the costs are justified by future savings?

### What have others done to solve the problem or answer the question?

* Health Incentives Pilot (HIP)
    - Large, expensive RCT designed by USDA FNS run in Massachusetts
    - RCT and evaluation was conducted by Abt Associates Inc.
    - Complicated with very little (*%6*) of the overall costs going to the actual subsidy.
    - Evidence that the program was not well understood by participants.
    - Results were an small increase in serving size of fruits/vegetables per month
        + This is not a surprise; one should expect the consumption of any good that becomes cheaper to go up.
    - Problems
        + Survey-based data
        + POS data did exists but did not seem to be used.
        + No real understanding of how other purchases were affected (did households substitute healthy for unhealthy or just purchase more food overall?)
* Double Up Food Bucks
    - Program started by the Fair Food Network in 2009 to increase accessibility of Farmer's Markets to low-income communities in Detroit, MI area.
        + Provided a dollar-for-dollar match of SNAP benefits (capped at $20)
        + Participants received a token that could then be used on any locally grown (MI) produce.
    - Popular with participants, community, and with local farmers.
    - Considered successful and received money from US Gov to expand into grocery stores
    - Problems
        + Severe self-selection issues (folks visiting farmer's market are different from rest of SNAP population)
        + No way to gather transaction-level data about what was being purchased
    - **Has no been evaluated to see if actually produces a worthwhile treatment effect**
        + That said, should that matter? Perhaps given money to poor people that then goes to local farmers is a good use of public funds.
* Maybe talk about the policy to change the timing of SNAP disbursements?

### What have I done to answer the question?

* Received data from FFN and started cleaning it
    - Data is from 3 independent grocery stores that have implement DUFB and gathered POS data
* Drafted report with list of questions about how the process works
* Phone call with FFN to answer questions
* Working on follow-up report
* Problems
    - Do no have access to data prior to DUFB implementation
    - Not panel data; cannot uniquely identify individuals across time
    - need to find a way to distinguish sub transactions

<!--chapter:end:01-dufb-desc.Rmd-->

---
knit: bookdown::preview_chapter
---

# References




<!--chapter:end:06-references.Rmd-->

