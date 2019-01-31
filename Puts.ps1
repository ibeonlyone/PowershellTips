function Global:Puts($str, $flag, $color){
    
    if($flag -eq 'nodate'){
        if($color -eq $Null){
            Write-Host ("                   " + $str)
        }else{
            Write-Host ("                   " + $str) -ForeGroundColor $color -BackGroundColor Black
        }
        Out-File -InputObject "                   $str" -Filepath $LogFileName -Encoding default -append
    }elseif($flag -eq 'notab'){
        if($color -eq $Null){
            Write-Host $str
        }else{
            Write-Host $str -ForeGroundColor $color -BackGroundColor Black
        }
        Out-File -InputObject $str -Filepath $LogFileName -Encoding default -append
    }else{
        $DateTime = Get-Date -uformat "%Y/%m/%d %H:%M:%S"
        if($color -eq $Null){
            Write-Host ($DateTime + " " + $str)
        }else{
            Write-Host ($DateTime + " " + $str) -ForeGroundColor $color -BackGroundColor Black
        }
        Out-File -InputObject "$DateTime $str" -Filepath $LogFileName -Encoding default -append
    }
}
