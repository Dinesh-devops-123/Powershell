# Get and display running and stopped services
$runningservices = Get-service | Where-Object {$_.status -eq 'Running'} | select-object Name, Status
$reporteddata += $runningservices 

$reporteddata | Out-File -FilePath "C:\Users\Dinesh\RunningServices.txt"

$Stoppedservices = Get-service | Where-Object {$_.status -eq 'stopped'}
$stopeddata += $Stoppedservices

$stopeddata | Out-File -FilePath "C:\Users\Dinesh\StoppedServices.txt"




# Display disk usage for C: drive and top 10 processes by CPU usage
Get-Volume -DriveLetter C | Select-Object DriveLetter, 
    @{Name="Total Size (GB)"; Expression={"{0:N2}" -f ($_.Size / 1GB)}}, 
    @{Name="Free Space (GB)"; Expression={"{0:N2}" -f ($_.SizeRemaining / 1GB)}}

# Top 10 processes by CPU usage
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 Name, CPU