#!/usr/bin/perl
# Mr_Anarshi_T , Magnom , Ghosty , Leet Haxor.
# don't change right please noob
# old project

use LWP::UserAgent;

system $^O eq 'MSWin32' ? 'cls' : 'clear';

print "\t      *****************\n\t      Dorker Google\n\t      by CrashBandicot\n\t      *****************\n\n\n";
print "[+] Dork : ";
chomp($dork = <STDIN>);
print "\n [+] Prox File :";
chomp($file = <STDIN>);
open (file, "<$file") || die "[-] Open the Mail list file Nigga !\n\n  Usage : $0 maillist.txt   ";
my @file = <file>;
close file;

foreach $prox(@file) {
for ($i = 0; $i < 1000; $i += 13) {
	 $ua = LWP::UserAgent->new();
         $ua->proxy('http', 'http://'.$prox.'/');
	 $ua->agent("Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36");
     $res = $ua->get("http://ajax.googleapis.com/ajax/services/search/web?v=1.0&rsz=8&q=".$dork."&start=".$i."&filter=1&safe=off")->content;

        while($res =~ m/\"url\":\"(.*?)\"/g) { 
        	$site = $1;

        print $site."\n";

       open(SAVE , ">>googlelist.txt");
       print SAVE $site."\n";
       close(SAVE);
        }
    }
}
__END__
