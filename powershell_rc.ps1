#close powershell with alt F4
Set-PSReadlineKeyHandler -Chord Alt+F4 -Function ViExit

#display messages
echo "commands - see a list of commands"
echo "links - see a list of links"
echo "spots - see a list of places"

function commands(){echo "see dc dd profiles down refresh links spots"}
function links(){echo "home box g mix web10 web20" }
function spots(){echo "album caps shots pics self starlog"}

# commands
function see(){explorer .}
function dc(){docker-compose up --build}
function dd(){docker-compose down}
function profiles(){code $env:HOMEPATH/Dropbox/shell_profiles}
function down($url){youtube-dl -o "%(title)s.%(ext)s" --format mp4 --write-description  $url} #-x -k}
function serve(){python -m http.server}
function refresh(){. $profile}

$documents = [environment]::getfolderpath("mydocuments")
$videos = [environment]::getfolderpath("myvideos")

#links
function box(){cd ~/Dropbox}
function g(){cd $documents/GitHub}
function home(){cd ~}
function mix(){cd "~\Dropbox\lil_k\mixxx"}
function web10(){cd $documents/GitHub/web10}
function net(){cd $documents/GitHub/web10-network}
function web20(){cd $documents/GitHub/web20}

#spots
function starlog{cd "~\Dropbox\starlog"; start notepad++ .}
function album{cd "~\Dropbox\lil_k\3022";see}
function caps(){cd "~\Dropbox\Capture";see}
function shots(){cd "~\Dropbox\Screenshots";see}
function pics(){cd "~\Dropbox\cute pics";see}
function vids(){cd $videos ;see}
function self(){cd "~\Dropbox\Self Learning";see}
function techno(){start chrome "https://open.spotify.com/playlist/37i9dQZF1E8OsggthlNulS?si=b3a911376edd4bda"}
