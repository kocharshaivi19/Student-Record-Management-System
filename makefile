#
# A simple makefile for compiling java classes
#
# variable for javac

JCC = javac

# define variable for jar

JFLAGS = -cp mysql-connector-java-5.1.34-bin.jar

# class variable
MAIN = DBDemo

# java variable
JVM = java

# variable to run java with jar
KFlag = -cp .:mysql-connector-java-5.1.34-bin.jar

MYPROGRAM=test



all: $(MYPROGRAM)

$(MYPROGRAM): DBDemo.class
	$(JVM) $(KFlag) $(MAIN) -o$(MYPROGRAM)

DBDemo.class: DBDemo.java 
	$(JCC) $(JFLAGS) DBDemo.java

# To start over from scratch, type 'make clean'.  
# Removes all .class files, so that the next make rebuilds them
#
clean: 
	$(RM) *.class
