#!/usr/bin/perl
# Mr_Anarshi_T , Magnom , Ghosty , Leet Haxor.
# old project

use LWP::UserAgent;

system $^O eq 'MSWin32' ? 'cls' : 'clear';

print "\t      *****************\n\t      Dorker Bing\n\t      by CrashBandicot\n\t      *****************\n\n\n";
print "[+] Dork = ";
chomp($dork = <STDIN>);
print "\n";
for ($i = 0; $i < 1000; $i += 13) {
	 $ua = LWP::UserAgent->new();
	 $ua->agent("Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36");
     $res = $ua->get("http://www.bing.com/search?q=".$dork."&go=Submit+Query&qs=bs&filt=all&first=".$i."&FORM=PERE")->content;

        while($res =~ m/<li class=\"b_algo\"><h2><a href=\"?http:\/\/([^>\"]*)\//g) {
        	$site = "http://".$1;
      if($site =~ /http:\/\/(.*)\/(.*)\//){ $site = $1; 
}elsif($site =~ /http:\/\/(.*)\/(.*)/){$site = $1; 
}elsif($site =~ /http:\/\/(.*)\//){$site = $1;
}elsif($site =~ /http:\/\/(.*)/){$site = $1;
}elsif($site =~ /(.*)\//){$site = $1;
}elsif($site =~ /http:\/\/(.*)\/(.*)/) {$site = $1; 
}

        print "http://".$site."/\n";


       open(SAVE , ">>List.txt");
       print SAVE "http://".$site."/\n";
       close(SAVE);
        }
    }
__END__
