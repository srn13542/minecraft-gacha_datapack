# 티켓 검사
item modify entity @s weapon.mainhand fgacha:decrement

# 첫 가챠 도전과제 지급
execute unless entity @s[advancements={fgacha:do_gacha=true}] run advancement grant @s only fgacha:do_gacha

playsound minecraft:entity.experience_orb.pickup player @s
particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0 20 force @s

# 가챠 실행
loot give @s loot fgacha:gacha