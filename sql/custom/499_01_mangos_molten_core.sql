-- instance molten core fixes

-- Change place of the chest
	UPDATE `gameobject` SET `position_x` = 784.434998, `position_y` = -1207.390015, `position_z` = -120.639000, `orientation` = 2.592130, `spawntimesecs` = 604800 WHERE `id` = 179703;

-- Reduce Speed
	UPDATE `creature_template` SET `speed_walk`=1.3 WHERE `entry` IN (11664, 11663, 12018);

-- Change Faction
	UPDATE `creature_template` SET `faction_A`=54, `faction_H`=54 WHERE `entry` IN (12018);

--  Update Script settings
	UPDATE `creature_template` SET `ScriptName`='boss_elite' WHERE `entry`=11664;
	UPDATE `creature_template` SET `ScriptName`='boss_healer' WHERE `entry`=11663;
	UPDATE `creature_template` SET `ScriptName`='boss_majordomo' WHERE `entry`=12018;

-- Update spawntime for Boss
	UPDATE `creature` SET `spawntimesecs`=604800 WHERE `id`=12018;

-- majordomus adden
	DELETE FROM `creature` WHERE `id` = 12018;
	INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `curmana`, spawndist, MovementType) VALUES
	(230011, 12018, 409, 767.674, -1205.82, -119.415, 2.81403, 604800, 666200, 0, 0, 0);

-- remove flags UNK_6, OOC_NOT_ATTACKABLE and PASSIVE from ragnaros
	UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 11502;