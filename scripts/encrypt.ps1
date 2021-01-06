[Reflection.Assembly]::LoadWithPartialName("System.Security") 

$connStr = $args[0]

$key = [Byte[]](122, 2, 87, 224, 212, 156, 97, 98, 4, 1, 78, 92, 44, 43, 201, 14)
$IV = [Byte[]](73, 37, 17, 71, 1, 31, 33, 77)

$r = New-Object System.Security.Cryptography.RC2CryptoServiceProvider
$r.Key = $key
$r.IV = $IV
$ms = New-Object IO.MemoryStream
$c = $r.CreateEncryptor()
$cs = New-Object Security.Cryptography.CryptoStream $ms,$c,"Write"
$sw = New-Object IO.StreamWriter $cs
$sw.Write($connStr)

$sw.Close()  
$cs.Close() 
$ms.Close() 
$r.Clear() 

[byte[]]$result = $ms.ToArray() 

$resultString = [Convert]::ToBase64String($result);
Write-Output $resultString
$DeploymentScriptOutputs['text'] = $resultString