#!/usr/bin/perl
# Mr_Anarshi_T , Magnom , Ghosty , Leet Haxor
#
#   *********************
#    Dorker Ask.com   
#   ******************

use LWP::UserAgent;
use URI::Escape;

system $^O eq 'MSWin32' ? 'cls' : 'clear';

print q {
             *****************
             | Ask Dorker    |
             | CrashBandicot |
             *****************

 };

 print "\n [+] Dork = ";
 chomp($dorks = <STDIN>);

for($i=1;$i<60;$i++) { 
 $ua = LWP::UserAgent->new();
 $ua->agent("Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/531.7.2 (KHTML, like Gecko) Version/5.1 Safari/531.7.2");
 my $dork = uri_escape($dorks);
 $req = $ua->get("http://fr.ask.com/web?q=".$dork."&page=".$i)->content;
 while($req =~m/<span id=\"(.*?)\" class=\"txt3\">(.*?)<\/span>/g) # d
  {

 	print "http://".$2."\n";

 	open(SAVE,">>Ask.txt");
 	print SAVE "http://$2\n";
 	close(SAVE);
 }

}
