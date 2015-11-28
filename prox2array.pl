#!/usr/bin/perl
#                        ->Coder By CrashBandicot
#                        ->sh00tz<- Danzo , m0sta , hamid , HashCat , Yunus, Ghosty , M-A                      

print "\n\t
                            [+++++++++++++++++++++++]
                            [|  Proxy2Array        |]
                            [|  by CrashBandicot   |]
                            [+++++++++++++++++++++++]
	                     
";

open (file, "<$ARGV[0]") || die "[-] Open the Proxy list file Nigga !\n\n  Usage : $0 maillist.txt   ";
my @file = <file>;
close file;

print "\n [+] ".scalar(@file)." Proxy Charged \n\n";
print "  [+] Try Load Proxy !\n\n";

foreach $proxxy(@file) {  

	if($proxxy =~ m/(.*)/) {

		$zebi = "'$1',";
        xsave($zebi);
} 

}
sub xsave { 
$ma = $_[0];
		open (a, ">>proxarray.txt");
        print a  "$ma";
        close a; 

}
