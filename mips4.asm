.data 
PromptUser:		.asciiz "Please enter a number in order to calculate its factorial:"
MsgNegNums: 		.asciiz "N! undefined for values less than 0” and request input again."



.text
# this is where the program memory starts 
li $vo, 4
la $a0, PromptUser
syscall 


li $v0, 5 # read an integer typed by the user 
syscall 


move $v0, $t0

ChecForNeg:
bitz $t0,DisplayNegMsg
j CalcFact

DisplayNegMsg:
j CalcFact






End Program:
li $vo, 10
syscall 






