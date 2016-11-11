# Dissertation Prospectus
Danton Noriega  
`r format(Sys.Date(), "%B %d %Y")`  





# Overview {-}

Chapter 1 is an evaluation of the effectiveness of the Double Up Food Bucks (Double Up) program. "Effectiveness" will be defined by the change in total sales and volume of produce sold within a subset of grocery stores that implement Double Up (treatment group). The control group comprises 15 stores where Double Up was not implemented. A difference-in-difference between stores using Double Up (treatment) and those without (control) will be used to measure the size of the effect.

The broader policy concern is that of of improving health and food equity of SNAP participants through targeted fruit and vegetables subsidies. The focal point will be on the [*Double Up Food Bucks*][Double Up] program run by the non-profit *Fair Food Network* based out of Michigan. A comparison will be made with another subsidy program called the *Healthy Incentives Pilot* (HIP). I will argue how and why my results from the Double Up program are more realistic and dependable than those from HIP. However, I will remain neutral on whether subsidizing fruit and vegetable purchases lead to improved health outcomes.

[Double Up]: http://www.doubleupfoodbucks.org/

Chapter 2 is an exploration of how the basket of products purchased by SNAP shoppers changes after the introduction of DUFB. This will use a few different sets of data where one is able to link purchases to individuals.

Chapter 3 is a descriptive paper on how Durham Social Services spends TANF dollars. There is no uniformity between how different states and local governments use TANF funds. There is also little published data research.

<!-- ## Other Ideas {-}

1. **What is the redemption rate of Double Up coupons?**
    - Double Up coupons are, in effect, free money that can be used on ANY produce conditional on the prior purchase of Michigan produce
    - Under the assumption that consumers are rational and utility maximizing, we would predict a relatively high redemption rate; consumers would not leave free money on the table
    - This is unlikely to be the case but the question is, *just how high (or low) is the redemption rate?* Do most coupons go unredeemed?
    - This will be a technically difficult problem as we do not have panel data but the data could still be used to attempt to answer this question
2. **What purchasing behavior distinguishes Double Up participants from non-Double Up participants?**
    - Households have already self-selected into Double Up and non-Double Up. do their purchasing patterns differ substantially?
    - Is it possible to identify a Double Up purchase if we remove Michigan Produce?
    - This will depend a lot on how frequently Michigan produce is purchased without Double Up; otherwise, MI produce purchases will be a perfect predictor of Double Up transaction.
3. **How does the snap benefit cycle affect purchasing patters.** 
    - This is an attempt to model the consumption cycle of SNAP participants who receive benefits under the MI benefits schedule. The neoclassical assumption is *consumption smoothing*. The data displays different behavior---something more hyperbolic, with benefits being consumed at a high rate soon after being received. The two models---neoclassical and hyperbolic---will be constructed then calibrated using transaction data from 3 independent stores in MI where we can identify SNAP transactions.
 -->

<!-- # Literature Review {-} -->




<!--chapter:end:index.Rmd-->


# An Evaluation of the Double Up Food Bucks program {#chapter-1}

## Introduction {#intro-1}

Unhealthy eating is expensive. Chronic diet-related conditions like obesity, heart disease, and other metabolic risk factors (stroke, type II diabetes, etc) are estimated to cost the US health care system between 200 to 400 billion dollars annually [@cawley_medical_2012; @chatterjee_checkup_2014]. More importantly, diseases linked to poor diet account for hundreds of thousands of death each year. Heart disease alone is the leading cause of death for all persons in the US, with stroke fifth and diabetes seventh [@national_center_for_health_statistics_health_2015]. Improving dietary health of American households has therefore become an increasing priority for the United States. 

Obesity and heart disease rates vary by income, affecting more low-income families than middle- and high-income families. Poverty and poor health outcomes, in turn, correlate with food insecurity and poor diet. Research on the dietary patterns of households receiving Supplemental Nutrition Assistance (SNAP) benefits has found that they are significantly *less* likely to meet USDA dietary guidelines than the average US household and much *more* likely to consume unhealthy foods [@andreyeva_dietary_2015; @nguyen_supplemental_2015; @wolfson_fruit_2015]. A smaller set of research has found that SNAP households, at best, consume same amount of unhealthy foods (e.g. sugar-sweetened beverages, baked goods, snacks, candy, etc) compared to non-households and ineligible households [@todd_caloric_2014; @hoynes_snap_2014]. In other words, SNAP households consume foods that are less healthy or about the same as ineligible SNAP households. This is a concerning result. Most US households purchase and consume far too much meat and foods rich in sugars and fats, and far too few fruits, vegetables and whole grains [@usda_scientific_2015; @frazao_high_1999]. 

To qualify for SNAP, a household must be sufficiently budget constrained that hunger is considered likely without cash assistance. SNAP is first and foremost an anti-hunger program, not health and nutrition program. As a consequence, SNAP beneficiaries can often not afford the luxury of substituting healthy foods for unhealthy foods when unhealthy foods can be cheaper, more accessible, and take less time to prepare. It is a costly trade-off between hunger and health. 

**Note**: I need to find a better way to include @blumenthal_strategies_2014; @leung_qualitative_2013; @cawley_economy_2015. All combined, they provide a solid review of what experts see as barriers for healthy food for SNAP beneficiaries as well as the recommendations to improve their diets.

||But SNAP is also federal aid program. In response to seeing federal dollars being spent on unhealthy foods, some policy makers have suggested making SNAP more like the Woman, Infants, and Children (WIC) program [@scott_wisconsin_2013]. The WIC program provides food vouchers which limit households to a select group of products. These products are specifically selected to be healthy to ensure women and their children receive nutritious, healthy foods. The use of WIC benefits, by design, places restrictions on food choices. This is in contrast to SNAP where there are few restrictions and households are free to purchase cookies, chips, soda, and any other assortment of processed foods that have no WIC voucher equivalent.||

For many SNAP beneficiaries, freedom of product choice is what makes the SNAP program popular and easy to use [@anne-marie_lindsey_wic_2013; @edin_snap_2013]. Rather than change SNAP and make it more restrictive like WIC, the USDA's Food and Nutrition Services (FNS) has instead renewed its efforts to combat obesity by providing educational materials and "toolkits" to states [@multiple_supplemental_2017]. But of greater interest is how the USDA is also beginning to test out financial incentives as a way to improve the diet of SNAP beneficiaries.

## Financial Incentives to Encourage Healthy Food Purchases

Section 4208.(b) of the Agricultural Act of 2014 established the Food Insecurity Nutrition Initiative (FINI). The allocation of $100 million dollars to FINI suggests that the federal government has started to recognize that ineffectiveness of past policies to change the purchasing habits of SNAP participating households. Moving forward, the federal and state governments may play a more active role to increasing the quality and healthiness of foods accessible to SNAP households. For the moment, the federal government appears unwilling to change purchasing patterns by restricting food choice. Instead, the government is opting to pilot incentives-based programs.

The incentive programs piloted by FINI grants aim to make it easier and more affordable for SNAP households to purchase (and hopefully consume) healthier foods without restricting choice.  However, not enough evidence exists yet to know whether, in practice, incentives-based programs are more effective than restriction-based ones---or if effective at all. This is why all programs funded through FINI grants must agree to be properly evaluated. 

Of specific interest is Double Up Food Bucks (Double Up), an incentives-based program funded by FINI. Double Up, launched in 2009 by the non-profit organization Fair Food Networks (FFN), doubles the purchasing power of SNAP recipients buying produce. Dollars spent on Michigan produce are match up to $20 dollars, but the matching funds can only be used to purchase more fruits and vegetables at a later date. The program is considered by FFN to be a "three-fold" win: it helps local low-income families buy more fresh produce, provides new customers for local farmers, and stimulates the local food economy [@fairfoodnetwork_double_2014].


# The Double Up Food Bucks Program

The non-profit organization Fair Food Networks (FFN) launched the Double Up Food Bucks (Double Up) program in 2009 in Detroit, Michigan. The intention of the program was to get more low-income families visiting and participating in local Detroit farmers markets. The mechanism for increasing participation was a financial incentive: a dollar-for-dollar match for every for fruits and vegetables. This subsidy was accessible only to low-income families receiving SNAP benefits, who could exchange up to $20 of their benefits for a wooden token that could be used on up to $40 worth of locally grown, fresh produce. 

The Double Up program was considered successful given it had expanded to more than 150 farmers markets in 2014 from just 5 farmers markets in 2009. SNAP benefits have been used more than 200,000 times to purchase fresh produce, with more than 10,000 first time SNAP customers visiting farmers markets in 2013 alone [@fairfoodnetwork_double_2014]. The program is considered by Fair Food Network to be a "three-fold" win given that the program helps local low-income families buy more fresh produce, provides new customers for local famers, and stimulates the local food economy. Relative to farmers markets in other states, Double Up did seem to be bringing in substantially more SNAP dollars ($1.7 million in Michigan versus $307,000 in Illinois, the second largest). 

## From Farmers Markets to Grocery Stores

By successfully expanding the program over 5 years into many different communities, FFN established itself as a consistent and reliable partner in numerous local famers markets across many diverse communities. In short, it proved that Double Up was scalable. The problem, however, is that while FFN was able to prove they could successfully scale Double Up across other farmers markets, FFN had not yet proven they could expand Double Up into local supermarkets and grocery stores.

A 5.17 million dollar FINI grant was awarded to Fair Food Network to help it pilot three adjustments to the Double Up Food Buck program [@usda_nifa_usda_2015]. First, FFN needs to test Double Up as a year-round program in select locations instead of the current seasonal format. Second, shift away from the token system to the electronic processing of Double Up transactions. Third, the Double Up needs to expand from farmers markets to retail supermarkets and grocery stores. 

Successful expansion into supermarkets and grocery stores is critical. Approximately three-quarters of all SNAP benefits in 2009 were used in supermarkets, super-centers, or small to large grocery stores [@castner_benefit_2011]. Less than 7% percent of SNAP benefits were used at local farmers markets. The amount of SNAP benefits used in local farmers markets has increased since 2009, but no where near the growth necessary to reach the type of stores most frequented by low-income families. If incentive programs like Double Up are going to be considered as one of the USDA's many tools to increase food access and combat obesity, then Double Up must be successfully implemented and scaled across supermarkets and grocery stores. Above all else, Double Up must prove it is effective in changing purchasing habits within the supermarket/grocery store food environment.

The Fair Food Network started testing and gathering data from grocery stores implementing Double Up in 2014. The mechanisms used to implement Double Up varies across grocery stores and chains, as does the produce offered and customer demographics. One of FFN's partners largest partners, a Michigan grocery retail and distribution company, piloted the program in 2 of its stores in 2014. The company has since expanded to 5 stores in 2015 and then to 17 of 62 stores in 2016. Rapid scaling was possible due to the point-of-sale technology used by the company to implement Double Ups across its stores. It provides, to date, the best case study of scaling Double Up across numerous grocery stores that span different geographic areas and populations for a specific incentive mechanism. Data from 2014 - 2016 will also be provided from another 15 stores where Double Up was not implement.

The availability of these data will provide an unprecedented look into how SNAP shoppers respond to targeted financial incentives. No research has been done on food incentives specifically tailored towards SNAP shoppers where behavior was analyzed via transactions as opposed to surveys (see [@bartlett_evaluation_2014]). Furthermore, no research has been done where the financial incentive was this large.

This paper aims to evaluate the effectiveness of the Double Up Food Bucks.

<!--chapter:end:01.10-introduction.Rmd-->


## Data {#data-1}

These data come from a large grocery distributor and retailer serving multiple grocery chains. Three years of data will be made available, 2014 through 2016. These data are transaction level and will include (at least) store number, register, transaction ID, date and time of purchase, payment type, item, dollars, and quantity.

Double Up implementation was considered for a single grocery chain. The chain has more than 60 stores, 17 of which were selected as "treatment" stores (with Double Up). Of the remaining stores, data is being made available from an addition 15 to serve as "controls". The quotes here signify that these terms will be used as shorthand, but the terminology is somewhat misleading. The use of "treatment" and "control" could lead one to think store assignment was random. It was not.

[TK real specific details about the data e.g. total transactions observed etc.]

One important variable that will not be made available is a variable for loyalty card numbers. The company's use of loyalty cards across its many chains was an exciting prospect. Previous transaction data from smaller independent grocery chains had no way linking purchases to a single unique identifier over time because these smaller chains did not have advanced point-of-sale systems.

In earlier conversations with the company, it was understood that loyalty cards would be made available. However, months into working with the company, we were informed that this was no longer possible. According to the company's legal department, the company cannot share any personal information about their customers. Unfortunately for us, in the loyalty card contract signed by customers, the loyalty card number itself is considered personal information, meaning loyalty card numbers fall under the same legal category as phone numbers and home addresses.


### Overview of Store Selection and Expansion {-}

How the 17 "treatment" stores and 15 "control" stores were selected in 2016 is important. First and foremost, selection was *not* random. Stores were either selected by the company (13 of 17) or self-selected into Double Up (4 of 17). Second, the 15 control stores were selected *after* the selection of the 17 treatment stores. Data from all remaining stores was requested but the request was denied; only 15 stores had been approved by the company's management. Finally, and most importantly, the selection criteria for the 17 treatment stores is *observable*. The implications of this will be covered in more detail in the [Methods](#methods) section.

### Selection and Expansion of Double Up Stores {-}

The first 2 stores were piloted with Double Up in 2014. Both were in geographically distinct areas (these will be referred to as "`Node 0`" and "`Node 1`"). There was a small expansion adding 3 more stores in 2015. The 3 stores were selected because they were geographically close to the 2 original pilot stores (2 close to `Node 0`, 1 close to `Node 1`). The 5 stores are referred to as the "core". These location of these 5 stores, separated in two clusters, established the geographic constraints that were then used to determine most of the additional stores in 2016.

Double Up was expanded to 12 more stores in 2016, totaling 17. Of those 12, 6 were selected due to their proximity to the 5 core stores, their SNAP EBT^[Electronic Benefit Transfer.] sales figures, and similarity in surrounding demographics (high population density, more African-American). In other words, 9 of the 17 stores---excluding the initial 2 pilot stores—--were selected on a set of *observable* characteristics. The remaining 6 stores were not.

Of the remaining 6 stores, 4 asked if they could be included in the program. These stores *self-selected* into Double Up, making these stores fundamentally distinct. They were considered, and then included, only because they fell within the "Top 50". The final 2 stores were selected by the company for "strategic business decision". The best interpretation of this is that the company thought that Double Up would provide a competitive edge to the 2 included stores given some internal calculus. How the company came to this decision is *unknown* and therefore *unobserved*.

Table \@ref(tab:store-class) helps understand the year by year expansion of Double Up. Stores are classified as either `assigned`, `self-selected`, or `unobserved`. To be `assigned` means a stores participation in Double Up was determined (assigned) by the company; `self-selected` means the store asked the company to participate; `unobserved` means that the company selected the store to participate in Double Up but for unknown and unobserved reasons. Capital letters (i.e. A, B, C) were assigned to each store for easy reference but otherwise have no meaningful interpretation.



Table: (\#tab:store-class)Year by Year Store Selection. Stores 1 and 2 represent the initial 2014 pilot stores.

 Store  2014       2015       2016          
------  ---------  ---------  --------------
     1  assigned   assigned   assigned      
     2  assigned   assigned   assigned      
     3             assigned   assigned      
     4             assigned   assigned      
     5             assigned   assigned      
     6                        assigned      
     7                        assigned      
     8                        assigned      
     9                        assigned      
    10                        assigned      
    11                        assigned      
    12                        self-selected 
    13                        self-selected 
    14                        self-selected 
    15                        self-selected 
    16                        unobserved    
    17                        unobserved    



<!--chapter:end:01.30-data.Rmd-->



### Expansion on Observables {-}

An example expansion on *observables* (using fake data) can be seen in Figure \@ref(fig:dufb-expansion). In the top frame, one can see two blue dots. These blue dots simulate the first two pilot stores in 2014. The left blue dot is `Node 0` and the right blue dot is `Node 1`. The gray zones represents areas of higher population density. Dark gray is considered *urban*, defined as having a population density of 1500 persons or more per square mile. The light gray are small towns and cities, more densely populated than very rural areas, but could not be considered *urban*. The expansion in 2015 (middle frame) proceeds to the stores closest to the original pilot stores. The expansion continues to 6 more stores in 2016 (bottom frame) away from the nodes but also along areas of higher population density.

Not conveyed in Figure \@ref(fig:dufb-expansion) is that the 2015 and 2016 expansions also move through stores that happen to be "highly ranked"---that is, have relatively higher SNAP EBT sales.^[All stores within the chain were ranked by SNAP EBT sales as a percentage of total sales.] Also not conveyed is the fact that there is a strong correlation between geography, population density, racial composition, and SNAP EBT sales. The 2015 expansion to the most nearby stores also meant that it was an expansion to stores with high SNAP EBT sales in densely populated, African-American neighborhoods. The 2016 Double Up expansion was more explicit given that set of feasible stores substantially increases as one moves away from each node. Double Up stores were thus specifically selected not just by geographic proximity, but also by SNAP EBT sales ranking and demographic compositions similar to the initial 2014 stores.



<div class="figure" style="text-align: center">
<img src="figures/expansion-v.png" alt="Example expansion over time from 2014 to 2016 (top to bottom) using fake data. Blue dots denote stores with Double Up, pink dots denote without. Gray sectors denote higher population density. The initial nodes can be seen in the top (2014) frame." width="2160" />
<p class="caption">(\#fig:dufb-expansion)Example expansion over time from 2014 to 2016 (top to bottom) using fake data. Blue dots denote stores with Double Up, pink dots denote without. Gray sectors denote higher population density. The initial nodes can be seen in the top (2014) frame.</p>
</div>

<!--chapter:end:01.31-expansion.Rmd-->



### Selection of Control Stores {-}

Ideally, all remaining stores would have been available to use as a control group but the company only approved that data be released for 15 stores. This left the added---and incredibly important---step of selecting the control stores since the company approved, but did not explicitly select, the 15 stores.

Selecting the control stores proceeded in two steps. First, stores that either self-selected or were selected using some unobservable criteria were matched using *Coarsened Exact Matching* (CEM) [@iacus_causal_2011]. Second, stores assigned Double Up were pooled with nearby control stores and then scored using a linear probability model. Each step is explained in detail.

#### Step 1: Coarsened Exact Matching {-}

The 6 stores classified as `self-selected` or `unobserved` (stores `12` through `17`; see Table \@ref(tab:store-class)) were compared against all possible control stores for matches. Matching was done across 5 dimensions: race, income, population density, store attributes, store EBT sales. One variable per dimension was selected: percentage of population that is African-American (zip code level); people per square mile (zip code level); median income for people who have received SNAP or similar assistance (zip code level); the number of associates employed in each store; and the percentage of total stores sales attributed to EBT/SNAP.

Of the 6 stores (stores `12` - `17`), only 3 produced viable matches. However, each of the 3 matched stores had matched to more than one control stores. The closest stores, by driving distance, were selected as the tie-breaker for each matched store. Stores were sufficiently far apart, with very sparsely populated areas between, that "spill-over" was considered unlikely. That is, it is considered unlikely that a shopper near a store without Double Up would opt to drive 30 or more minutes to shop at the store *with* Double Up.

This left 12 stores to be allotted to the control group and 3 treatment stores to be effectively discarded.


#### Step 2: Scoring via Linear Probability Model {-}

Assignment to treatment and control can be perfectly determined since we know and observe the criteria used for assignment: geographic distance from an initial store (node), SNAP EBT sales rank, and demographics---specifically population density and percentage African-American. A scoring function was created by fitting a linear probability model to all stores within 140 kilometers of the two initial pilot stores.

$$
\begin{aligned}
  \bm{s}  &= \widehat{P(\mathbf{D} = 1 | \bm{X}, \bm{N})} \\
          &= \mathbf{X} \bm{\hat \beta} + \hat \alpha \mathbf{N} + \left (\mathbf{X} \odot \mathbf{N} \right ) \bm{\hat \gamma}
\end{aligned}
$$

$\bm{s}$ are the fitted values of the estimated linear probability model; $\mathbf{D} \in \{0,1 \}$ is a $n \times 1$ vector of store assignments to Double Up; $\mathbf{X}$ is an $n \times k$ matrix of normalized observable covariates that determine assignment; $\mathbf{N} \in \{0, 1 \}$ is an $n \times 1$ dummy vector denoting the closest pilot store aka "Node", where $0$ is `Node 0` and $1$ is `Node 1`. $\odot$ represents element-wise multiplication aka "Hadamard product".

Stores were sorted by the fitted values of the model, $\bm{s}$. There is perfect separation between Double Up stores and those without (see Figure \@ref(fig:score-plot)). Therefore, the top 11 stores by score value are all Double Up stores. The next 12 stores by score value are then allotted to the control group.

<div class="figure">
<img src="noriega-prospectus-draft_files/figure-html/score-plot-1.png" alt="Store Score vs Double Up Assignment"  />
<p class="caption">(\#fig:score-plot)Store Score vs Double Up Assignment</p>
</div>

<!--chapter:end:01.32-store-selection.Rmd-->


## Methods {#methods-1}

Empirical methods will vary by groups of stores.

<!--chapter:end:01.40-methods.Rmd-->


# References {#references}

<!--chapter:end:01.60-references.Rmd-->
