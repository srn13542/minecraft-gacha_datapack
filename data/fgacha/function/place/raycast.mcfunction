# 최대 6블록 넘으면 중단. 0.2블록씩 전진하며 블록 검사
execute if score @s fgacha_ray matches 30.. run return 0

scoreboard players add @s fgacha_ray 1

# 0.2블록 전진한 위치에 고체 블록이 있으면 -> 그 앞칸 (한 스텝 뒤)에 설치
execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #minecraft:air run function fgacha:place/found

# 없으면 계속 전진
execute positioned ^ ^ ^0.2 if block ~ ~ ~ #minecraft:air run function fgacha:place/raycast
