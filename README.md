#  India Air Quality Analysis (2015-2023)

##  Problem Statement
India's rapid urbanization and industrial growth have led to alarming levels of air pollution across major cities. This project analyzes 9 years of daily AQI data across 8 major Indian cities to identify pollution trends, seasonal patterns, COVID lockdown impact and dominant pollutants.

 Cities Covered
City | Region | Avg AQI | Category 
Delhi | North | 217 | Poor 
Lucknow | North | 181 | Moderate 
Ahmedabad | West | 134 | Moderate 
Pune | West | 109 | Moderate 
Mumbai | West | 108 | Moderate 
Hyderabad | South | 91 | Satisfactory 
Chennai | South | 86 | Satisfactory 
Bengaluru | South | 75 | Satisfactory 


##  Data Information
Detail  Info 
Source : CPCB — Government of India 
Period : May 2015 to December 2023 
Records : 23,665 daily observations 
Cities : 8 major Indian cities 


## Tools Used
Tool : Purpose 
Python (Pandas) : Data cleaning and analysis 
Matplotlib & Seaborn : Data visualization 
MySQL : Data querying 
Power BI : Interactive dashboard 


##  Key Findings

### Finding 1 — City Rankings
- Delhi is the most polluted city — Avg AQI **217**
- Bengaluru is the cleanest city — Avg AQI **75**
- North Indian cities are 3x more polluted than 
  South Indian cities

### Finding 2 — Yearly Trends
- Lucknow showed biggest improvement — dropped from 
  227 (2016) to 127 (2023)
- Delhi improved slightly from 229 (2015) to 203 (2023)
  but still remains in Poor category

### Finding 3 — Seasonal Patterns
- **Winter** is the worst season across all cities
- **Monsoon** is the cleanest season — rain washes pollution
- **December** is the single worst month — Avg AQI 178

### Finding 4 — COVID Lockdown Impact
City | 2019 AQI | 2020 AQI | Improvement 
Delhi | 213 | 121 | 43% cleaner 
Lucknow | 191 | 106 | 44% cleaner 
Bengaluru | 107 | 58 | 46% cleaner 
Hyderabad | 102 | 69 | 32% cleaner 
Mumbai | 91 | 63 | 31% cleaner 
Chennai | 82 | 53 | 36% cleaner 
Pune | 95 | 60 | 37% cleaner 
Ahmedabad | 162 | 129 | 20% cleaner 

. Every city showed 20-46% improvement during lockdown
. proving human activity is the primary driver of pollution

### Finding 5 — Dominant Pollutants
- **PM2.5** is most common pollutant overall
- Delhi dominated by **PM10** — construction dust
- Chennai and Bengaluru dominated by **CO** — vehicles

### Finding 6 — Good Days vs Bad Days
City | Good Days | Severe Days 
Delhi | 14 | 147 
Lucknow | 119 | 43 
Ahmedabad | 49 | 3 
Mumbai | 342 | 0 
Pune | 93 | 1 
Chennai | 335 | 0 
Hyderabad | 561 | 0 
Bengaluru | 632 | 0 

## Conclusions
1 North India suffers significantly worse air quality than South India
2 COVID lockdown proved cities can recover quickly when human emissions reduce
3 Winter months need urgent policy intervention
4 PM2.5 dominates most cities — vehicles and industries are primary sources
5 Delhi had only 14 Good days in 9 years less than 2 good days per year


### Final Thought
"This analysis proves that air pollution in Indian cities is largely man-made. The dramatic improvement seen during COVID lockdown shows that with the right policies and reduced emissions, Indian cities can breathe clean air again."


## Author
**Chintakindi Jasnavi**
Email: chintakindijasnavi@gmail.com
LinkedIn: your linkedin link here
GitHub: https://github.com/chintakindijasnavi-sudo/India-Air-Quality-Analysis/edit/main/README.md
