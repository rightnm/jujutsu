execute as @p[scores={grade=3..}] at @s run tag @a[r=5] add accepted

tag @a[r=5,tag=accepted] add special_mission_vessel
tellraw @a[r=5,tag=accepted] {"rawtext":[{"text":"§l§e--- §5Special Mission Accepted §e---\n\n§r§a- Head towards the co-ordinates §e'5000 62 3000'§a.\nYou are to meet and escort the Star Plasma Vessel §dRiko Amanai§a to §dTengen§a.\n\n§aBe careful as a bounty has been placed on her head, expect non-sorcerers and sorcerers to disrupt your mission, your main worry should be §dQ §aan organization of Sorcerers hoping to overturn modern sorcery by causing Tengen to lose all reason!\n§aThe location of §dTengen's whereabouts §awill be disclosed once the vessel is retrieved.\n\n§cDo Not let the Star Plasma Vessel die!"}]}
playsound music.payday @a[r=5,tag=accepted]
camera @a[r=5,tag=accepted] fade time 0 0 1 color 0 0 0
function structure_hotel
tag @e remove accepted
