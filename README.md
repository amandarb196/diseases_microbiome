Exploring the Links between Diseases and the Human Microbiome 

Authors: Amanda Bell, Jacqueline Daniel, Vivek Kanpa, and Zoe Morris

Northeastern University, Boston, MA, USA

Abstract

Our goal for this project was to explore how varying levels of bacteria in the human microbiome are linked to different diseases. We sourced a dataset of publications linking diseases to microbes, mostly bacteria, in the human microbiome from Disbiome, and imported it into mySQL where we created several views of the data. Using these views, we created a graph database with Neo4j which allowed us to query and visualize the connections in the data to answer questions about bacterial links between diseases and trends across bacterial levels in the microbiome. 

Introduction

The human microbiome is composed of many different microbes including bacterial, fungal, and protozoan species that contribute to digestion and viral immunity. Beyond these widely recognized roles, the bacteria in the microbiome also affect our health through production of neurotransmitters that influence neurological health, production of micro-proteins that interact with our cellular processes, and interaction with the medications, and especially the antibiotics, that we take. With our microbiome so highly interwoven with our everyday functioning, it's not surprising that the diversity and population levels of our microbiome is extremely important to our health, and malfunctions in their normal function can have serious implications. Elevated or reduced presence of microorganisms in the body are linked with numerous diseases of metabolism, cognition, and immune infection. Thus, understanding the levels of our microbiome in our bodies can better inform treatment of diseases, reveal novel connections between diseases, and create explanations behind poorly understood conditions.

These relationships between microbes, diseases, and the papers that studied them are frequently represented in relational models for ease of access and universality. However, a graphical representation could lend insight into the dynamic nature of disease pathogenicity and disorders that share the same relationship with fluctuations in the microbiome. 

Data Sources and Methods

To better understand these relationships in a graph network, we used the Disbiome® dataset. Disbiome is a relational database documenting fluctuations in microbial composition in different infectious and non-infectious diseases. In the data set we downloaded, every row is a publication, and the columns include lots of information including -- most importantly for our project the disease and organism linked, the qualitative outcome of the relationship (whether the microbes levels were elevated or lowered in the diseased subjects). 


Database Design

In our graph database, diseases, organisms, and hosts are nodes, with organisms and diseases being associated with one another through publications, and organisms living in hosts. 

Conclusions

Regarding Covid-19 data found in the Disbiome dataset, there appears to be a number of bacteria associated with the disease. For example a publication cited an association between Covid-19 and streptococcus, a bacteria that can lead to infections like strep throat and pneumonia. Through some outside research, there are many publications which have researched the coinfection of Covid-19 and streptococcal pneumonia including medical journals like Hindawi [2] and The Lancet [3]. Another interesting finding in our database was other diseases associated with the bacteria linked to Covid-19. These diseases include colorectal cancer, kidney disease, and acute lymphoblastic leukemia. It is interesting to explore these relationships since all of these diseases affect different parts of the body, but are connected through the common bacteria they are associated with.

The Disbiome dataset is also unique because it includes different variations of diabetes beyond just type 1 and type 2, for instance, prediabetes and gestational diabetes. Exploring these publications, we found over 300 bacteria associated with different types of diabetes. Looking closer into these relationships, there was one bacterium that shared a connection with 4 of the types of diabetes in the dataset. Prevotella, a bacterium usually found in the gut microbiome or orally, was associated with type 1 diabetes, type 2 diabetes, maturity-onset diabetes of the young type 2, and gestational diabetes and hyperlipidemia.

One important group of diseases in the Disbiome dataset is the neurodegenerative diseases which include Alzheimer’s Disease, Parkinson’s Disease, ALS, and Multiple Sclerosis. We found that these 4 diseases share connections to 6 bacteria typically found in the human gut microbiome suggesting a link between neurodegenerative diseases and the gut microbiome. An imbalance in two groups of bacteria in the gut (dysbiosis) produces inflammatory molecules that increase the permeability of the blood brain barrier and allow harmful proteins to accumulate in the brain leading to neurodegeneration [4].

Considering the significant impact that the microbiome has on our overall health and the development of diseases, addressing dysbiosis could treat some of these diseases. Some suggestions for treating gut dysbiosis have been changing diet by adding pre and probiotics, fecal microbiota transplantation, bacterial consortium transplantation, phage therapy, and predatory bacteria [1]. While some of these treatments need further study before routine use, they offer great potential in treating gut microbiome imbalances.

Author Contributions
We all worked together to come up with our project idea, finding the data set, and creating the presentation. Jacqueline imported the data into mySQL and created the views, wrote the cypher query to pull the data into Neo4j, and wrote the two queries looking at links between mental health disorders and bacteria. In the final report, Jacqueline wrote the abstract, introduction, and the data sources and methods sections. Zoe wrote the two queries relating to Covid-19 data, and the query relating to bacteria associations with diabetes. Zoe also wrote the first half of the conclusions in the final report. Amanda wrote SQL queries looking at the most studied bacteria and diseases in the data set as well as neo4j queries for the neurodegenerative diseases and cardiovascular diseases. For the final report, Amanda wrote the second half of the conclusions. Vivek created the logical diagram and documented our draft ideas in the preliminary project proposal. He also wrote the queries regarding cancer associations as well as the database design section of the final report.

References

1.	Antonella Gagliardi et. al, “Rebuilding the Gut Microbiota Ecosystem”, Int J Environ Res Public Health, vol. 15, 2018. https://doi.org/10.3390/ijerph15081679
2.	Chaitanya Pal, Paulina Przydzial, Ogechukwu Chika-Nwosuh, Shrey Shah, Pratik Patel, Nikhil Madan, "Streptococcus pneumoniae Coinfection in COVID-19: A Series of Three Cases'', Case Reports in Pulmonology, vol. 2020, Article ID 8849068, 3 pages, 2020. https://doi.org/10.1155/2020/8849068
3.	Michael J. Cox, Nicholas Loman, Debby Bogaert, Justin O’Grady, “Co-infections: potentially lethal and unexplored in Covid-19”, 2020. https://doi.org/10.1016/S2666-5247(20)30009-4
4.	Suparna Roy Sarkar, Sugato Banerjee, “Gut microbiota in neurodegenerative disorders”, Journal of Neuroimmunology, vol. 328, 2019. https://doi.org/10.1016/j.jneuroim.2019.01.004
