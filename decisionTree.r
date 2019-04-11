
#decision tree
#graph to reperesent choices and results in the form of tree
#the nodes in the graph represet an event or choice and the edges of the graph represent the decision rules or condtions
#e.g : predicting an email is spam or not

library(party)
data = readingSkills
data
plt=ctree(readingSkills$nativeSpeaker~readingSkills$age+readingSkills$shoeSize+readingSkills$score,data)
plot(plt)
