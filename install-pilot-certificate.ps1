# Public certificates only. Run as the same Windows user who generated device.csr.
$ErrorActionPreference = 'Stop'
if ((Get-CimInstance Win32_BIOS).SerialNumber.Trim() -ne 'W4NXCV04434815A') { throw 'Wrong laptop. Stop.' }
$folder = Join-Path ([Environment]::GetFolderPath('Desktop')) 'PL-ZT-Pilot'
New-Item -ItemType Directory -Force -Path $folder | Out-Null
$root = Join-Path $folder 'pl-pilot-ca.cer'
$leaf = Join-Path $folder 'device.cer'
@'
-----BEGIN CERTIFICATE-----
MIIESDCCArCgAwIBAgIULZ+C+IOj4T3xmaOyG2pzYejriRIwDQYJKoZIhvcNAQEL
BQAwMDEuMCwGA1UEAwwlUEwgWmVybyBUcnVzdCBQaWxvdCBDbGllbnQgQ0EgMjAy
Ni0xMTAeFw0yNjExMTAxNTExMDNaFw0yNjEyMTAxNTExMDNaMDAxLjAsBgNVBAMM
JVBMIFplcm8gVHJ1c3QgUGlsb3QgQ2xpZW50IENBIDIwMjYtMTEwggGiMA0GCSqG
SIb3DQEBAQUAA4IBjwAwggGKAoIBgQDH5PHHAEiWWFvadMnvkATSMUBTAEywWw5b
lTXAPa7dGx8FGsFWwCxo55VJOj/vRKfa80gkblc5b3r4O+n7Lw5Vku4jQmyLxbr9
GNf807tKRWyqqe/OFmFONTpXfhJPoLNaw35V5LmMy+qWdjpomYbkLiGbdvEFdz/b
9P5ZSkROY/L+lBbhIylk0erh/dT9qIULQLuUdP8lHcyI03fBoLmJ1R5a3X4AsRmA
+jbrzW6vM/c9ubDusZb4PB/7RxIN5Z52/VxuC5zBWyvgGUzb4HjlEd2JknqW5XhI
2cZXfWKhwE8McmGzNuiEdhETm4ABuf+Ag7iNtqi1yyNXDWzW24uH6ORRVKkg4LKm
ErNBlxYaruDhJLGyHMU12T3HVndjyjv7XLoUxnfu+3a0S6JC9iOs6eHo0yRgPKy/
ilwty8I+4ftKaJ9SdC+1yaf2wh5tb1ljQS726y04NjrZoQdU04GTDUsU8/0eflsW
3CaKeoJ/LYk+HdJ4f6Mnw1W4i44i958CAwEAAaNaMFgwHQYDVR0OBBYEFONyuHfL
Qsvo66Ni0Hf/dBa+lFf8MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQD
AgEGMBMGA1UdJQQMMAoGCCsGAQUFBwMCMA0GCSqGSIb3DQEBCwUAA4IBgQBZmIbI
hSTA2Hehj077yssWuvwzYR3zXh4OnLqnrfqwn7BxRR7q6wlg5Pks+vZXOPjTD4Uz
pZcG3hbeJk/PzFjVi5FiHdl7uJX9/b4ozvnCDr6tOkeHvyIUayt7MkI5IMNbTqOd
+Vdhi41iP6XlzP80Ist23whsOD0haHlOXIcAYdLXN7fACzd14xMIp5oOE9riSDDX
rbqhys4iJrm4gsn1Z78a9/IrY2XWd5hEtDYjdULRFPWaKu+ldbGs5AaLHdv6h6A6
UbhyDsadCtpCR10hC82S84tBtZjIBA5xFhrpZZpLW/TNACoyDjvGR8Y74M1EoKDc
dbbSOpCQgqPPSFD1PES7r/V6FY384r+DmCYEE+b6AMX3UBXWu9dzobvUrzGJrO16
FmRDHJpIzaHO+TpGnn10gi3i6H//En4tXzFTHFDjZ702vW39FrCCqoJ8xGomo10s
HZp0uqXixIw/T+fTeE+iuNEqHqwuA0CtKcLATctq/YEayAKpXTiUDHS12KQ=
-----END CERTIFICATE-----
'@ | Set-Content $root -Encoding ascii
@'
-----BEGIN CERTIFICATE-----
MIID1jCCAj6gAwIBAgIRAMuvrOv0kn77eEmtzhnkRLwwDQYJKoZIhvcNAQELBQAw
MDEuMCwGA1UEAwwlUEwgWmVybyBUcnVzdCBQaWxvdCBDbGllbnQgQ0EgMjAyNi0x
MTAeFw0yNjExMTAxNTExMDNaFw0yNjExMjQxNTExMDNaMCYxJDAiBgNVBAMMG1BM
LVpULVBJTE9ULVc0TlhDVjA0NDM0ODE1QTCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBAM4ZqQWLiLOzNmZW/ihfK7bxrC+CTX+9cACFBDk+YhWVlTxu41BW
SSJoOhvhST1lJR6kLo4sEp2kqcbOkBIhMgRgpf7J//4JhxHRLw7A+BA1C3Sgve1J
eg3jx7iDR549et4QqgkAEkZC47BPgbuIdA7WOeMv7WFgk4qDc8hgkINVXj2FULhA
GWR/iymdcyFq/gOswlxqds2B2J307U+49RxBjr6tyjsjBedQ1AVJtsWWbQFSnJ5g
vzWg30FiUtxmWLP7u1uh7G19W5BqFPR0THN1BuZBFDul6ORgYsqqgvuhmBz9HbuG
TwJQy4sr5qzy5yG7u6p7kK/sevXJlhp4YOkCAwEAAaN1MHMwDAYDVR0TAQH/BAIw
ADAOBgNVHQ8BAf8EBAMCBaAwEwYDVR0lBAwwCgYIKwYBBQUHAwIwHQYDVR0OBBYE
FMdDYnwpybJ2TxDgwMug1zbOIB+nMB8GA1UdIwQYMBaAFONyuHfLQsvo66Ni0Hf/
dBa+lFf8MA0GCSqGSIb3DQEBCwUAA4IBgQBsYmnkdnP9qWS5jWBEK2m7l5HXqma9
SdV94AnSP53QRb5iAlIaFLQ1LkXW60LbyrtGexGrol74Ia41/9ucKKIkAJ+WPGba
TjEqKDt51HAdBH3x2erlPeddO6wsAt8sPYnUszUylFFNBx5Hr3ANZd7vlvgYUhdo
AXuEftjt8UiTa+fdsECfgtODs5lOttD4lShZNkXjZvD9wDcLna2yz6+CB8thjQ9Y
8Ab3gBKajGv3s+l2+X8E0FyapRQi3dBAGY9VeIU3oUPvLo33h8gzE27fDi6vL/uu
Dv4FMG46E3eL68d//qVvvLomwT8oZM3E+lLEl7tj26cX4C6XNKMy+TYDaUgQvcmL
JtoiJHaDU+ysWs0cujgaJ02OwD/+mHLjS5Ow7/gAqBcu5jv4t9dQfSM7GP0h97XP
EN5P0fajR/fCe0PVaAiGku07GXDPDB9nwq6tB88VaS3PlKRTnAmoK18XroJXRP6N
ebYBYXYBGA80EM/R/d+3qHxVFdWyTBBT+iM=
-----END CERTIFICATE-----
'@ | Set-Content $leaf -Encoding ascii
# Add chain material to Intermediate CAs, NOT Trusted Root Certification Authorities.
& certutil.exe -user -addstore CA $root
if ($LASTEXITCODE -ne 0) { throw 'CA-chain import failed. Send the error.' }
& certreq.exe -accept -user $leaf
if ($LASTEXITCODE -ne 0) { throw 'Certificate acceptance failed. Send the error.' }
$expected = [System.Security.Cryptography.X509Certificates.X509Certificate2]::new($leaf)
$cert = Get-Item ("Cert:\CurrentUser\My\" + $expected.Thumbprint)
if (-not $cert.HasPrivateKey) { throw 'No matching private key. Stop.' }
$rsa = [System.Security.Cryptography.X509Certificates.RSACertificateExtensions]::GetRSAPrivateKey($cert)
try {
    if ($rsa -isnot [System.Security.Cryptography.RSACng]) { throw 'Key is not a CNG key. Stop.' }
    $provider = $rsa.Key.Provider.Provider
    $export = $rsa.Key.ExportPolicy.ToString()
    if ($provider -ne 'Microsoft Platform Crypto Provider' -or $export -ne 'None') {
        throw "Unexpected key settings: provider=$provider export=$export. Stop."
    }
    $data = [Text.Encoding]::UTF8.GetBytes('PL device pilot key possession check')
    $sig = $rsa.SignData($data, [Security.Cryptography.HashAlgorithmName]::SHA256, [Security.Cryptography.RSASignaturePadding]::Pkcs1)
    if (-not $rsa.VerifyData($data, $sig, [Security.Cryptography.HashAlgorithmName]::SHA256, [Security.Cryptography.RSASignaturePadding]::Pkcs1)) {
        throw 'Key signature test failed. Stop.'
    }
    [pscustomobject]@{
        Subject = $cert.Subject
        HasPrivateKey = $cert.HasPrivateKey
        Provider = $provider
        ExportPolicy = $export
        KeySignatureTest = 'Passed'
        Expires = $cert.NotAfter
    } | Format-List
} finally { if ($rsa) { $rsa.Dispose() } }
