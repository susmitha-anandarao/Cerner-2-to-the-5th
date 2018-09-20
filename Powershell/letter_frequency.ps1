# compute number of occurance of each letter(converted to uppercase) in the given input file
# cerner_2^5_2018
function frequency ($string) {
    $arr = $string.ToUpper().ToCharArray() |where{$_ -match '[A-KL-Z]'} 
    $n = $arr.count
    $arr | group | foreach{
        [pscustomobject]@{letter = "$($_.name)"; count = "$($_.count)"}
    } | sort letter
}
$file = "input.txt"
frequency $(get-content $file -Raw)
