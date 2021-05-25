scoreboard players set @e[tag=checkpoint] activations 0
function gelme:parcour/checkpoints/loop_through_players
tag @e[tag=checkpoint,scores={activations=0}] add deactivated