#!/usr/bin/perl
# Mr_Anarshi_T , Magnom , Ghosty , Leet Haxor
#
#   *********************
#    Dorker Aol.com   
#   ******************

use LWP::UserAgent;
use URI::Escape;

system $^O eq 'MSWin32' ? 'cls' : 'clear';

print q {
             *****************
             | Aol Dorker    |
             | CrashBandicot |
             *****************

 };

 print "\n [+] Dork = ";
 chomp($dorks = <STDIN>);

for($i=1;$i<40;$i++) { 
 $ua = LWP::UserAgent->new();
 $ua->agent("Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/531.7.2 (KHTML, like Gecko) Version/5.1 Safari/531.7.2");
 my $dork = uri_escape($dorks);
 $req = $ua->get("http://search.aol.com/aol/search?v_t=na&q=".$dork."&s_it=searchbox.webhome&page=".$i)->content;
 while($req =~m/href=\"(.*?)\" property=\"f:title\"/g) {

 	print $1."\n";

 	open(SAVE,">>Aol.txt");
 	print SAVE "$1\n";
 	close(SAVE);
 }

}
