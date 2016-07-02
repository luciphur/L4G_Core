DELETE FROM `gameobject` WHERE `guid` IN (15184,15185,15186,15187,15188,15190,15191,15192,15193);
UPDATE `gameobject` SET `position_x`='-3012.455322', `position_y`='3965.02246', `position_z`='3.105790', `orientation`='1.4106' WHERE `guid` IN ('15183');
-- Skyguard Scout 22980
UPDATE `creature_template` SET `InhabitType`='5' WHERE `entry` IN ('22980');
-- different graveyard spawns on death in hellfire dungeons
UPDATE `game_graveyard_zone` SET `faction` = '67' WHERE `game_graveyard_zone`.`id` = 919 AND `game_graveyard_zone`.`ghost_zone` IN (3535,3562,3713,3836); -- 0
UPDATE `game_graveyard_zone` SET `faction` = '469' WHERE `game_graveyard_zone`.`id` = 920 AND `game_graveyard_zone`.`ghost_zone`IN (3535,3562,3713,3836); -- 0
--
-- Raven Hill "Duskwood" Waypoint paths
UPDATE `creature` SET `position_x`=-10731.4, `position_y`=337.138, `position_z`=38.4686, `orientation`=0.2883, MovementType=2 WHERE `guid`=4273;
UPDATE `creature` SET `position_x`=-10363.4, `position_y`=359.383, `position_z`=53.171, `orientation`=3.216594, MovementType=2 WHERE `guid`=5086;
UPDATE `creature` SET `position_x`=-10382.6, `position_y`=359.137, `position_z`=48.6547, `orientation`=2.87, MovementType=2 WHERE `guid`=5137;
UPDATE `creature` SET `position_x`=-10426.2, `position_y`=343.543, `position_z`=42.0242, `orientation`=1.657, MovementType=2  WHERE `guid`=5138;
UPDATE `creature_addon` SET `path_id`='42730' WHERE `guid` IN ('4273');
UPDATE `creature_addon` SET `path_id`='50860' WHERE `guid` IN ('5086');
UPDATE `creature_addon` SET `path_id`='51370' WHERE `guid` IN ('5137');
UPDATE `creature_addon` SET `path_id`='51380' WHERE `guid` IN ('5138');
DELETE FROM `waypoint_data` WHERE `id` IN (42730,50860,51370,51380);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
-- Jitters GUID 4273 Path
(42730,1,-10731.4,337.138,38.4686,0,0,0,100,0),
(42730,2,-10728.9,338.741,38.3614,3000,0,0,100,0),
(42730,3,-10728.8,341.545,38.2059,0,0,0,100,0),
(42730,4,-10731.1,343.704,38.0643,0,0,0,100,0),
(42730,5,-10733.9,343.634,38.0679,4000,0,0,100,0),
(42730,6,-10734.8,342.323,38.1034,0,0,0,100,0),
(42730,7,-10734.5,339.444,38.2702,0,0,0,100,0),
-- Mor'Ladim GUID 5086 Path
(50860,1,-10363.4,359.383,53.171,0,0,0,100,0),
(50860,2,-10371.7,338.914,48.4701,0,0,0,100,0),
(50860,3,-10361.1,322.492,48.2917,0,0,0,100,0),
(50860,4,-10358.1,289.67,39.8141,0,0,0,100,0),
(50860,5,-10378.5,277.855,37.5104,0,0,0,100,0),
(50860,6,-10407.3,284.497,40.8748,0,0,0,100,0),
(50860,7,-10450.9,248.557,32.4436,0,0,0,100,0),
(50860,8,-10465.8,265.495,32.4443,0,0,0,100,0),
(50860,9,-10449.3,288.402,36.5922,0,0,0,100,0),
(50860,10,-10474.8,298.544,34.4282,0,0,0,100,0),
(50860,11,-10482.9,321.214,33.1095,0,0,0,100,0),
(50860,12,-10466.8,331.526,35.6161,0,0,0,100,0),
(50860,13,-10447.1,331.333,40.5168,0,0,0,100,0),
(50860,14,-10428.2,321.36,40.9299,0,0,0,100,0),
(50860,15,-10393,317.033,41.0087,0,0,0,100,0),
(50860,16,-10391.8,331.272,42.8239,0,0,0,100,0),
(50860,17,-10395.2,338.253,43.6321,0,0,0,100,0),
(50860,18,-10420.1,333.926,42.7166,0,0,0,100,0),
(50860,19,-10445,352.519,40.6271,0,0,0,100,0),
(50860,20,-10422,387.013,45.0018,0,0,0,100,0),
(50860,21,-10388.9,383.009,46.9237,0,0,0,100,0),
-- Skeletal Raider GUID 5137 Path
(51370,1,-10382.6,359.137,48.6547,0,0,0,100,0),
(51370,2,-10396.6,362.309,45.7539,0,0,0,100,0),
(51370,3,-10405.8,349.167,44.0018,0,0,0,100,0),
(51370,4,-10407.4,324.846,41.3671,0,0,0,100,0),
(51370,5,-10410.6,311.263,39.3739,0,0,0,100,0),
(51370,6,-10453,285.726,36.1031,1000,0,0,100,0),
(51370,7,-10410.6,311.263,39.3739,0,0,0,100,0),
(51370,8,-10407.4,324.846,41.3671,0,0,0,100,0),
(51370,9,-10405.8,349.167,44.0018,0,0,0,100,0),
(51370,10,-10396.6,362.309,45.7539,0,0,0,100,0),
-- Skeletal Raider GUID 5138 Path
(51380,1,-10426.2,343.543,42.0242,1000,0,0,100,0),
(51380,2,-10428.5,328.338,41.4056,0,0,0,100,0),
(51380,3,-10433,320.714,41.2088,0,0,0,100,0),
(51380,4,-10433.5,314.481,40.3401,0,0,0,100,0),
(51380,5,-10446.2,326.655,40.4781,0,0,0,100,0),
(51380,6,-10453.9,359.494,41.1352,0,0,0,100,0),
(51380,7,-10446.2,326.655,40.4781,0,0,0,100,0),
(51380,8,-10433.5,314.481,40.3401,0,0,0,100,0),
(51380,9,-10433,320.714,41.2088,0,0,0,100,0),
(51380,10,-10428.5,328.338,41.4056,0,0,0,100,0);
--
-- SW City Patrol
UPDATE `creature_template` SET `faction_A`='12',`faction_H`='12' WHERE `entry` IN ('1976'); -- 35
--
-- Childrens Week Entry Quests dont Start without Childrens Week active
DELETE FROM `creature_questrelation` WHERE `quest` IN (172,1468,10942,10943,558,925);
DELETE FROM `game_event_quest_condition` WHERE `quest` IN (172,1468,10942,10943,558,925);
INSERT IGNORE INTO `game_event_creature_quest` VALUES
(14451,172,10),
(14450,1468,10),
(22819,10942,10),
(22819,10943,10),
(14305,558,10),
(14444,925,10);
--
-- Swamp of Sorrows NPC Paths
UPDATE `creature` SET `position_x`=-10425.5, `position_y`=-3174.65, `position_z`=22.5074, `orientation`=3.216594, MovementType=2 WHERE `guid`=31849;
UPDATE `creature` SET `position_x`=-10484.2, `position_y`=-3172.64, `position_z`=20.3722, `orientation`=6.267068, MovementType=2  WHERE `guid`=31852;
UPDATE `creature` SET `position_x`=-10483.4, `position_y`=-3097.73, `position_z`=20.4253, `orientation`=1.683445, MovementType=2  WHERE `guid`=38668;
UPDATE `creature` SET `position_x`=-10520.8, `position_y`=-3027.2, `position_z`=21.6311, `orientation`=1.436046, MovementType=2  WHERE `guid`=38885;
UPDATE `creature` SET `position_x`=-10460.3, `position_y`=-3241.88, `position_z`=20.9401, `orientation`=3.706006, MovementType=2  WHERE `guid`=32094;
UPDATE `creature` SET `position_x`=-10437.5, `position_y`=-3210.06, `position_z`=20.9154, `orientation`=1.36136, MovementType=2  WHERE `guid`=34155;
UPDATE `creature` SET `position_x`=-10391.9, `position_y`=-2620.49, `position_z`=40.4627, `orientation`=2.47065, MovementType=2  WHERE `guid`=37596;
UPDATE `creature` SET `position_x`=-10419.4, `position_y`=-2563.21, `position_z`=23.0921, `orientation`=2.47065, MovementType=2  WHERE `guid`=38923;
UPDATE `creature` SET `position_x`=-10390.5, `position_y`=-2693.75, `position_z`=21.6787, `orientation`=2.47065, MovementType=2  WHERE `guid`=38775;
UPDATE `creature` SET `position_x`=-10503.5, `position_y`=-3331.86, `position_z`=20.9633, `orientation`=2.47065, MovementType=2  WHERE `guid`=34152;
UPDATE `creature` SET `spawndist`=2, `MovementType`=1 WHERE `guid`=34148;
UPDATE `creature` SET `spawndist`=2, `MovementType`=1 WHERE `guid`=34153;

UPDATE `creature` SET `position_x`=-10000.3, `position_y`=-3495.59, `position_z`=23.9655, `orientation`=0.5354, MovementType=2 WHERE `guid`=38818;
UPDATE `creature` SET MovementType=2 WHERE `guid`=31851;
UPDATE `creature` SET MovementType=2 WHERE `guid`=31848;
UPDATE `creature` SET MovementType=2 WHERE `guid`=37598;
UPDATE `creature` SET MovementType=2 WHERE `guid`=38909;

UPDATE `creature_addon` SET `path_id`='318480' WHERE `guid` IN (31848);
UPDATE `creature_addon` SET `path_id`='318490' WHERE `guid` IN (31849);
UPDATE `creature_addon` SET `path_id`='318510' WHERE `guid` IN (31851);
UPDATE `creature_addon` SET `path_id`='318520' WHERE `guid` IN (31852);
UPDATE `creature_addon` SET `path_id`='320940' WHERE `guid` IN (32094);
UPDATE `creature_addon` SET `path_id`='341520' WHERE `guid` IN (34152);
UPDATE `creature_addon` SET `path_id`='341550' WHERE `guid` IN (34155);
UPDATE `creature_addon` SET `path_id`='375960' WHERE `guid` IN (37596);
UPDATE `creature_addon` SET `path_id`='375980' WHERE `guid` IN (37598);
UPDATE `creature_addon` SET `path_id`='386680' WHERE `guid` IN (38668); -- 967
UPDATE `creature_addon` SET `path_id`='387750' WHERE `guid` IN (38775);
UPDATE `creature_addon` SET `path_id`='388180' WHERE `guid` IN (38818);
UPDATE `creature_addon` SET `path_id`='388850' WHERE `guid` IN (38885);
UPDATE `creature_addon` SET `path_id`='389090' WHERE `guid` IN (38909);
UPDATE `creature_addon` SET `path_id`='389230' WHERE `guid` IN (38923);

DELETE FROM `waypoint_data` WHERE `id` IN (318480,318490,318510,318520,320940,341520,341550,375960,375980,386680,387750,388180,388850,389090,389230);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
-- Stonard Grunt GUID 31849 path
(318490,1,-10452.4,-3172.52,20.1837,1000,0,0,100,0),
(318490,2,-10427.4,-3174.21,22.1928,0,0,0,100,0),
(318490,3,-10417.8,-3181.02,21.9612,0,0,0,100,0),
(318490,4,-10418.5,-3184.67,21.3273,0,0,0,100,0),
(318490,5,-10415.9,-3184.84,21.8002,0,0,0,100,0),
(318490,6,-10408.7,-3193.67,22.7425,0,0,0,100,0),
(318490,7,-10407.4,-3197.35,22.6259,1000,0,0,100,0),
(318490,8,-10409.4,-3193.64,22.5693,0,0,0,100,0),
(318490,9,-10425.5,-3174.65,22.5074,0,0,0,100,0),
-- Stonard Grunt GUID 31852 path
(318520,1,-10464.4,-3171.79,20.1788,1000,0,0,100,0),
(318520,2,-10489.8,-3172.18,20.7322,0,0,0,100,0),
(318520,3,-10492.1,-3171.29,21.086,0,0,0,100,0),
(318520,4,-10495.9,-3175.74,20.8424,0,0,0,100,0),
(318520,5,-10500.9,-3177.22,21.7619,0,0,0,100,0),
(318520,6,-10505.2,-3182.28,22.0064,0,0,0,100,0),
(318520,7,-10506.6,-3186.64,22.1463,1000,0,0,100,0),
(318520,8,-10504.8,-3181.42,22.0066,0,0,0,100,0),
(318520,9,-10490.5,-3171.87,20.84,0,0,0,100,0),
(318520,10,-10487.5,-3171.77,20.6206,0,0,0,100,0),
(318520,11,-10484.2,-3172.64,20.3722,0,0,0,100,0),
-- Stonard Scout GUID 38668 Path
(386680,1,-10480.4,-3074.69,20.3978,0,0,0,100,0),
(386680,2,-10496.8,-3044.8,20.5641,0,0,0,100,0),
(386680,3,-10514.2,-3039.2,21.0957,0,0,0,100,0),
(386680,4,-10527.5,-3045.41,21.7844,0,0,0,100,0),
(386680,5,-10568.6,-3044.68,26.9059,1000,0,0,100,0),
(386680,6,-10527.5,-3045.41,21.7844,0,0,0,100,0),
(386680,7,-10514.2,-3039.2,21.0957,0,0,0,100,0),
(386680,8,-10496.8,-3044.8,20.5641,0,0,0,100,0),
(386680,9,-10480.4,-3074.69,20.3978,0,0,0,100,0),
(386680,10,-10483.4,-3097.73,20.4253,0,0,0,100,0),
(386680,11,-10480.1,-3122.09,20.2246,1000,0,0,100,0),
(386680,12,-10483.4,-3097.73,20.4253,0,0,0,100,0),
-- Stonard Scout GUID 38885 path
(388850,1,-10519.6,-3003.42,21.6777,0,0,0,100,0),
(388850,2,-10503.8,-2953.57,21.8131,0,0,0,100,0),
(388850,3,-10515.8,-2916.56,21.6794,0,0,0,100,0),
(388850,4,-10495.1,-2873.7,21.6698,0,0,0,100,0),
(388850,5,-10490.8,-2835.32,21.6777,0,0,0,100,0),
(388850,6,-10469.8,-2803.31,21.6779,0,0,0,100,0),
(388850,7,-10457.3,-2762.18,21.678,0,0,0,100,0),
(388850,8,-10422,-2736.38,21.679,0,0,0,100,0),
(388850,9,-10403,-2713.34,21.6783,0,0,0,100,0),
(388850,10,-10387,-2704.38,21.6783,0,0,0,100,0),
(388850,11,-10387,-2704.38,21.6783,0,0,0,100,0),
(388850,12,-10379.1,-2679.87,21.6793,1000,0,0,100,0),
(388850,13,-10387,-2704.38,21.6783,0,0,0,100,0),
(388850,14,-10387,-2704.38,21.6783,0,0,0,100,0),
(388850,15,-10403,-2713.34,21.6783,0,0,0,100,0),
(388850,16,-10422,-2736.38,21.679,0,0,0,100,0),
(388850,17,-10457.3,-2762.18,21.678,0,0,0,100,0),
(388850,18,-10469.8,-2803.31,21.6779,0,0,0,100,0),
(388850,19,-10490.8,-2835.32,21.6777,0,0,0,100,0),
(388850,20,-10495.1,-2873.7,21.6698,0,0,0,100,0),
(388850,21,-10515.8,-2916.56,21.6794,0,0,0,100,0),
(388850,22,-10503.8,-2953.57,21.8131,0,0,0,100,0),
(388850,23,-10519.6,-3003.42,21.6777,0,0,0,100,0),
(388850,24,-10520.8,-3027.2,21.7832,1000,0,0,100,0),
-- Stonard Orc GUID 32094 path
(320940,1,-10460.3,-3241.88,20.9401,570000,0,0,100,0),
(320940,2,-10457.98,-3240.7363,20.6035,0,0,0,100,0),
(320940,3,-10460.9,-3236.8,20.4671,0,0,0,100,0),
(320940,4,-10463.8,-3237.53,20.8388,0,0,0,100,0),
(320940,5,-10466,-3239.56,21.1552,0,0,0,100,0),
(320940,6,-10466.8,-3241.75,21.1706,450000,0,0,100,0),
(320940,7,-10468.3,-3241.88,21.2309,0,0,0,100,0),
(320940,8,-10463.5,-3214.73,20.2688,0,0,0,100,0),
(320940,9,-10470,-3210.27,20.8306,0,0,0,100,0),
(320940,10,-10472.8,-3208.5,20.6468,1000,0,0,100,0),
(320940,11,-10471.6533,-3208.86,20.7334,720000,0,0,100,0),
(320940,12,-10470.5244,-3213.38,20.0776,0,0,0,100,0),
(320940,13,-10461.578,-3221.8635,20.1795,0,0,0,100,0),
(320940,14,-10456.454,-3239.5593,20.3649,0,0,0,100,0),
-- Stonard Orc GUID 34155 path
(341550,1,-10437.5,-3210.06,20.9154,765000,0,0,100,0),
(341550,2,-10438.46875,-3215.5759,20.1967,0,0,0,100,0),
(341550,3,-10461.9922,-3212.8476,20.1787,0,0,0,100,0),
(341550,4,-10459.99,-3232.82,20.191,0,0,0,100,0),
(341550,5,-10442.36,-3260.41,20.179,0,0,0,100,0),
(341550,6,-10431.4345,-3267.9272,20.1792,160000,0,0,100,0),
(341550,7,-10413.6143,-3258.4644,20.179,75000,0,0,100,0),
(341550,8,-10416.0469,-3260.4799,20.1793,0,0,0,100,0),
(341550,9,-10406.2529,-3274.3821,20.1963,0,0,0,100,0),
(341550,10,-10408.9219,-3295.8586,20.1434,25000,0,0,100,0),
(341550,11,-10410.156,-3283.6426,20.537,0,0,0,100,0),
(341550,12,-10424.9854,-3285.1548,20.9037,0,0,0,100,0),
(341550,13,-10432.8975,-3289.6372,20.2385,0,0,0,100,0),
(341550,14,-10461.944,-3223.5786,20.1787,0,0,0,100,0),
(341550,15,-10461.0664,-3211.3076,20.1787,0,0,0,100,0),
(341550,16,-10451.125,-3211.23,20.814,0,0,0,100,0),
(341550,17,-10449.1084,-3213.5435,20.6667,0,0,0,100,0),
(341550,18,-10445.915,-3215.008,20.305,0,0,0,100,0),
(341550,19,-10438.407,-3214.8674,20.133,0,0,0,100,0),
-- Stonard Scout GUID 37596 path
(375960,1,-10391.9,-2620.49,40.4627,4000,0,0,100,0),
(375960,2,-10394.1,-2610.4,40.2005,0,0,0,100,0),
(375960,3,-10396.6,-2606.44,40.3285,0,0,0,100,0),
(375960,4,-10390.2,-2611.46,39.6823,0,0,0,100,0),
(375960,5,-10392.4,-2611.72,40.058,0,0,0,100,0),
-- Stonard Scout GUID 38923 path
(389230,1,-10419.4,-2563.21,23.0921,0,0,0,100,0),
(389230,2,-10424.2,-2530.11,25.135,0,0,0,100,0),
(389230,3,-10388.9,-2466.49,40.7913,0,0,0,100,0),
(389230,4,-10385.3,-2429.95,51.1637,1000,0,0,100,0),
(389230,5,-10388.9,-2466.49,40.7913,0,0,0,100,0),
(389230,6,-10424.2,-2530.11,25.135,0,0,0,100,0),
(389230,7,-10419.4,-2563.21,23.0921,0,0,0,100,0),
(389230,8,-10386.1,-2591.44,21.8886,0,0,0,100,0),
(389230,9,-10381.8,-2621.81,21.6804,0,0,0,100,0),
(389230,10,-10387.8,-2642.09,22.0817,1000,0,0,100,0),
(389230,11,-10381.8,-2621.81,21.6804,0,0,0,100,0),
(389230,12,-10386.1,-2591.44,21.8886,0,0,0,100,0),
-- Stonard Scout GUID 38775 path
(387750,1,-10390.5,-2693.75,21.6787,0,0,0,100,0),
(387750,2,-10455.2,-2764.38,21.6787,0,0,0,100,0),
(387750,3,-10470.6,-2796.2,21.6792,0,0,0,100,0),
(387750,4,-10495.5,-2835.86,21.6779,0,0,0,100,0),
(387750,5,-10500.9,-2876.34,21.6788,0,0,0,100,0),
(387750,6,-10514.7,-2899.7,21.6788,0,0,0,100,0),
(387750,7,-10518.6,-2920.17,21.6788,0,0,0,100,0),
(387750,8,-10509.7,-2945.89,21.7015,14000,0,0,100,0),
(387750,9,-10508.3,-2960.67,21.6775,0,0,0,100,0),
(387750,10,-10530.9,-3027.99,21.952,2000,1,0,100,0),
(387750,11,-10508.3,-2960.67,21.6775,0,0,0,100,0),
(387750,12,-10509.7,-2945.89,21.7015,0,0,0,100,0),
(387750,13,-10518.6,-2920.17,21.6788,0,0,0,100,0),
(387750,14,-10514.7,-2899.7,21.6788,0,0,0,100,0),
(387750,15,-10500.9,-2876.34,21.6788,0,0,0,100,0),
(387750,16,-10495.5,-2835.86,21.6779,0,0,0,100,0),
(387750,17,-10470.6,-2796.2,21.6792,0,0,0,100,0),
(387750,18,-10455.2,-2764.38,21.6787,0,0,0,100,0),
(387750,19,-10390.5,-2693.75,21.6787,0,0,0,100,0),
(387750,20,-10385.1,-2655.96,21.6786,1000,0,0,100,0),
-- Stonard Orc GUID 34152 path
(341520,1,-10503.5,-3331.86,20.9633,510000,0,0,100,0),
(341520,2,-10500.3,-3331.19,21.0778,0,0,0,100,0),
(341520,3,-10470.7,-3353.71,20.1575,0,0,0,100,0),
(341520,4,-10446.4,-3354.27,20.6154,0,0,0,100,0),
(341520,5,-10436.8,-3340.57,20.6009,0,0,0,100,0),
(341520,6,-10432.7,-3306.4,21.3697,0,0,0,100,0),
(341520,7,-10423.1,-3304.64,20.5178,0,0,0,100,0),
(341520,8,-10416.2,-3288.14,21.0002,0,0,0,100,0),
(341520,9,-10407.2,-3287.57,20.1889,0,0,0,100,0),
(341520,10,-10407.5,-3298.94,20.3649,0,0,0,100,0),
(341520,11,-10407.4,-3307.82,18.0879,900000,0,0,100,0),
(341520,12,-10406.7,-3299.21,20.3655,0,0,0,100,0),
(341520,13,-10408.6,-3297.27,20.1429,0,0,0,100,0),
(341520,14,-10406.4,-3294.11,20.1429,0,0,0,100,0),
(341520,15,-10406.9,-3288.55,20.1826,0,0,0,100,0),
(341520,16,-10416.5,-3289.67,20.7744,0,0,0,100,0),
(341520,17,-10422.7,-3291.23,20.7715,0,0,0,100,0),
(341520,18,-10426.5,-3289.24,20.8402,0,0,0,100,0),
(341520,19,-10428.1,-3286.77,20.6793,0,0,0,100,0),
(341520,20,-10431.4,-3290.79,20.3598,65000,0,0,100,0),
(341520,21,-10444.4,-3284.67,20.1781,0,0,0,100,0),
(341520,22,-10449.7,-3288.41,20.4011,0,0,0,100,0),
(341520,23,-10453.9,-3287.53,20.8736,0,0,0,100,0),
(341520,24,-10457.5,-3288.92,20.7708,0,0,0,100,0),
(341520,25,-10462.8,-3290.69,20.8779,0,0,0,100,0),
(341520,26,-10460.4,-3294.52,20.1786,0,0,0,100,0),
(341520,27,-10458.5,-3294.18,20.2345,60000,0,0,100,0),
(341520,28,-10459.1,-3294.74,20.192,0,0,0,100,0),
(341520,29,-10461.2,-3293.97,20.245,0,0,0,100,0),
(341520,30,-10462.4,-3290.65,20.8414,0,0,0,100,0),
(341520,31,-10460,-3289.1,20.8555,0,0,0,100,0),
(341520,32,-10459.4,-3290.35,20.6094,0,0,0,100,0),
(341520,33,-10464.8,-3289.18,21.2775,0,0,0,100,0),
(341520,34,-10500.6,-3310.58,20.2237,0,0,0,100,0),
(341520,35,-10507.1,-3319.42,20.7454,0,0,0,100,0),
(341520,36,-10503,-3322.18,20.8119,0,0,0,100,0),
(341520,37,-10500.3,-3328.67,20.9459,0,0,0,100,0),
(341520,38,-10500.2,-3334.37,21.1902,0,0,0,100,0),
-- Curesed Lost One GUID 38909
(389090,1,-9934.69,-3629.63,21.717,0,0,0,100,0),
(389090,2,-9942.19,-3586.03,22.6941,0,0,0,100,0),
(389090,3,-9973.63,-3566.41,21.8488,0,0,0,100,0),
(389090,4,-9987.07,-3538.73,21.678,0,0,0,100,0),
(389090,5,-10007.4,-3514.63,21.7355,0,0,0,100,0),
(389090,6,-10006,-3496.35,21.9784,0,0,0,100,0),
(389090,7,-10007.4,-3514.63,21.7355,0,0,0,100,0),
(389090,8,-9987.07,-3538.73,21.678,0,0,0,100,0),
(389090,9,-9973.63,-3566.41,21.8488,0,0,0,100,0),
(389090,10,-9942.19,-3586.03,22.6941,0,0,0,100,0),
(389090,11,-9934.69,-3629.63,21.717,0,0,0,100,0),
(389090,12,-9913.24,-3645.72,21.7146,0,0,0,100,0),
(389090,13,-9934.69,-3629.63,21.717,0,0,0,100,0),
-- Stonard Explorer GUID 38818
(388180,1,-10000.3,-3495.59,23.9655,8000,0,0,100,0),
(388180,2,-10004.4,-3500.38,21.6961,0,0,0,100,0),
(388180,3,-10004.1,-3517.33,22.0449,0,0,0,100,0),
(388180,4,-10005.7,-3523.75,21.8628,0,0,0,100,0),
(388180,5,-10006,-3530.41,22.3139,0,0,0,100,0),
(388180,6,-10004,-3536.64,22.6821,0,0,0,100,0),
(388180,7,-10000.4,-3538,22.8343,6000,0,0,100,0),
(388180,8,-10081.9,-3469.97,19.4853,0,0,0,100,0),
(388180,9,-10068,-3467.75,20.7867,0,0,0,100,0),
(388180,10,-10046.1,-3483.93,21.679,0,0,0,100,0),
(388180,11,-10031,-3489.68,22.5961,0,0,0,100,0),
(388180,12,-10017,-3488.71,21.9907,0,0,0,100,0),
(388180,13,-10002.9,-3498.57,21.6985,0,0,0,100,0),
-- Stonard Explorer GUID 37598
(375980,1,-9757.36,-3981,21.4203,0,0,0,100,0),
(375980,2,-9770.47,-4022.24,17.9035,0,0,0,100,0),
(375980,3,-9806.35,-4036.61,21.917,0,0,0,100,0),
(375980,4,-9835.41,-4067.53,21.5148,0,0,0,100,0),
(375980,5,-9836.09,-4087.16,19.5419,0,0,0,100,0),
(375980,6,-9856.39,-4094.3,21.3194,0,0,0,100,0),
(375980,7,-9874.42,-4113.06,19.5372,0,0,0,100,0),
(375980,8,-9894.43,-4131.98,19.9014,0,0,0,100,0),
(375980,9,-9906.47,-4134.66,22.1825,0,0,0,100,0),
(375980,10,-9915.88,-4124.07,22.4304,0,0,0,100,0),
(375980,11,-9931.51,-4132.8,22.0286,0,0,0,100,0),
(375980,12,-9999.95,-4198.47,22.0317,0,0,0,100,0),
(375980,13,-10039.8,-4174.94,21.831,0,0,0,100,0),
(375980,14,-10078.5,-4204.58,23.7493,0,0,0,100,0),
(375980,15,-10104.2,-4198.45,23.4494,0,0,0,100,0),
(375980,16,-10147.3,-4269.78,21.7071,0,0,0,100,0),
(375980,17,-10178.2,-4287.6,23.2375,0,0,0,100,0),
(375980,18,-10207.5,-4285.36,23.2989,0,0,0,100,0),
(375980,19,-10273.9,-4312.62,23.5161,0,0,0,100,0),
(375980,20,-10298.7,-4336.92,20.2475,0,0,0,100,0),
(375980,21,-10343.4,-4317.38,23.4357,0,0,0,100,0),
(375980,22,-10361.6,-4336.03,21.843,0,0,0,100,0),
(375980,23,-10394.3,-4312.68,22.9371,0,0,0,100,0),
(375980,24,-9735.62,-3947.98,21.2061,0,0,0,100,0),
(375980,25,-10394.3,-4312.68,22.9371,0,0,0,100,0),
(375980,26,-10361.6,-4336.03,21.843,0,0,0,100,0),
(375980,27,-10343.4,-4317.38,23.4357,0,0,0,100,0),
(375980,28,-10298.7,-4336.92,20.2475,0,0,0,100,0),
(375980,29,-10273.9,-4312.62,23.5161,0,0,0,100,0),
(375980,30,-10207.5,-4285.36,23.2989,0,0,0,100,0),
(375980,31,-10178.2,-4287.6,23.2375,0,0,0,100,0),
(375980,32,-10147.3,-4269.78,21.7071,0,0,0,100,0),
(375980,33,-10104.2,-4198.45,23.4494,0,0,0,100,0),
(375980,34,-10078.5,-4204.58,23.7493,0,0,0,100,0),
(375980,35,-10039.8,-4174.94,21.831,0,0,0,100,0),
(375980,36,-9999.95,-4198.47,22.0317,0,0,0,100,0),
(375980,37,-9931.51,-4132.8,22.0286,0,0,0,100,0),
(375980,38,-9915.88,-4124.07,22.4304,0,0,0,100,0),
(375980,39,-9906.47,-4134.66,22.1825,0,0,0,100,0),
(375980,40,-9894.43,-4131.98,19.9014,0,0,0,100,0),
(375980,41,-9874.42,-4113.06,19.5372,0,0,0,100,0),
(375980,42,-9856.39,-4094.3,21.3194,0,0,0,100,0),
(375980,43,-9836.09,-4087.16,19.5419,0,0,0,100,0),
(375980,44,-9835.41,-4067.53,21.5148,0,0,0,100,0),
(375980,45,-9806.35,-4036.61,21.917,0,0,0,100,0),
(375980,46,-9770.47,-4022.24,17.9035,0,0,0,100,0),
-- Stonard Grunt GUID 31851
(318510,1,-10407.7,-3343.32,22.1376,0,0,0,100,0),
(318510,2,-10388.2,-3336.92,22.476,0,0,0,100,0),
(318510,3,-10407.7,-3343.32,22.1376,0,0,0,100,0),
(318510,4,-10425,-3342.96,22.0761,1000,0,0,100,0),
-- Stonard Grunt GUID 31848
(318480,1,-10383.3,-3309.1,21.3882,0,0,0,100,0),
(318480,2,-10388.5,-3296.86,20.6957,0,0,0,100,0),
(318480,3,-10383.4,-3308.69,21.3938,0,0,0,100,0),
(318480,4,-10380.2,-3327.54,22.0042,1000,0,0,100,0);
-- frost dmg immunity is bugged
UPDATE `creature_template_addon` SET `auras`='7940 0' WHERE `entry` IN ('22309');