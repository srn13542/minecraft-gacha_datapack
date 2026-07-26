# 플레이어의 현재 yaw를 정수 점수로 변환
execute store result score @s fg.yaw run data get entity @s Rotation[0] 1

# 0~359 범위로 정규화 (음수 방지)
scoreboard players operation @s fg.yaw += #360 fg.math
scoreboard players operation @s fg.yaw %= #360 fg.math

# 가장 가까운 90도 단위로 반올림
scoreboard players add @s fg.yaw 45
scoreboard players operation @s fg.yaw /= #90 fg.math
scoreboard players operation @s fg.yaw *= #90 fg.math
scoreboard players operation @s fg.yaw %= #360 fg.math