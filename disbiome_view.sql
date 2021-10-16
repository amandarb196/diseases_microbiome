use disbiome;

create view disbiome_view as 
select disease_name, disease_id, meddra_level, meddra_id, location_id, organism_name, control_value, control_name,organism_id, sample_name,organism_ncbi_id,subject_value, ratio, host_id,host_type, count(disease_id) as num_publications
from disbiome_og
group by disease_name, disease_id, meddra_level, meddra_id,location_id, organism_name, control_value, control_name, organism_id, sample_name,organism_ncbi_id, subject_value, ratio, host_id, host_type
order by num_publications DESC;