# **Texas COVID Vaccine Data** 
---
This dataset was created to give users the ability to examine Texas' COVID vaccine allotment progress, which is an ongoing process. The data will be updated on a weekly basis, and aggregated in the *aggregate.csv* file. Data is aggregated from data published by the Texas DSHS - [DSHS' website with weekly vaccine allocation reports](https://www.dshs.texas.gov/coronavirus/immunize/vaccine.aspx). The raw data, published in .pdf format, is available from the raw folder. 

**NOTE**: new data is provided once weekly, on Tuesday, by the Texas DSHS and converted from pdf to csv. Specific data for vaccine by manufacturer has been omitted, but can be determined easily; allotments ending in "00" are Moderna. 

## Data File Descriptions

This datasets primary purpose is to be used in tracking, visualizing, and projecting Texas' progress in distributing vaccines within counties.

### IDs - aggregate.csv

* `Provider_name`: Name of a given provider that has recroded receiving an allotment of vaccines to the Texas DSHS.
* `Address`: Address of the given provider, if available.
* `County`: County that the given provider is located in.
* `City`: City that the given provider is located in.
* `Doses_Wn`: Number of doses received in a weekly allotment for the given provider (a new Doses_Wn column is added weekly, where n is the week number).
* `Sum`: Sum of the total number of vaccines received for a given provider.

## Intended Uses

We intend on making this web application available to the general populace, giving them the ability to easily locate the nearest location offering vaccines, with the given weekly vaccine allotment and previous weekly data, along with aggregate weekly allotment data.

## Acknowledgments

* [Texas DSHS](https://dshs.texas.gov/)

## Contributors 
- Nicolas Jacobs
- Hanad Hassan
