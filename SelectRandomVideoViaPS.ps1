<#

This script will grab a random video from a folder and play it

#>

$vidFormats = @("*.mp4")
$vidFolder = "C:\Users\tamma\Downloads\For_IG";

function runRandomVideo(){
    gci $vidFolder -include $vidFormats -recurse | Get-Random -Count 1 | Invoke-Item;
}

runRandomVideo;

#the line below is not needed because Invoke-Item makes video commit's default action (which is play)
#start "$vidFolder\Damn.mp4";