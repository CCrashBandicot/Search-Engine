#!/usr/bin/perl
# Mr_Anarshi_T , Magnom , Ghosty , Leet Haxor.
# don't change right please noob
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
	 $ua->default_header('Cookie' => "DUP=Q=PSXGUKmNvajefwA97iCO_Q2&T=242618299&A=0&IG=0EBA8D683E8C45DA851B5832FA4E0006; MUID=3CC6FFCD97AE639632EBF95193AE6066; MUIDB=3CC6FFCD97AE639632EBF95193AE6066; SRCHD=D=3896617&AF=MOZSBR; SRCHUID=V=2&GUID=D1F5FF33F6EE47838F259BA42743875B; SRCHUSR=AUTOREDIR=0&GEOVAR=&DOB=20141217; SRCHHPGUSR=CW=1349&CH=657&DPR=1&ADLT=OFF&ISRHTTPS=1; _UR=OMW=1; _HOP=; _SS=SID=DB22F364D53B4F829F92E9E23BE464B7&bIm=979961&HV=1441763905&PC=MOZI; _EDGE_S=mkt=en-us&SID=38381223097C678622A71A3E08706685; SCRHDN=ASD=0&DURL=#; WLS=TS=63577360699; SRCHS=PC=MOZI");
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
