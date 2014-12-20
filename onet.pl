#!/usr/bin/perl
# Mr_Anarshi_T , Magnom , Ghosty , Leet Haxor
#
#   ***********************************
#   Dorker Onet.pl (EnHanced by Google).
#   ***********************************

use LWP::UserAgent;
use URI::Escape;

system $^O eq 'MSWin32' ? 'cls' : 'clear';

print q {
             *****************
             | Onet Dorker   |
             | CrashBandicot |
             *****************

 };

 print "\n [+] Dork = ";
 chomp($dorks = <STDIN>);

for($i=1;$i<60;$i++) { 
 $ua = LWP::UserAgent->new();
 $ua->agent("Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/531.7.2 (KHTML, like Gecko) Version/5.1 Safari/531.7.2");
 my $dork = uri_escape($dorks);
 $req = $ua->get("http://szukaj.onet.pl/0,".$i.",query.html?qt=".$dork)->content;
 while($req =~m/<div class=\"link\"> <a href=\"(.*?)\">/g) {

 	print $1."\n";

 	open(SAVE,">>OnetList.txt");
 	print SAVE "$1\n";
 	close(SAVE);
 }

}
