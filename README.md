# SPF

!["logo"](docs/src/assets/logo.png)

`SPF.jl` offers the possibility to download data from the [Survey of
Professional
Forecasters](https://www.philadelphiafed.org/research-and-data/real-time-center/survey-of-professional-forecasters/data-files)
(SPF) provided by the Federal Reserve Bank of Philadelphia.

## Installation

```@julia
] add https://github.com/markushhh/SPF.jl
```

## Usage

Load the package and retrieve the dataset.

```@julia
using SPF

survey = "NGDP"

df = get_additional_cpie10()
df = get_anxious_index()
df = get_individual(survey)
df = get_inflation(survey)
df = get_mean(survey, "level")
df = get_median(survey, "level")
get_dispersion(survey) # saves the file since there's multiple sheets in the excel file
get_microdata() # saves the file since there's multiple sheets in the excel file
get_prob() # saves the file since there's multiple sheets in the excel file
```
