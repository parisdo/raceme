-- Race data per area
SELECT "Area" AS area, "Race" AS race, SUM("Population") AS population
FROM cogs121_16_raw.hhsa_san_diego_demographics_county_popul_by_race_2012_norm
GROUP BY "Area", "Race"
ORDER BY "Area" ASC, "Race" ASC

-- Total mood disorders
SELECT SUM(cast("Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_mood_disorders_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'

-- Mood disorders by year
SELECT "Year", SUM(cast("Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_mood_disorders_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'
GROUP BY "Year"

-- AVG hospitalization rate per race per year for Mood
SELECT "Year" AS year, "Race" AS race, AVG(cast("Hospitalization Rate" as float)) AS rate
FROM cogs121_16_raw.hhsa_mood_disorders_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'
GROUP BY "Year", "Race"
ORDER BY "Year" ASC, "Race" ASC

-- Total hospitalization number per race per year for Mood
SELECT "Year" AS year, "Race" AS race, SUM(cast("Hospitalization No." as float)) AS rate
FROM cogs121_16_raw.hhsa_mood_disorders_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'
GROUP BY "Year", "Race"
ORDER BY "Year" ASC, "Race" ASC

-- Total people with anxiety
SELECT SUM(cast("Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_anxiety_disorder_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'

-- Anxiety by year
SELECT "Year", SUM(cast("Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_anxiety_disorder_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'
GROUP BY "Year"

-- AVG hospitalization rate per race per year for anxiety
SELECT "Year" AS year, "Race" AS race, AVG(cast("Hospitalization Rate" as float)) AS rate
FROM cogs121_16_raw.hhsa_anxiety_disorder_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'
GROUP BY "Year", "Race"
ORDER BY "Year" ASC, "Race" ASC

-- Total hospitalization number per race per year for anxiety
SELECT "Year" AS year, "Race" AS race, SUM(cast("Hospitalization No." as float)) AS rate
FROM cogs121_16_raw.hhsa_anxiety_disorder_by_race_2010_2012
WHERE "Hospitalization Rate" <> '§' AND "Hospitalization Rate" <> '‐‐‐'
GROUP BY "Year", "Race"
ORDER BY "Year" ASC, "Race" ASC

-- Total people with schizophrenia
SELECT SUM(cast("2010 Hospitalization No." as float)) + SUM(cast("2011 Hospitalization No." as float)) + SUM(cast("2012 Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2010 Hospitalization Rate" <> '§' AND "2010 Hospitalization Rate" <> '‐‐‐'
AND "2011 Hospitalization Rate" <> '§' AND "2011 Hospitalization Rate" <> '‐‐‐'
AND "2012 Hospitalization Rate" <> '§' AND "2012 Hospitalization Rate" <> '‐‐‐'

-- Total people with schizophrenia in 2010
SELECT SUM(cast("2010 Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2010 Hospitalization Rate" <> '§' AND "2010 Hospitalization Rate" <> '‐‐‐'

-- Hospitalization number for schizophrenia by year by race
SELECT '2010' AS year, 'White' AS race, SUM(cast("2010 White Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2010 White Hospitalization Rate" <> '§' AND "2010 White Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2010' AS year, 'Black' AS race, SUM(cast("2010 Black Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2010 Black Hospitalization Rate" <> '§' AND "2010 Black Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2010' AS year, 'Hispanic' AS race, SUM(cast("2010 Hispanic Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2010 Hispanic Hospitalization Rate" <> '§' AND "2010 Hispanic Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2010' AS year, 'API' AS race, SUM(cast("2010 API Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2010 API Hospitalization Rate" <> '§' AND "2010 API Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2010' AS year, 'Other' AS race, SUM(cast("2010 Other Race Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2010 Other Race Hospitalization Rate" <> '§' AND "2010 Other Race Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2011' AS year, 'White' AS race, SUM(cast("2011 White Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2011 White Hospitalization Rate" <> '§' AND "2011 White Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2011' AS year, 'Black' AS race, SUM(cast("2011 Black Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2011 Black Hospitalization Rate" <> '§' AND "2011 Black Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2011' AS year, 'Hispanic' AS race, SUM(cast("2011 Hispanic Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2011 Hispanic Hospitalization Rate" <> '§' AND "2011 Hispanic Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2011' AS year, 'API' AS race, SUM(cast("2011 API Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2011 API Hospitalization Rate" <> '§' AND "2011 API Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2011' AS year, 'Other' AS race, SUM(cast("2011 Other Race Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2011 Other Race Hospitalization Rate" <> '§' AND "2011 Other Race Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2012' AS year, 'White' AS race, SUM(cast("2012 White Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2012 White Hospitalization Rate" <> '§' AND "2012 White Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2012' AS year, 'Black' AS race, SUM(cast("2012 Black Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2012 Black Hospitalization Rate" <> '§' AND "2012 Black Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2012' AS year, 'Hispanic' AS race, SUM(cast("2012 Hispanic Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2012 Hispanic Hospitalization Rate" <> '§' AND "2012 Hispanic Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2012' AS year, 'API' AS race, SUM(cast("2012 API Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2012 API Hospitalization Rate" <> '§' AND "2012 API Hospitalization Rate" <> '‐‐‐'
UNION
SELECT '2012' AS year, 'Other' AS race, SUM(cast("2012 Other Race Hospitalization No." as float)) AS total
FROM cogs121_16_raw.hhsa_schizophrenia_and_other_psychotic_disorders_2010_2012
WHERE "2012 Other Race Hospitalization Rate" <> '§' AND "2012 Other Race Hospitalization Rate" <> '‐‐‐'
ORDER BY year ASC, race ASC
