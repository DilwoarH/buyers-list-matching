DROP VIEW IF EXISTS gov_orgs;

CREATE VIEW gov_orgs AS
SELECT concat('government-service:', "government-service"."government-service") AS key,
    "government-service".hostname AS name,
    regexp_replace(LOWER(replace("government-service".hostname, 'and', '')), '[^\w]+','', 'g') AS "normalize_name"
   FROM "government-service"
UNION
 SELECT concat('government-organisation:', "government-organisation"."government-organisation") AS key,
    "government-organisation".name,
    regexp_replace(LOWER(replace("government-organisation".name, 'and', '')), '[^\w]+','', 'g') AS "normalize_name"
    FROM "government-organisation"
UNION
 SELECT concat('local-authority-eng:', "local-authority-eng"."local-authority-eng") AS key,
    "local-authority-eng".name,
    regexp_replace(LOWER(replace("local-authority-eng".name, 'and', '')), '[^\w]+','', 'g') AS "normalize_name"
   FROM "local-authority-eng"
UNION
 SELECT concat('local-authority-sct:', "local-authority-sct"."local-authority-sct") AS key,
    "local-authority-sct".name,
    regexp_replace(LOWER(replace("local-authority-sct".name, 'and', '')), '[^\w]+','', 'g') AS "normalize_name"
   FROM "local-authority-sct"
UNION
 SELECT concat('local-authority-nir:', "local-authority-nir"."local-authority-nir") AS key,
    "local-authority-nir".name,
    regexp_replace(LOWER(replace("local-authority-nir".name, 'and', '')), '[^\w]+','', 'g') AS "normalize_name"
   FROM "local-authority-nir"
UNION
 SELECT concat('principal-local-authority:', "principal-local-authority"."principal-local-authority") AS key,
    "principal-local-authority".name,
    regexp_replace(LOWER(replace("principal-local-authority".name, 'and', '')), '[^\w]+','', 'g') AS "normalize_name"
   FROM "principal-local-authority"
UNION
 SELECT concat('internal-drainage-board:', "internal-drainage-board"."internal-drainage-board") AS key,
    "internal-drainage-board".name,
    regexp_replace(LOWER(replace("internal-drainage-board".name, 'and', '')), '[^\w]+','', 'g') AS "normalize_name"
   FROM "internal-drainage-board";