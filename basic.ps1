$Myvariable = "what is your name?"
$Myvariable.GetType()


# comparison operator
2 -eq 3
2 -ne 4
2 -lt 1
2 -gt 5
2 -ge 4
2 -le 5

# Arrays - it is a data structure it can hold multiple values
$a = @(1,2,3,4,5,6)
$a.Count
$a.GetType()

$b = 1,2,3,4,5
$b.GetType()
 
# Foreach looping construct
$a = 1 .. 10

foreach ($i in $a)
{
    $i * 2
}

#hashnode -- dictionary

$settings = @{
    "AppName" = "App1"
    "Version" = 1.0.0
    "maxusers" = 100
}

$settings["AppName"]
$settings["version"] = "2.0.0"
$settings["version"]

# print the all key and values
$settings = @{
    "AppName" = "App1"
    "Version" = 1.0.0
    "maxusers" = 100
}
foreach($i in $settings)
{
    $i
}

#print the keys
$settings = @{
    "AppName" = "App1"
    "Version" = 1.0.0
    "maxusers" = 100
}
foreach($i in $settings.keys)
{
    $i
}


$settings = @{
    "AppName" = "App1"
    "Version" = 1.0.0
    "maxusers" = 100
}
foreach($i in $settings.keys)
{
    $settings[$i]
}


#Enumerator
$settings = @{
    "AppName" = "App2"
    "App_Version" = 1.2.1
    "maxusers" = 200
 }
foreach ($item in $settings.GetEnumerator()) {
    Write-Output "$($item.Key) : $($item.Value)"
}


=========================
$settings = @{
    "AppName" = "App1"
    "Version" = 1.0.0
    "maxusers" = 100
}
#create custom object
$person = [PSCustomObject]@{
    FirstName = "John"
    LastName  = "Doe"
    Age = "30"
    Occupation = "Cloud Engineer"
}
"$FullName : $($person.FirstName)"


#List of custom object
$employee = @(
    [PSCustomObject]@{Name = "Dinesh" ; Age = 20 ;Role = "Cloud Engineer"}
    [PSCustomObject]@{Name = "Tom" ; Age = 23 ;Role = "AWS Engineer"}
    [PSCustomObject]@{Name = "Alan" ; Age = 22 ;Role = "Linux Engineer"}
)


