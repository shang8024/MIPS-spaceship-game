######################################################################
# CSCB58 Summer2021Assembly Final Project
# University of Toronto, Scarborough
#
# Student: Jiale Shang, 1006580022, shangj22
#
# Bitmap Display Configuration:
# -Unit width in pixels: 2
# -Unit height in pixels: 2 
# -Display width in pixels: 512 (256 units)
# -Display height in pixels: 256 (128 units)
# -Base Address for Display: 0x10010000 ($sp)
#
# Which milestoneshave beenreached in this submission?
# (See the assignment handout for descriptions of the milestones)
# -Milestone 1
#
# Which approved features have been implementedfor milestone 3?
# (See the assignment handout for the list of additional features)
# 1. (fillin the feature, if any)
# 2. (fill in the feature, if any)
# 3. (fill in the feature, if any)
# ... (add more if necessary)## Link to video demonstration for final submission:
# -(insert YouTube / MyMedia / other URL here). Make sure we can view it!
#
# Are you OKwith us sharing the video with people outside course staff?# -yes / no/ yes, and please share this project githublink as well!
# yes
# Any additional information that the TA needs to know:
# -(write here, if any)
######################################################################
.data
MAP:	.word	0:32768
spaceshipColor: .word 0xffffff, 0xbababa, 0x5d8aa8, 0xff7c7c, 0xe4faff, 0xb4f1ff #white, silver, air force blue, salmon pink, light cyan, pale cyan
spaceshipWhite: .word 6,0,7,0,5,1,6,1,7,1,8,1,13,1,8,2,9,2,13,2,13,3,6,4,8,4,9,4,15,4,16,4,17,4,18,4,6,5,8,5,9,5,10,5,8,6,9,6,14,6,15,6,16,6,10,7,4,8,5,8,6,8,9,8,10,8,11,8,13,8,14,8,15,8,16,8,17,8,18,8,19,9,18,9,13,9,11,9,10,9,9,9,7,9,6,9,18,10,17,10,16,10,15,10,14,10,13,10,11,10,10,10,9,10,6,10,5,10,4,10,10,11,8,12,9,12,14,12,15,12,16,12,6,13,8,13,9,13,10,13,6,14,8,14,9,14,15,14,16,14,17,14,18,14,13,15,13,16,9,16,8,16,13,17,8,17,7,17,6,17,5,17,6,18,7,18
spaceshipSilver: .word  7,2,8,3,14,2,15,3,14,3,13,4,14,5,15,5,16,5,17,6,16,7,15,7,14,7,11,7,9,7,12,8,19,8,20,9,12,9,19,10,12,10,11,11,9,11,14,11,15,11,16,11,17,12,16,13,15,13,14,13,13,14,14,15,15,15,8,15,7,16,14,16
spaceshipBlue: .word 7,4,14,4,13,5,7,5,7,6,10,6,11,6,13,6,13,7,8,7,8,8,8,9,8,10,8,11,13,11,13,12,11,12,10,12,7,12,7,13,13,13,14,14,7,14
spaceshipPink: .word 14,9,15,9,16,9,17,9
spaceshipCyan1: .word 4,4,5,4,4,5,5,5,2,8,3,8,4,9,5,9,2,10,3,10,4,13,5,13,4,14,5,14
spaceshipCyan2: .word 3,4,0,9,1,9,2,9,3,9,3,14
spaceshipNumPixel: .word 88,36,23,4,14,6,0

shieldColor: .word 0xfffbd6,0xfff38b
shieldYellow1: .word 1,-1,2,-1,3,-1,8,-1,9,-1,10,-1,11,-1,12,-1,13,-1,14,-1,19,-1,20,-1,21,-1,21,0,16,0,15,0,7,0,6,0,1,0,1,1,4,1,5,1,17,1,18,1,21,1,19,2,3,2,3,3,19,3,20,4,2,4,2,5,20,5,21,6,1,6,21,7,1,7,21,8,1,8,21,9,1,9,21,10,1,10,21,11,1,11,21,12,1,12,2,13,20,13,20,14,2,14,3,15,19,15,3,16,19,16,1,17,4,17,5,17,17,17,18,17,21,17,21,18,16,18,15,18,7,18,6,18,1,18,1,19,2,19,3,19,8,19,9,19,10,19,11,19,12,19,13,19,14,19,19,19,20,19,21,19
shieldYellow2: .word 8,-2,9,-2,10,-2,11,-2,12,-2,13,-2,14,-2,6,-1,7,-1,15,-1,16,-1,18,0,17,0,5,0,4,0,3,1,19,1,20,2,2,2,2,3,20,3,21,4,1,4,21,5,1,5,0,6,22,6,0,7,22,7,0,8,22,8,0,9,22,9,0,10,22,10,0,11,22,11,0,12,22,12,1,13,21,13,1,14,21,14,2,15,20,15,2,16,20,16,3,17,19,17,4,18,5,18,18,18,17,18,6,19,7,19,15,19,16,19,8,20,9,20,10,20,11,20,12,20,13,20,14,20
shieldNumPixel: .word 80,64,0

obst1Color: .word 0xffeecd,0xffffff,0xbababa
obst1Yellow: .word 5,0,6,0,7,0,4,1,8,1,3,2,9,2,2,4,10,4,6,5
obst1White: .word 5,1,6,1,7,1,4,2,5,2,6,2,7,2,8,2,4,3,5,3,6,3,7,3,8,3
obst1Silver: .word 2,3,3,3,9,3,10,3,1,4,3,4,4,4,5,4,6,4,7,4,8,4,9,4,11,4,0,5,1,5,2,5,3,5,4,5,5,5,7,5,8,5,9,5,10,5,11,5,12,5,2,6,3,6,4,6,5,6,6,6,7,6,8,6,9,6,10,6
obst1NumPixel: .word 10,13,34,0

obst2Color: .word 0xb4f1ff,0xffffff,0xff7c7c
obst2Cyan: .word 3,3,3,4,3,5,7,3,7,4,7,5,0,7,0,8,0,9,0,10
obst2White: .word 13,1,14,2,14,3,15,3,14,4,15,4,14,5,15,5,13,6,14,6,12,7,13,7,14,7,10,8,11,8,12,8,13,8,8,9,9,9,10,9,11,9,12,9,10,10,9,10,8,10,7,10,6,10,5,10,4,10,3,10,2,10,1,10,1,9,1,11,2,11,3,11,4,11,5,11,6,11,7,11,8,11
obst2Pink: .word 5,0,6,0,7,0,8,0,9,0,10,0,3,1,4,1,5,1,6,1,7,1,8,1,9,1,10,1,11,1,12,1,2,2,3,2,4,2,5,2,6,2,7,2,8,2,9,2,10,2,11,2,12,2,13,2,2,3,4,3,5,3,6,3,8,3,9,3,10,3,11,3,12,3,13,3,1,4,2,4,4,4,5,4,6,4,8,4,9,4,10,4,11,4,12,4,13,4,1,5,2,5,4,5,5,5,6,5,8,5,9,5,10,5,11,5,12,5,13,5,  1,6,2,6,3,6,4,6,5,6,6,6,7,6,8,6,9,6,10,6,11,6,12,6, 1,7,2,7,3,7,4,7,5,7,6,7,7,7,8,7,9,7,10,7,11,7, 1,8,2,8,3,8,4,8,5,8,6,8,7,8,8,8,9,8,14,8, 2,9,3,9,4,9,5,9,6,9,7,9,13,9,14,9, 13,10,12,10,11,10,13,11,12,11,11,11,10,11,9,11, 3,12,4,12,5,12,6,12,7,12,8,12,9,12,10,12,11,12,12,12,5,13,6,13,7,13,8,13,9,13,10,13
obst2NumPixel: .word 10,41,125,0

obst3Color: .word 0xf5d1e4,0x594c53
obst3Pink1: 3,0,4,0,5,0,8,0,9,0,10,0,18,0,17,1,16,1,15,1,12,1,11,1,7,1,6,1,5,1,4,1,3,1,2,1,1,2,2,2,3,2,4,2,5,2,13,2,14,2,0,3,1,3,2,3,3,3,4,3,5,3,6,3,0,4,1,4,4,4,5,4,6,4,0,5,1,5,2,5,3,5,4,5,5,5,6,5,7,5,0,6,1,6,2,6,3,6,4,6,5,6,6,6,8,6,17,6,18,6,1,7,4,7,5,7,6,7,9,7,10,7,11,7,12,7,14,7,15,7,16,7,1,8,2,8,3,8,4,8,5,8,6,8,12,8,13,8,2,9,3,9,4,9,5,9,6,9,7,9,17,9,18,9,4,10,5,10,6,10,8,10,14,10,15,10,16,10,9,11,10,11,11,11,12,11,13,11
obst3Pink2: 6,2,7,2,8,3,17,3,9,4,10,4,11,4,12,4,13,4,14,4,15,4,16,4,16,6,15,6,14,6,13,6,11,8,10,9,9,9,8,9,2,4,3,4,2,7,3,7
obst3NumPixel: .word 94,24,0

spaceshipPos: .word -10,63
spaceshipMov: .word 1,0
spaceshipHitBoxBd: .word 6,2,2,2 #left top bottom right
obst1Mov: .word -2,2
obst2Mov: .word -1,0
obst3Mov: .word 2,0
obst1Area: .word 13,7
obst2Area: .word 16,14
obst3Area: .word 19,12

GameOverLoc: .word 65,25
ScorePos: .word 200,121
obstacle1: .word	0:56 	#coordx,cordy,movx,movy,HP,move_cd,alive ufo
obstacle2: .word	0:56 	#coordx,cordy,movx,movy,HP,move_cd,alive planet
obstacle3: .word	0:56 	#coordx,cordy,movx,movy,HP,move_cd,alive alien
currScore: .word 0
prevScore: .word 0
shieldTime: .word 20
hasShield: .byte 1
Timer: .word 10
spaceshipHp: .word 3
hitboxDamage: .word 1
bulletDamage: .word 1
.eqv displayAddress 0x10010000
.eqv width 255
.eqv height 127
.eqv widthAddr 1024
.eqv intX -10
.eqv intY 63
.eqv spaceshipHeight 19
.eqv spaceshipWidth 21
.eqv GameOverColor 0x0000ab
.eqv ScoreColor 0xffffff
.eqv Max_Obstacles 8
.eqv Num_Obstacle_Type 3
.eqv Obstacle_Appear_Buffer 20
.eqv obst1Hp 1
.eqv obst2Hp 1
.eqv obst3Hp 1
.eqv obst1movecd 0
.eqv obst2movecd 4
.eqv obst3movecd 1
.eqv obst1Height 7
.eqv obst1Width 13
.eqv obst2Height 14
.eqv obst2Width 16
.eqv obst3Height 7
.eqv obst3Width 13
.eqv scroll_screeen_speed 1
.text
.globl main
main:
#	jal clear_screen
restart:
        jal initialize
	jal AddNewObstacle
	jal AddNewObstacle
	jal StartAnimation
	jal DrawObstacles
Game:
	sw $zero, spaceshipMov
	sw $zero, spaceshipMov+4
	li $t9, 0xffff0000
	lw $t8, 0($t9)
	beq $t8,1,keypress_happened
keyevent_end:
	li $v0, 32
	li $a0, 40 #sleep for 40
	syscall
	jal CheckCollisionsObstacles
	jal EraseObstacles
	jal EraseSpaceship
	jal MoveSpaceship
	jal MoveObstacle1
	jal MoveObstacle2
	jal MoveObstacle3
	jal DrawObstacles
	jal DrawSpaceship
	lw $s6, Timer
	subi $s6,$s6,1
	sw $s6,Timer
	bnez $s6,obstacle_increased
	li $s6,10
	sw $s6,Timer
	jal AddNewObstacle
obstacle_increased:
	jal drawscore
	lw $t0, spaceshipHp
	beqz $t0, Gameend
      	j Game
Gameend:
	li $a2, GameOverColor
	jal DrawGameOver
restart_detect:
	li $t9, 0xffff0000
	lw $t8, 0($t9)
	beqz $t8, restart_detect	# Skip if no key is being pressed down.
	lw $t2, 4($t9)
	li $v0, 32
	li $a0, 600		# Sleep, so we don't loop too quickly.
	syscall
	beq $t2, 0x70, respond_to_p
	j restart_detect
prog_end:	# Jump here if there's an exception.
	# Terminate
	li $v0, 10
	syscall

initialize:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, 10
	sw $t0, Timer
	li $t0, intX
	sw $t0, spaceshipPos
	li $t0, intY
	sw $t0, spaceshipPos+4
	la $s0, currScore
	sw $zero, 0($s0)
	li $t0, 3
	sw $t0, spaceshipHp
	la $a0, obstacle1
	li $t0, Max_Obstacles
	li $t1, Num_Obstacle_Type
	mul $t0,$t0, $t1
clear_obstacles:
	jal RemoveObst
	subi $t0,$t0,1
	addi $a0, $a0,28
	bnez $t0, clear_obstacles
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

#make screen all balck
clear_screen:
	li $t0, width
	mul $t0,$t0,height
	li $t1, 0x000000
	add $t2,$zero,displayAddress
erase:	
	sw $t1,($t2)
	addi $t2,$t2,4
	subi $t0,$t0,1
	bnez $t0, erase
	jr $ra##

## after a game end and before restart, clear all objects drawed
clear_curr_draws:	
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal EraseObstacles
	jal EraseSpaceship
	li $a2, 0x000000
	jal DrawGameOver
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

	
keypress_happened:
	lw $t2, 4($t9)
	beq $t2, 0x70, respond_to_p
	beq $t2, 0x77, respond_to_w
	beq $t2, 0x61, respond_to_a
	beq $t2, 0x73, respond_to_s
	beq $t2, 0x64, respond_to_d
	beq $t2, 0x1b, respond_to_esc
	j respond_end
respond_to_p:
	jal clear_curr_draws
	j restart
respond_to_esc:
	j Gameend
respond_to_w:
	lw $t0, spaceshipPos+4
	li $t1, -1
	beqz $t0, respond_end
	sw $t1, spaceshipMov+4 
	j respond_end
respond_to_a:
	lw $t0, spaceshipPos
	li $t1, -1
	beqz $t0, respond_end
	sw $t1, spaceshipMov
	j respond_end
respond_to_s:
	lw $t0, spaceshipPos+4
	li $t1, 1
	li $t2,height
	subi $t2, $t2,spaceshipHeight
	bgt $t0, $t2, respond_end
	sw $t1, spaceshipMov+4 
	j respond_end
respond_to_d:
	lw $t0, spaceshipPos
	li $t1, 1
	li $t2,width
	subi $t2, $t2,spaceshipWidth
	subi $t2, $t2,Obstacle_Appear_Buffer
	bgt $t0, $t2, respond_end
	sw $t1, spaceshipMov
	j respond_end
respond_end:
	j keyevent_end
	
# This function add a new random obstacle to the obstacles array. It go through the obstacle array to find an empty obst and cover it with new obstacle created with random generator.
# If no empty space found in obst array, it does nothing and return
AddNewObstacle:
	li $v0, 42         # Service 42, random int range
	li $a0, 0          # Select random generator 0
	li $a1, 3     # Select upper bound of random number
	syscall 
	beqz $a0, AddNewObstacle1
	li $t0, 1
	beq $t0, $a0, AddNewObstacle2
	j AddNewObstacle3

add_new_obst:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	move $t0, $a0
	li $t1, Max_Obstacles
	li $v0,0
find_empty_obst:
	lw $t2, 24($t0) #get alive of curr obst
	beqz $t2, find_empty_space # if empty, create random obst
	addi $t0, $t0, 28 # check next obst space
	subi $t1,$t1,1 #count--  
	beqz $t1, add_new_obst_end #not found empty space, end adding
	j find_empty_obst #keep finding
find_empty_space:
	li $v0,1
	sw $v0, 24($t0) #write alive
	# set initial coord x random
	li $t1, width
	li $v0, 42         # Service 42, random int range
	li $a0, 0          # Select random generator 0
	li $a1, Obstacle_Appear_Buffer     # Select upper bound of random number
	syscall 
	add $t1,$t1,$a0
	sw $t1, 0($t0) #write coord x
	add $v1,$zero,$t0
add_new_obst_end:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

AddNewObstacle1:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $a0, obstacle1
	jal add_new_obst
	beqz $v0,AddNewObstacle1_end
	move $t0,$v1
	li $t1, height
	subi $t1, $t1,obst1Height # max_y obst can reach
	li $v0, 42         # Service 42, random int range
	li $a0, 0          # Select random generator 0
	move $a1, $t1     # Select upper bound of random number
	syscall 
	sw $a0, 4($t0)  #write coord y
	# randomly set obst initial mox y up or down
	lw $t1, obst1Mov + 4
	li $v0, 42         # Service 42, random int range
	li $a0, 0          # Select random generator 0
	li $a1, 1     # Select upper bound of random number
	syscall 
	beqz $a0, set_obst1_down
	sub $t1, $zero,  $t1
set_obst1_down:
	sw $t1, 12($t0) #write mov y
	lw $t1, obst1Mov
	sw $t1, 8($t0) #write mov x
	li $t1, obst1Hp
	sw $t1, 16($t0)
	li $t1, obst1movecd
	sw $t1, 20($t0)
AddNewObstacle1_end:	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

AddNewObstacle2:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $a0, obstacle2
	jal add_new_obst
	beqz $v0,AddNewObstacle2_end
	move $t0,$v1
	li $t1, height
	subi $t1, $t1,obst2Height # max_y obst can reach
	li $v0, 42         # Service 42, random int range
	li $a0, 0          # Select random generator 0
	move $a1, $t1     # Select upper bound of random number
	syscall 
	sw $a0, 4($t0)  #write coord y
	lw $t1, obst2Mov + 4
	sw $t1, 12($t0) #write mov y
	lw $t1, obst2Mov
	sw $t1, 8($t0) #write mov x
	li $t1, obst2Hp
	sw $t1, 16($t0)
	li $t1, obst2movecd
	sw $t1, 20($t0)
AddNewObstacle2_end:	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra
      	
AddNewObstacle3:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $a0, obstacle3
	jal add_new_obst
	beqz $v0,AddNewObstacle3_end
	move $t0,$v1
	li $t1, height
	subi $t1, $t1,obst3Height # max_y obst can reach
	li $v0, 42         # Service 42, random int range
	li $a0, 0          # Select random generator 0
	move $a1, $t1     # Select upper bound of random number
	syscall 
	sw $a0, 4($t0)  #write coord y
	lw $t1, obst3Mov + 4
	sw $t1, 12($t0) #write mov y
	lw $t1, obst3Mov
	sw $t1, 8($t0) #write mov x
	li $t1, obst3Hp
	sw $t1, 16($t0)
	li $t1, obst3movecd
	sw $t1, 20($t0)
AddNewObstacle3_end:	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra


RemoveObst:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	sw $zero, 24($a0) 
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra
	
	
MoveSpaceship:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0, spaceshipMov
	lw $t1, spaceshipMov+4
	lw $t2,spaceshipPos
	add $t2,$t2,$t0
	sw $t2, spaceshipPos
	lw $t2,spaceshipPos+4
	add $t2,$t2,$t1
	sw $t2, spaceshipPos+4
	lw $t0, shieldTime
	beqz $t0, shield_updated
	subi $t0, $t0,1
	sw $t0, shieldTime
shield_updated:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

EraseSpaceship:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal EraseShield
	lw $t0, spaceshipMov
	bnez $t0, erase_spaceship
	lw $t0, spaceshipMov +4
	beqz $t0, skip_erase_spaceship
erase_spaceship:
	lw $s0, spaceshipPos 
	lw $s1, spaceshipPos + 4 
      	la $a1, spaceshipWhite # load address of pixel value array
      	la $a2, spaceshipNumPixel # load address of changecolor factor array
      	jal Erase
skip_erase_spaceship:
      	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

DrawSpaceship:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $s0, spaceshipPos 
	lw $s1, spaceshipPos + 4 
      	la $a0, spaceshipColor # load address of color array
      	la $a1, spaceshipWhite # load address of pixel value array
      	la $a2, spaceshipNumPixel # load address of changecolor factor array
      	jal Draw
      	jal DrawShield
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

EraseShield:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $s0, shieldTime
	li $t0,1
	beq $t0,$s0, erase_shield
	beqz $s0, skip_erase_shield # shieldTime >
	lw $t0, spaceshipMov
	bnez $t0, erase_shield
	lw $t0, spaceshipMov +4
	beqz $t0, skip_erase_shield
erase_shield:
	lw $s0, spaceshipPos 
	lw $s1, spaceshipPos + 4 
      	la $a1, shieldYellow1 # load address of pixel value array
      	la $a2, shieldNumPixel # load address of changecolor factor array
      	jal Erase
skip_erase_shield:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

DrawShield:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $s0, shieldTime
	beqz $s0, skip_draw_shield
	lw $s0, spaceshipPos 
	lw $s1, spaceshipPos + 4 
      	la $a0, shieldColor # load address of color array
      	la $a1, shieldYellow1 # load address of pixel value array
      	la $a2, shieldNumPixel # load address of changecolor factor array
      	jal Draw
skip_draw_shield:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

CoordToAddress:
	mul $v0,$a1,widthAddr
	sll $a0,$a0,2
	add $v0,$v0,$a0
	add $v0,$v0,displayAddress
	jr $ra
	
	
Draw:   
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4,($a2) # initialize ending address of drawing the first color(white)
	add $t5,$a0,$zero
	add $t6,$a1,$zero
draw_loop:    
	bgtz $t4, draw_current_color #if all pixels of current color are written, change color
	addi $a2, $a2,4 #set a2 to next changeColor address
	addi $t5,$t5,4 #set a0 to next Color address
	lw $t4,($a2) # set t4 to value in a2
	bgtz $t4, draw_current_color # if no more pixel need to draw(reach the end of numPixel array), end drawing
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
draw_current_color:
	lw $t3, 0($t5) # get current color to draw
	lw $a0, 0($t6)
	add $a0, $a0,$s0
	bltz $a0, skip_draw
	bgt $a0, width,skip_draw
	lw $a1,4($t6)
	add $a1,$a1,$s1
	bltz $a1, skip_draw
	bgt $a1, height,skip_draw
	jal CoordToAddress
	sw $t3, 0($v0) #draw this pixel
skip_draw:
	addi $t6, $t6, 8 # next pixel
	subi $t4,$t4,1
	j draw_loop # jump to Draw

Erase:   
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t4,($a2) # initialize ending address of drawing the first color(white)
	li $t3,0x000000
	add $t6,$a1,$zero
erase_loop:    
	bgtz $t4, erase_current_color #if all pixels of current color are written, change color
	addi $a2, $a2,4 #set a2 to next changeColor address
	lw $t4,($a2) # set t4 to value in a2
	bgtz $t4, erase_current_color # if no more pixel need to draw(reach the end of numPixel array), end erasing
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
erase_current_color:
	lw $a0, 0($t6)
	add $a0, $a0,$s0
	bltz $a0, skip_erase
	bgt $a0, width,skip_erase
	lw $a1,4($t6)
	add $a1,$a1,$s1
	bltz $a1, skip_erase
	bgt $a1, height,skip_erase
	jal CoordToAddress
	sw $t3, 0($v0) #erase this pixel
skip_erase:
	addi $t6, $t6, 8 # next pixel
	subi $t4,$t4,1
	j erase_loop # jump to erase

StartAnimation:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, 1
	sw $t0, spaceshipMov
	sw $zero, spaceshipMov +4
start_animation_loop:
	lw $t0, spaceshipPos
	bgtz $t0, start_animation_end
	jal EraseSpaceship
	jal MoveSpaceship
	jal DrawSpaceship
	li $v0, 32
	li $a0, 200		
	syscall
	j start_animation_loop
start_animation_end:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra


## This function loop through obstacles array to check if there are collisions. 
## For every obstacle alive, it first check whether it collision with spaceship. if yes, remove this obstacle and reduce spaceship's hp
## (additional) Then it check whether it has collison with any bullet. If yes, remove this obstacle and the bullet. 
CheckCollisionsObstacles:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $s7, obstacle1
	li $s6, Max_Obstacles
	li $s5, Num_Obstacle_Type
	la $s4, obst1Area
check_collisions_loop:
	lw $t0, 24($s7) # alive status of this obst
	beqz $t0, skip_check_collision #if this obst is not alive, skip check
	#check ofr collisions with spaceship
	move $a0, $s7
	move $a1, $s4
	jal CheckCollisionSToO
	bnez $v0, collison_with_spaceship
	##space for check collisions with bullets
	
	j skip_check_collision # if no collison found, move to next obst
collison_with_spaceship:
	# if this obst has collision with spaceship, reduce spaceship hp by hit box demage, and reduce the obst1's hp to 0
	# if spaceship has shield(shield time > 0),remove shield on next refresh display
	lw $t0, shieldTime
	beqz $t0,shield_broken 
	li $t0, 1
	sw $t0, shieldTime
	j check_shields_end
shield_broken:
	sub $t0, $t0, $t1
	sw $t0, spaceshipHp
check_shields_end:
	sw $zero, 16($s7) # reduce this obst's hp to 0
	lw $t0, spaceshipHp
	lw $t1, hitboxDamage
	j skip_check_collision
collision_with_bullet:
	# if this obst has collision with bullet, reduce obst hp by bullet damage and remove that bullet 
	lw $t0, 16($s7) # hp
	lw $t1, bulletDamage
	sub  $t0, $t0, $t1 #reduce obst hp by bullet damage
	sw $t0, 16($s7) # write updated hp to this obst's hp
	# space for remove the bullet
skip_check_collision:
	subi $s6,$s6,1 #count for num of curr type obstacles checked
	addi $s7, $s7,28 #next obstacle
	bnez $s6, check_curr_obst_type #if all of this type obstacles checked, check next type of obstacles 
	addi $s4,$s4,8 # weight, height of this type obst
	li $s6, Max_Obstacles
	subi $s5,$s5, 1 #count for num of obst types checked
check_curr_obst_type:
	bnez $s5, check_collisions_loop #back to check 
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

#This function checks whether a given obstacle has collision 
CheckCollisionSToO:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $v0,0 # set result to 0
	lw $t0, spaceshipPos #coord x of spaceship
	lw $t1, spaceshipHitBoxBd #hitbox border right of spaceship
	lw $t2, 0($a0) #coord x of onst
	lw $t3, 0($a1) # width of obst
	# if  coord x o < coord xs + hitboxbd r -width o, no collision
	sub $t5, $t0,$t3
	add $t5, $t5, $t1
	blt $t2,$t5,check_collision_S_to_O_end
	# if coord x o > coord xs+width s - hitboxbd l, no collision
	lw $t1, spaceshipHitBoxBd+ 12 #hitbox border left of spaceship
	addi $t5, $t0, spaceshipWidth
	sub $t5,$t5,$t1
	bgt $t2, $t5, check_collision_S_to_O_end
	# if coord y o < coord y s + hitboxbd t - height o, no collision
	lw $t0, spaceshipPos +4 # coord y of spaceship
	lw $t1, spaceshipHitBoxBd +4  #hitbox border top of spaceship
	lw $t2, 4($a0) #coord y of obst
	lw $t3, 4($a0) #height of obst
	add $t5,$t0,$t1
	sub $t5,$t5, $t3
	blt $t2, $t5, check_collision_S_to_O_end
	# if coord y o > coord y s - hitboxbd b + height s, no collision
	lw $t1, spaceshipHitBoxBd+ 8 #hitbox border bottom of spaceship
	addi $t5, $t0, spaceshipHeight
	sub $t5,$t5,$t1
	bgt $t2, $t5, check_collision_S_to_O_end
	#find collision, set result to 1
	li $v0,1
check_collision_S_to_O_end:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

MoveObstacle1:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $s7, obstacle1
	li $s6, Max_Obstacles
move_obstacle1_loop:
	li $t3, height
	li $t2, obst1Height
	sub $t2, $t3, $t2 #max coord y of obst1
	lw $t0, obst1Mov + 4
	subi $t2,$t2,1
	sub $t2,$t2,$t0
	li $t3, obst1Width
	sub $t3, $zero,$t3 #mmin coord x of obst1
	lw $t4, 24($s7) #is alive of obst1
	beqz $t4, skip_obst1
	lw $t4, 16($s7) # hp of obst1
	beqz $t4, remove_obst1
	lw $t4, 20($s7) #movecd
	bgtz $t4, skip_move_obst1
	li $t4, obst1movecd
	sw $t4, 20($s7) #reset obst1 cd
	lw $t4,4($s7) #coord y of obst 1
	lw $t5,12($s7) # mov y
	li $t6,0
	bgt $t4,$t0, obst1_dirct_change1 #if coordy<-0, change mox y to 1
	lw $t5, obst1Mov+4
	lw $t6, obst1Mov
	j obst1_dirct_changed
obst1_dirct_change1: #if coordy>0
	blt $t4, $t2, obst1_dirct_changed
	lw $t5, obst1Mov+4
	sub $t5, $zero, $t5
	lw $t6, obst1Mov
obst1_dirct_changed:
	subi $t6, $t6, scroll_screeen_speed
	sw $t6, 8($s7) #write updated movx value to movx
	sw $t5, 12($s7) #write updated movy value to movy	
	lw $t4, 4($s7) #coord y
	add $t4, $t5, $t4
	sw $t4, 4($s7)
	lw $t4, 0($s7) #coord x
	add $t4, $t4,$t6 
	sw $t4, 0($s7) #update coord x
	# if obst go out of screen, remove and create new one
	bge $t4,$t3, skip_move_obst1
remove_obst1:
	move $a0,$s7
	jal RemoveObst
	jal AddNewObstacle
	j skip_obst1
skip_move_obst1:
	lw $t4, 20($s7) #movecd
	subi $t4, $t4,1
	sw $t4, 20($s7)
skip_obst1:
	subi $s6,$s6,1
	addi $s7, $s7,28
	bnez $s6, move_obstacle1_loop
move_obst1_end:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra


MoveObstacle2:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $s7, obstacle2
	li $s6, Max_Obstacles
move_obstacle2_loop:
	li $t3, height
	li $t2, obst2Height
	sub $t2, $t3, $t2 #max coord y of obst1
	lw $t0, obst2Mov + 4
	subi $t2,$t2,1
	sub $t2,$t2,$t0
	li $t3, obst2Width
	sub $t3, $zero,$t3 #mmin coord x of obst1
	lw $t4, 24($s7) #is alive of obst1
	beqz $t4, skip_obst2
	lw $t4, 16($s7) # hp of obst1
	beqz $t4, remove_obst2
	lw $t4, 20($s7) #movecd
	bgtz $t4, skip_move_obst2
	li $t4, obst2movecd
	sw $t4, 20($s7) #reset obst1 cd
	lw $t5, 12($s7)
	lw $t4, 4($s7) #coord y
	add $t4, $t5, $t4
	sw $t4, 4($s7)
	lw $t5, 8($s7)
	lw $t4, 0($s7) #coord x
	add $t4, $t4,$t5 
	subi $t4, $t4, scroll_screeen_speed
	sw $t4, 0($s7) #update coord x
	# if obst go out of screen, remove and create new one
	bge $t4,$t3, skip_move_obst2
remove_obst2:
	move $a0,$s7
	jal RemoveObst
	jal AddNewObstacle
	j skip_obst2
skip_move_obst2:
	lw $t4, 20($s7) #movecd
	subi $t4, $t4,1
	sw $t4, 20($s7)
skip_obst2:
	subi $s6,$s6,1
	addi $s7, $s7,28
	bnez $s6, move_obstacle2_loop
move_obst2_end:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

MoveObstacle3:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $s7, obstacle3
	li $s6, Max_Obstacles
move_obstacle3_loop:
	li $t3, height
	li $t2, obst3Height
	sub $t2, $t3, $t2 #max coord y of obst1
	lw $t0, obst3Mov + 4
	subi $t2,$t2,1
	sub $t2,$t2,$t0
	li $t3, obst3Width
	sub $t3, $zero,$t3 #mmin coord x of obst1
	lw $t4, 24($s7) #is alive of obst1
	beqz $t4, skip_obst3
	lw $t4,16($s7) # hp of obst1
	beqz $t4, remove_obst3
	lw $t4, 20($s7) #movecd
	bgtz $t4, skip_move_obst3
	li $t4, obst3movecd
	sw $t4, 20($s7) #reset obst1 cd
	lw $t4, 8($s7)#movx
	lw $t5, obst3Mov
	bltz $t4, obst3_dir_updated #if it was leftword, turnaround
	sll $t5,$t5,2
	sub $t5,$zero,$t5
obst3_dir_updated:
	sw $t5, 8($s7) #update movx
	lw $t5, 12($s7)
	lw $t4, 4($s7) #coord y
	add $t4, $t5, $t4
	sw $t4, 4($s7)
	lw $t5, 8($s7)
	lw $t4, 0($s7) #coord x
	add $t4, $t4,$t5 
	subi $t4, $t4, scroll_screeen_speed
	sw $t4, 0($s7) #update coord x
	# if obst go out of screen, remove and create new one
	bge $t4,$t3, skip_move_obst3
remove_obst3:
	move $a0,$s7
	jal RemoveObst
	jal AddNewObstacle
	j skip_obst3
skip_move_obst3:
	lw $t4, 20($s7) #movecd
	subi $t4, $t4,1
	sw $t4, 20($s7)
skip_obst3:
	subi $s6,$s6,1
	addi $s7, $s7,28
	bnez $s6, move_obstacle3_loop
move_obst3_end:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
      	jr $ra

#######Obstacles
DrawObstacles:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $a0, obst1Color
	la $a3, obstacle1
	la $a1, obst1Yellow
	la $a2, obst1NumPixel
	jal DrawObsts
	la $a0, obst2Color
	la $a3, obstacle2
	la $a1, obst2Cyan
	la $a2, obst2NumPixel
	jal DrawObsts
	la $a0, obst3Color
	la $a3, obstacle3
	la $a1, obst3Pink1
	la $a2, obst3NumPixel
	jal DrawObsts
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

DrawObsts:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	move $s5, $a3
	li $s6, Max_Obstacles
	move $s2, $a1
	move $s3, $a2
	move $s4,$a0
draw_obst_loop:
	lw $t0, 24($s5) # alive
	beqz $t0, skip_draw_obst
	lw $s0, 0($s5)
	lw $s1, 4($s5)
	move $a0, $s4
	move $a1, $s2
	move $a2, $s3
	jal Draw
skip_draw_obst:
	subi $s6,$s6,1
	addi $s5, $s5,28
	bnez $s6, draw_obst_loop
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra


EraseObstacles:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $a3, obstacle1
	la $a1, obst1Yellow
	la $a2, obst1NumPixel
	jal EraseObsts
	
	la $a3, obstacle2
	la $a1, obst2Cyan
	la $a2, obst2NumPixel
	jal EraseObsts
	
	la $a3, obstacle3
	la $a1, obst3Pink1
	la $a2, obst3NumPixel
	jal EraseObsts
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra


EraseObsts:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	move $s5, $a3
	li $s6, Max_Obstacles
	move $s2, $a1
	move $s3, $a2
erase_obst_loop:
	lw $t0, 24($s5) #alive
	beqz $t0, skip_erase_obst
	lw $t0, 20($s5) #movecd
	bgtz $t0, skip_erase_obst
	lw $s0, 0($s5)
	lw $s1, 4($s5)
	move $a1, $s2
	move $a2, $s3
	jal Erase
skip_erase_obst:
	subi $s6,$s6,1
	addi $s5, $s5,28
	bnez $s6, erase_obst_loop
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra



DrawSquare:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, 24
	move $t1,$a0 #coords of the square
	move $t2, $a1 
	li $t3, 5 
draw_square_loop:
	div $t0,$t3
	mfhi $t4
	mflo $t5
	add $a0,$t5,$t1
	add $a1, $t4,$t2
	jal CoordToAddress
	move $t9, $a2
	sw $t9,($v0)
	subi $t0,$t0,1
	bnez $t0, draw_square_loop
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
drawG:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0,GameOverLoc
	lw $t1,GameOverLoc+4
	move $s0,$a0 #start coord of G
	move $s1,$a1
	add $s0,$s0,$t0
	add $s1,$s1,$t1
	addi $a0,$s0, 6
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 28
	jal DrawSquare
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

drawO:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0,GameOverLoc
	lw $t1,GameOverLoc+4
	move $s0, $a0 #start coord of G
	move $s1,$a1
	add $s0,$s0,$t0
	add $s1,$s1,$t1
	addi $a0,$s0, 6
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 28
	jal DrawSquare
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

drawA:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0,GameOverLoc
	lw $t1,GameOverLoc+4
	move $s0, $a0 #start coord of G
	move $s1,$a1
	add $s0,$s0,$t0
	add $s1,$s1,$t1
	addi $a0,$s0, 6
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 28
	jal DrawSquare
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

drawV:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0,GameOverLoc
	lw $t1,GameOverLoc+4
	move $s0, $a0 #start coord of G
	move $s1,$a1
	add $s0,$s0,$t0
	add $s1,$s1,$t1
	addi $a0,$s0, 0
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 28
	jal DrawSquare
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

drawR:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0,GameOverLoc
	lw $t1,GameOverLoc+4
	move $s0, $a0 #start coord of G
	move $s1,$a1
	add $s0,$s0,$t0
	add $s1,$s1,$t1
	addi $a0,$s0, 0
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 28
	jal DrawSquare
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
drawM:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0,GameOverLoc
	lw $t1,GameOverLoc+4
	move $s0, $a0 #start coord of G
	move $s1,$a1
	add $s0,$s0,$t0
	add $s1,$s1,$t1
	addi $a0,$s0, 0
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 24
	addi $a1,$s1, 28
	jal DrawSquare
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

drawE:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	lw $t0,GameOverLoc
	lw $t1,GameOverLoc+4
	move $s0, $a0 #start coord of G
	move $s1,$a1
	add $s0,$s0,$t0
	add $s1,$s1,$t1
	addi $a0,$s0, 0
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 0
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 7
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 14
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 21
	jal DrawSquare
	addi $a0,$s0, 0
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 12
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 18
	addi $a1,$s1, 28
	jal DrawSquare
	addi $a0,$s0, 6
	addi $a1,$s1, 28
	jal DrawSquare
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra



DrawGameOver:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $a0, 0
	li $a1, 0
	jal drawG
	li $a0, 36
	li $a1, 0
	jal drawA
	li $a0, 66
	li $a1, 0
	jal drawM
	li $a0, 102
	li $a1, 0
	jal drawE
	li $a0, 0
	li $a1, 42
	jal drawO
	li $a0, 36
	li $a1, 42
	jal drawV
	li $a0, 66
	li $a1, 42
	jal drawE
	li $a0, 96
	li $a1, 42
	jal drawR
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

drawscore:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $a0, 0
	li $a1, 0
	jal drawscoreS
	li $a0, 4
	li $a1, 0
	jal drawscoreC
	li $a0, 8
	li $a1, 0
	jal drawscoreO
	li $a0, 12
	li $a1, 0
	jal drawscoreR
	li $a0, 16
	li $a1, 0
	jal drawscoreE
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
drawscoreS:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, ScoreColor
	lw $t1, ScorePos
	lw $t2,ScorePos+4
	move $s0, $a0
	move $s1,$a1
	add $s0,$s0,$t1
	add $s1,$s1,$t2
	addi $a0, $s0, 1
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,1
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 1
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,3
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 1
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
drawscoreC:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, ScoreColor
	lw $t1, ScorePos
	lw $t2,ScorePos+4
	move $s0, $a0
	move $s1,$a1
	add $s0,$s0,$t1
	add $s1,$s1,$t2
	addi $a0, $s0, 1
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,1
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 0
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,3
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 1
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
drawscoreO:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, ScoreColor
	lw $t1, ScorePos
	lw $t2,ScorePos+4
	move $s0, $a0
	move $s1,$a1
	add $s0,$s0,$t1
	add $s1,$s1,$t2
	addi $a0, $s0, 1
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,1
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,1
	jal CoordToAddress
	sw $t0,($v0)		
	addi $a0, $s0, 0
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 0
	addi $a1,$s1,3
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,3
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 1
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
drawscoreR:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, ScoreColor
	lw $t1, ScorePos
	lw $t2,ScorePos+4
	move $s0, $a0
	move $s1,$a1
	add $s0,$s0,$t1
	add $s1,$s1,$t2
	addi $a0, $s0, 0
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 1
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,1
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,1
	jal CoordToAddress
	sw $t0,($v0)		
	addi $a0, $s0, 0
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 1
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 0
	addi $a1,$s1,3
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,3
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 0
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

drawscoreE:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, ScoreColor
	lw $t1, ScorePos
	lw $t2,ScorePos+4
	move $s0, $a0
	move $s1,$a1
	add $s0,$s0,$t1
	add $s1,$s1,$t2
	addi $a0, $s0, 0
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 1
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,0
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,1
	jal CoordToAddress
	sw $t0,($v0)		
	addi $a0, $s0, 0
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 1
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 2
	addi $a1,$s1,2
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 0
	addi $a1,$s1,3
	jal CoordToAddress
	sw $t0,($v0)	
	addi $a0, $s0, 0
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 1
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	addi $a0, $s0, 2
	addi $a1,$s1,4
	jal CoordToAddress
	sw $t0,($v0)
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
