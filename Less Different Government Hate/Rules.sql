/*
	Makes the AI hate less on for having different governments
	by Cameron Probert (2016)

	Unsure exactly how these values affect the relation. These may be only for specific agendas, rather than general AI.
	I have lowered the values slightly to test it out.
*/
 

-----------------------------------------------
-- AI talk rates
-----------------------------------------------

-- Set the multiplicative amount for having different governments
-- Original value = 2
UPDATE ModifierArguments 
	SET AGENDA_ADJUST_GOVERNMENT_INTOLERANCE = 1
	WHERE Name = IntoleranceMultiplier;

-- Set the flat amount for being in the same era
-- Original value = -6
UPDATE ModifierArguments 
	SET AGENDA_ADJUST_GOVERNMENT_INTOLERANCE = -4
	WHERE Name = SameEraIntoleranceFlatBonus;
