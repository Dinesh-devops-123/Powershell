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