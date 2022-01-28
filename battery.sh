#! /bin/sh
while TRUE;
do
echo "ile rdzeni? [0, 2, 4]";
read input;
if [ "$input" == "" ];
then
echo "Wprowadz wartosc!";
elif [ "$input" == "0" ];
then
echo "Aktywne: $input rdzeni";
echo "Wlacz benchmark w tle aby przyspieszyc rozladowywanie. Trwa zapisywanie danych na temat baterii...";
break;
elif [ "$input" == "2" ];
then
yes > /dev/null & yes > /dev/null &
yes > /dev/null & yes > /dev/null &
echo "Aktywne: $input rdzenie";
echo "Trwa rozladowywanie...";
break;
elif [ "$input" == "4" ];
then
yes > /dev/null & yes > /dev/null &
yes > /dev/null & yes > /dev/null &
yes > /dev/null & yes > /dev/null &
yes > /dev/null & yes > /dev/null &
echo "Aktywne: $input rdzenie";
echo "Trwa rozladowywanie...";
break;
else
echo "Zla wartosc!";
fi;
done;
DATE=$(date +"_%d-%m-%Y_%H-%M");
while TRUE;
do
BATT="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)";
TIME=$(uptime);
if [ "$BATT" -lt "5" ]
then
echo "$BATT%, $TIME";
killall yes;
sudo shutdown -h now;
else
echo "$BATT%, $TIME";
fi
sleep 100; 
done > ~/Desktop/battery-calibration/batterylog$DATE.txt
