# BIOST 515/518: Homework 4
#### Instructor:  Amy Willis

## Instructions

Submit your responses to the below questions as a single pdf file to Canvas. As in previous homeworks, your
responses should have two sections:

1. “Responses”, where you respond to the questions, using figures and tables where appropriate.
2. “Code”, an appendix containing code used to run your analyses and support your responses.

You are welcome to use the homework submission template (Files → Homeworks → submission-template.Rmd)
to prepare your responses, but this is not mandatory.

Please note that credit will not be given for code and raw software output. Instead, you should use software
to run analyses and prepare tables, figures, and/or other summaries of results as appropriate.

Please thoughtfully organize your homework and answer in full sentences using professional, scientific writing.
Tables and numeric information should be appropriate for inclusion in a scientific report, with appropriate
rounding, and figures should be polished (e.g., with axes labelled and legends included). Please review the
published homeworks keys for both content and style.

A key purpose of this homework (and all homeworks) is to work on Learning Goal #4: Practice explaining our
models and their interpretations to both statistical and non-statistical audiences, so please use this opportunity
to practice communicating clearly and justifying your scientific and statistical work.

## Scientific Background

Researchers at General Motors collected data on 60 U.S. Standard Metropolitan Statistical Areas (SMSA’s) in
a study of whether air pollution contributes to mortality. The data include variables measuring demographic
characteristics of the cities, variables measuring climate characteristics, and variables recording the pollution
potential of three different air pollutants, as well as age-adjusted-mortality (called Mortality). The dataset
and a description of the variables are available under Resouces →Datasets under smsa.csv and smsa.pdf.

## Questions
1. In this homework, we will be investigating the association between age-adjusted-mortality (also known as
age-standardized mortality) and pollutants in the air. Research the definition of age-adjusted-mortality
and summarise your findings in 1-2 sentences of your own words.
2. Plot age-adjusted mortality against log(NOx) and comment on trends that you see.
3. Fit a simple linear regression model with log(NOx) as the predictor and age-adjusted mortality as the
response. In language suitable for publication in a scientific journal, perform inference on the coefficients
in your model and interpret their estimates.
Your scientific collaborator informs you whether or not a city is “low rainfall” may be an important variable
to consider in your analysis, where “low rainfall” is defined to be under 20 inches of rain per year.
4. Plot age-adjusted mortality against log(NOx) again, but now use different symbols or colors to distinguish
cities with low rainfall from those that do not have low rainfall. Do you think that rainfall could be a
precision variable, confounder, effect modifier, or none of the above? Justify your reasoning.
5. Based on your reasoning above, fit an appropriate multiple linear regression model for age-adjusted
mortality. Write out your fitted model, and interpret the estimated parameters of your model. (You do
not need to perform full inference in this question.)
6. Summarise your findings about the relationship between log(NOx), rainfall and mortality in language
suitable for a scientific publication.
7. Would you conclude that there is a causal effect of nitrous oxide pollution on mortality? Why/why not?
Now suppose that you are a consultant for two communities who are considering the impact of their NOx
levels on their cities’ mortality. One community is Los Angeles, CA, which gets about 13 inches of rainfall
per year. The other community is Seattle, WA, which gets about 37 inches of rainfall per year. You don’t
know the NOx levels of these communities – each community plans to measure NOx in the near future and
wants to be prepared for the implications of the results.
8. Using your above analysis as a guide, write a short paragraph for your Los Angeles clients summarising
your understanding of the connection between mortality and NOx as it may relate to their community.
9. Repeat Question 8, but this time for your Seattle clients.
