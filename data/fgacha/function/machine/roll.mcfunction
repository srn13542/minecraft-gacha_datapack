# fg.random 오브젝티브에 1~100 사이 난수 저장
execute store result score @s fg.random run random value 1..100

execute if score @s fg.random matches 1 run function fgacha:machine/reward_legendary
execute if score @s fg.random matches 2..21 run function fgacha:machine/reward_epic
execute if score @s fg.random matches 22..71 run function fgacha:machine/reward_rare
execute if score @s fg.random matches 72..100 run function fgacha:machine/reward_normal