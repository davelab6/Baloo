#!/bin/bash
# This file documents steps taken to onboard the fonts into 
# github.com/google/fonts.git when locally cloned to
# ~/fonts

# copy license
mkdir ~/fonts/ofl/baloo/; cp ../OFL.txt ~/fonts/ofl/baloo/;
mkdir ~/fonts/ofl/baloobhai/; cp ../OFL.txt ~/fonts/ofl/baloobhai/;
mkdir ~/fonts/ofl/baloobhaina/; cp ../OFL.txt ~/fonts/ofl/baloobhaina/;
mkdir ~/fonts/ofl/baloochettan/; cp ../OFL.txt ~/fonts/ofl/baloochettan/;
mkdir ~/fonts/ofl/balooda/; cp ../OFL.txt ~/fonts/ofl/balooda/;
mkdir ~/fonts/ofl/baloopaaji/; cp ../OFL.txt ~/fonts/ofl/baloopaaji/;
mkdir ~/fonts/ofl/balootamma/; cp ../OFL.txt ~/fonts/ofl/balootamma/;
mkdir ~/fonts/ofl/balootammudu/; cp ../OFL.txt ~/fonts/ofl/balootammudu/;
mkdir ~/fonts/ofl/baloothambi/; cp ../OFL.txt ~/fonts/ofl/baloothambi/;

# compile the fonts
ttx *ttx;

# back up fonts in the github.com/google/fonts.git repo
mkdir ~/fonts/ofl/baloo/OLD; mv ~/fonts/ofl/baloo/{,OLD/}Baloo-Regular.ttf;
mkdir ~/fonts/ofl/baloobhai/OLD; mv ~/fonts/ofl/baloobhai/{,OLD/}BalooBhai-Regular.ttf;
mkdir ~/fonts/ofl/baloobhaina/OLD; mv ~/fonts/ofl/baloobhaina/{,OLD/}BalooBhaina-Regular.ttf;
mkdir ~/fonts/ofl/baloochettan/OLD; mv ~/fonts/ofl/baloochettan/{,OLD/}BalooChettan-Regular.ttf;
mkdir ~/fonts/ofl/balooda/OLD; mv ~/fonts/ofl/balooda/{,OLD/}BalooDa-Regular.ttf;
mkdir ~/fonts/ofl/baloopaaji/OLD; mv ~/fonts/ofl/baloopaaji/{,OLD/}BalooPaaji-Regular.ttf;
mkdir ~/fonts/ofl/balootamma/OLD; mv ~/fonts/ofl/balootamma/{,OLD/}BalooTamma-Regular.ttf;
mkdir ~/fonts/ofl/balootammudu/OLD; mv ~/fonts/ofl/balootammudu/{,OLD/}BalooTammudu-Regular.ttf;
mkdir ~/fonts/ofl/baloothambi/OLD; mv ~/fonts/ofl/baloothambi/{,OLD/}BalooThambi-Regular.ttf;

# sync the fonts to the github.com/google/fonts.git repo
rsync -vvaP Baloo-Regular.ttf ~/fonts/ofl/baloo/Baloo-Regular.ttf;
rsync -vvaP BalooBhai-Regular.ttf ~/fonts/ofl/baloobhai/BalooBhai-Regular.ttf;
rsync -vvaP BalooBhaina-Regular.ttf ~/fonts/ofl/baloobhaina/BalooBhaina-Regular.ttf;
rsync -vvaP BalooChettan-Regular.ttf ~/fonts/ofl/baloochettan/BalooChettan-Regular.ttf;
rsync -vvaP BalooDa-Regular.ttf ~/fonts/ofl/balooda/BalooDa-Regular.ttf;
rsync -vvaP BalooPaaji-Regular.ttf ~/fonts/ofl/baloopaaji/BalooPaaji-Regular.ttf;
rsync -vvaP BalooTamma-Regular.ttf ~/fonts/ofl/balootamma/BalooTamma-Regular.ttf;
rsync -vvaP BalooTammudu-Regular.ttf ~/fonts/ofl/balootammudu/BalooTammudu-Regular.ttf;
rsync -vvaP BalooThambi-Regular.ttf ~/fonts/ofl/baloothambi/BalooThambi-Regular.ttf;

# backup METADATA.pb files
mkdir ~/fonts/ofl/baloo/OLD; mv ~/fonts/ofl/baloo/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/baloobhai/OLD; mv ~/fonts/ofl/baloobhai/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/baloobhaina/OLD; mv ~/fonts/ofl/baloobhaina/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/baloochettan/OLD; mv ~/fonts/ofl/baloochettan/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/balooda/OLD; mv ~/fonts/ofl/balooda/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/baloopaaji/OLD; mv ~/fonts/ofl/baloopaaji/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/balootamma/OLD; mv ~/fonts/ofl/balootamma/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/balootammudu/OLD; mv ~/fonts/ofl/balootammudu/{,OLD/}METADATA.pb;
mkdir ~/fonts/ofl/baloothambi/OLD; mv ~/fonts/ofl/baloothambi/{,OLD/}METADATA.pb;

# recreate METADATA.pb files
cd ~/fonts/tools/;
python add_font.py ~/fonts/ofl/baloo;
python add_font.py ~/fonts/ofl/baloobhai;
python add_font.py ~/fonts/ofl/baloobhaina;
python add_font.py ~/fonts/ofl/baloochettan;
python add_font.py ~/fonts/ofl/balooda;
python add_font.py ~/fonts/ofl/baloopaaji;
python add_font.py ~/fonts/ofl/balootamma;
python add_font.py ~/fonts/ofl/balootammudu;
python add_font.py ~/fonts/ofl/baloothambi;

# compare the old and new files
cd ~/fonts/tools/;
meld ~/fonts/ofl/baloo/OLD/METADATA.pb ~/fonts/ofl/baloo/METADATA.pb;
meld ~/fonts/ofl/baloobhai/OLD/METADATA.pb ~/fonts/ofl/baloobhai/METADATA.pb;
meld ~/fonts/ofl/baloobhaina/OLD/METADATA.pb ~/fonts/ofl/baloobhaina/METADATA.pb;
meld ~/fonts/ofl/baloochettan/OLD/METADATA.pb ~/fonts/ofl/baloochettan/METADATA.pb;
meld ~/fonts/ofl/balooda/OLD/METADATA.pb ~/fonts/ofl/balooda/METADATA.pb;
meld ~/fonts/ofl/baloopaaji/OLD/METADATA.pb ~/fonts/ofl/baloopaaji/METADATA.pb;
meld ~/fonts/ofl/balootamma/OLD/METADATA.pb ~/fonts/ofl/balootamma/METADATA.pb;
meld ~/fonts/ofl/balootammudu/OLD/METADATA.pb ~/fonts/ofl/balootammudu/METADATA.pb;
meld ~/fonts/ofl/baloothambi/OLD/METADATA.pb ~/fonts/ofl/baloothambi/METADATA.pb;

# remove old files
rm -rf ~/fonts/ofl/baloo/OLD;
rm -rf ~/fonts/ofl/baloobhai/OLD;
rm -rf ~/fonts/ofl/baloobhaina/OLD;
rm -rf ~/fonts/ofl/baloochettan/OLD;
rm -rf ~/fonts/ofl/balooda/OLD;
rm -rf ~/fonts/ofl/baloopaaji/OLD;
rm -rf ~/fonts/ofl/balootamma/OLD;
rm -rf ~/fonts/ofl/balootammudu/OLD;
rm -rf ~/fonts/ofl/baloothambi/OLD;

# sanity check
cd ~/fonts/tools/;
python sanity_check.py ~/fonts/ofl/baloo;
python sanity_check.py ~/fonts/ofl/baloobhai;
python sanity_check.py ~/fonts/ofl/baloobhaina;
python sanity_check.py ~/fonts/ofl/baloochettan;
python sanity_check.py ~/fonts/ofl/balooda;
python sanity_check.py ~/fonts/ofl/baloopaaji;
python sanity_check.py ~/fonts/ofl/balootamma;
python sanity_check.py ~/fonts/ofl/balootammudu;
python sanity_check.py ~/fonts/ofl/baloothambi;

# ots check
ot-sanitise ~/fonts/ofl/baloo/Baloo-Regular.ttf;
ot-sanitise ~/fonts/ofl/baloobhai/BalooBhai-Regular.ttf;
ot-sanitise ~/fonts/ofl/baloobhaina/BalooBhaina-Regular.ttf;
ot-sanitise ~/fonts/ofl/baloochettan/BalooChettan-Regular.ttf;
ot-sanitise ~/fonts/ofl/balooda/BalooDa-Regular.ttf;
ot-sanitise ~/fonts/ofl/baloopaaji/BalooPaaji-Regular.ttf;
ot-sanitise ~/fonts/ofl/balootamma/BalooTamma-Regular.ttf;
ot-sanitise ~/fonts/ofl/balootammudu/BalooTammudu-Regular.ttf;
ot-sanitise ~/fonts/ofl/baloothambi/BalooThambi-Regular.ttf;

# check into git (but exit first so this is never automatic)
exit;
git add ~/fonts/ofl/baloo;
git add ~/fonts/ofl/baloobhai;
git add ~/fonts/ofl/baloobhaina;
git add ~/fonts/ofl/baloochettan;
git add ~/fonts/ofl/balooda;
git add ~/fonts/ofl/baloopaaji;
git add ~/fonts/ofl/balootamma;
git add ~/fonts/ofl/balootammudu;
git add ~/fonts/ofl/baloothambi;
git commit ~/fonts/ofl/baloo -m "Adding ofl/baloo";
git commit ~/fonts/ofl/baloobhai -m "Adding ofl/baloobhai";
git commit ~/fonts/ofl/baloobhaina -m "Adding ofl/baloobhaina";
git commit ~/fonts/ofl/baloochettan -m "Adding ofl/baloochettan";
git commit ~/fonts/ofl/balooda -m "Adding ofl/balooda";
git commit ~/fonts/ofl/baloopaaji -m "Adding ofl/baloopaaji";
git commit ~/fonts/ofl/balootamma -m "Adding ofl/balootamma";
git commit ~/fonts/ofl/balootammudu -m "Adding ofl/balootammudu";
git commit ~/fonts/ofl/baloothambi -m "Adding ofl/baloothambi";
