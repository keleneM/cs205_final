# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides 
# a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

BEGIN{FS="\t"}
{
if (NR!=1){
#Add up total number of pokemon
total+=$5

#Add up the number of HP 
hp+=$6

#Add up the number of attack
attack+=$7

#Count the number of lines in the file
sum+=1
}
}
END{
#Print the title
print "======= SUMMARY OF POKEMON.DAT ======"
#Print total pokemon
print "   Total Pokemon: " total
#Print average HP
print "   Avg. HP: " hp/sum
#Print average Attack
print "   Avg. Attack: " attack/sum
#Print end summary line
print "======= END SUMMARY ======="}
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat.
# However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
