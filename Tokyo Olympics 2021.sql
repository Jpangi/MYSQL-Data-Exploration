SELECT *
FROM Tokyo_Olympics.medals

# Changing NOC column to Team
ALTER TABLE medals RENAME COLUMN NOC TO Team;
ALTER TABLE athletes RENAME COLUMN NOC TO Team;

---------------------------------------------------------------------------
# Determining which Country won the most golds

SELECT Team, Gold
FROM Tokyo_Olympics.medals
order by Gold DESC
# Here we can see that the United States has the most gold medals with 39 


# Total Medals vs Golds

SELECT Team, Gold, Total, (Gold/Total)*100 AS GoldPercentage
FROM Tokyo_Olympics.medals
ORDER BY GoldPercentage DESC



# Joining Olympics table to Medals table
SELECT *
FROM Tokyo_Olympics.olympics

SELECT *
FROM Tokyo_Olympics.medals
JOIN Tokyo_Olympics.olympics ON medals.Team=olympics.Team;

# Total Athletes vs Total Medals
SELECT medals.Team, medals.Total, olympics.TotalAthletes, (medals.Total/olympics.TotalAthletes)*100 AS AthletePerMedal
FROM Tokyo_Olympics.medals
JOIN Tokyo_Olympics.olympics ON medals.Team=olympics.Team
ORDER BY AthletePerMedal DESC








---------------------------------------------------------------------------

