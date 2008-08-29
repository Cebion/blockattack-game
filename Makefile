#the things that tells about the system
PREF=/usr/local
EXECUTEPATH=/usr/local/bin
INST=/games/blockattack

standard:
	@echo "Removing old files (if they exists)"
	@rm -f *.o
	@rm -f ./Game/blockattack
	@rm -f ./Game/starter
	@rm -f ./Game/runme.sh
	@echo "Done deleting files"
	@echo "Now compiling..."
	@make -f block.make
	@rm -f *.o
	@echo "Everything has been compiled!"
	
#makeinstall and install doesn't work, gfx dictory doesn't get copied!
#makeinstall:	
#	@echo "Removing old files (if they exists)"
#	@rm -f *.o
#	@rm -f ./Game/blockattack
#	@rm -f ./Game/starter
#	@rm -f ./Game/runme.sh
#	@echo "Done deleting files"
#	@echo "Now compiling..."
#	@make -f block.make
#	@g++ starter2.cpp -o ./Game/starter
#	@echo "Everything has been compiled!"
#	@echo "Creating installation dirs..."
#	@mkdir -p $(PREF)$(INST)
#	@echo "Dir has been created"
#	@echo "Now copying files"
#	@cp -P -f -r ./Game/* $(PREF)$(INST)
#	@echo "Files have been copied"
#	@chmod +r $(PREF)$(INST) -R
#	@echo "Now creating a runable sh file called runme.sh"
#	@touch $(PREF)$(INST)/runme.sh
#	@echo "pushd $(PREF)$(INST)" >> $(PREF)$(INST)/runme.sh 
#	@echo "./blockattack" >> $(PREF)$(INST)/runme.sh
#	@echo "popd" >> $(PREF)$(INST)/runme.sh 
#	@echo "File created, now setting +x permission to it"
#	@chmod +x $(PREF)$(INST)/runme.sh
#	@echo "Mow creating static links to runme.sh"
#	@ln -fs $(PREF)$(INST)/runme.sh $(PREF)/bin/blockattack
#	@echo "Links have been created"
#	@echo "Block Attack - Rise of the Blocks have been installed!"
#	@echo "Type 'blockattack' to run the game"
	
#install:	
#	@echo "Everything must have been compiled"
#	@echo "Creating installation dirs..."
#	@mkdir -p $(PREF)$(INST)
#	@echo "Dir has been created"
#	@echo "Now copying files"
#	@cp -P -f -r ./Game/* $(PREF)$(INST)
#	@cp -P -f ./blockattack.xpm /usr/share/pixmaps
#	@cp -P -f ./blockattack.desktop /usr/share/applications
#	@echo "Files have been copied, giving all users read permission"
#	@chmod +r $(PREF)$(INST) -R
#	@echo "Now creating a runable sh file called runme.sh"
#	@rm -f $(PREF)$(INST)/runme.sh
#	@touch $(PREF)$(INST)/runme.sh
#	@echo "pushd $(PREF)$(INST)" >> $(PREF)$(INST)/runme.sh 
#	@echo "./blockattack" >> $(PREF)$(INST)/runme.sh
#	@echo "popd" >> $(PREF)$(INST)/runme.sh 
#	@echo "File created, now setting +x permission to it"
#	@chmod +x $(PREF)$(INST)/runme.sh
#	@echo "Mow creating static links to runme.sh"
#	@ln -fs $(PREF)$(INST)/runme.sh $(PREF)/bin/blockattack
#	@echo "Links have been created"
#	@echo "Block Attack - Rise of the Blocks have been installed!"
#	@echo "Type 'blockattack' to run the game"

#remove:
#	@echo "Removing: Block Attack - Rise of the Blocks"
#	@rm $(PREF)$(INST) -R
#	@echo "Data files has been removed!"
#	@echo "Removing links..."
#	@rm $(PREF)/bin/blockattack
#	@rm /usr/share/pixmaps/blockattack.xpm
#	@rm /usr/share/applications/blockattack.desktop
#	@echo "All installed files has been removed"
