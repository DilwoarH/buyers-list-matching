CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;

alter table buyers
drop column IF EXISTS "normalize_name";
alter table buyers
add column "normalize_name" text;
UPDATE buyers SET normalize_name = buyer_name;
UPDATE buyers
   set "normalize_name" = regexp_replace(replace(replace(replace(replace(replace(replace(replace(LOWER("normalize_name"), 'district council', ''), 'city council', ''), 'metropolitan borough council', ''), 'and', ''), 'council', ''), 'borough', ''), 'county', ''), '[^\w]+','', 'g');
SELECT buyer_corporate_identifier, buyer_name, gov_orgs.name,  registration_status
	FROM public.buyers
    left outer JOIN gov_orgs ON LEVENSHTEIN((buyers.normalize_name), gov_orgs.normalize_name) <= 1
    order by gov_orgs.name
