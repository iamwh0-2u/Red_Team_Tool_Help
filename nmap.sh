targ=$1

echo "I use -Pn almost everytime so you don't have to worry, seems like its required more often than not"

echo "Stealth SYN Scan"
echo "nmap -sS $targ"

echo "TCP Connect Scan"
echo "nmap -sT $targ"

echo "UDP Scan"
echo "nmap -sU $targ"

echo "OS Detection: Attempts to determine the operating system and device type of the target using TCP/IP fingerprinting"
echo "Version Detection: Identifies the versions of services running on open ports."
echo "Script Scanning: Runs a set of Nmap Scripting Engine (NSE) scripts categorized as "default" and "safe," which can provide additional information about services and potential vulnerabilities"
echo "nmap -A $targ"

echo "Scan All TCP Ports"
echo "nmap -p- $targ"

echo "-sC enables the default set of Nmap Scripting Engine (NSE) scripts (these are considered safe and useful for general discovery)."

echo "-sV enables service and version detection, identifying the software and version running on open ports."

echo "This command should enumerate everything on the box, can be noisy though!! -p- is all ports"
echo "nmap -A -sC -sV -Pn -T 4 -p- $targ
