scoreboard players add @a[tag=sixeyes] ceregen 1
scoreboard players add @a[tag=sixeyes,tag=!domainlayout,scores={Disabled=0,domain=0,domainactive=0,ceregen=2..},tag=!nocts] Energy 5
scoreboard players add @a[tag=sixeyes,tag=!domainlayout,scores={Disabled=0,domain=0,domainactive=0,detect_sneak=5..},tag=!nocts] Energy 7
scoreboard players set @a[scores={ceregen=2..}] ceregen 0

effect @a[tag=sixeyes,tag=!arenaboss] night_vision 12 1 true
event entity @a[tag=sixeyes,has_property={property:sixeyes=!1}] sixeyes
event entity @a[tag=sixeyes,has_property={property:sixeyesb=!1}] sixeyesb