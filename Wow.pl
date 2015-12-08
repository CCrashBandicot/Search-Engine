#!/usr/bin/perl
# Mr_Anarshi_T , Magnom , Ghosty , Leet Haxor
#
#   ************************************
#    Dorker Wow.com (Enhanced by Google)
#   ************************************

use LWP::UserAgent;
use URI::Escape;

system $^O eq 'MSWin32' ? 'cls' : 'clear';

print q {
             *****************
             | Wow Dorker    |
             | CrashBandicot |
             *****************

 };

 print "\n [+] Dork = ";
 chomp($dorks = <STDIN>);

for($i=1;$i<40;$i++) { 
 $ua = LWP::UserAgent->new();
 $ua->agent("Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/531.7.2 (KHTML, like Gecko) Version/5.1 Safari/531.7.2");
 my $dork = uri_escape($dorks);
 $req = $ua->get("http://www.wow.com/search?v_t=na&page=".$i."&q=".$dork."&s_it=bottomsearchbox.nrf&oreq=f6bd7807ddc744188c9c06ea89a525a1")->content;

 while($req =~m/href=\"(.*?)\" property=\"f:title\"/g) {

 	print $1."\n";

 	open(SAVE,">>Wow.txt");
 	print SAVE "$1\n";
 	close(SAVE);
 }

}
