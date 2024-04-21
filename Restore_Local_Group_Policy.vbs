' Created by: Shawn Brink
' Created on: March 22nd 2017
' Tutorial: https://www.tenforums.com/tutorials/79994-backup-restore-local-group-policy-editor-settings-windows-10-a.html


If WScript.Arguments.length =0 Then
  		
Set objShell = CreateObject("Shell.Application")
objShell.ShellExecute "wscript.exe", Chr(34) & WScript.ScriptFullName & Chr(34) & " Run", , "runas", 1 

Else 
Set oShell = WScript.CreateObject ("WScript.Shell")

oShell.run ("cmd.exe /c RD /S /Q %SystemRoot%\System32\GroupPolicy\Machine"),0

oShell.run ("cmd.exe /c RD /S /Q %SystemRoot%\System32\GroupPolicy\User"),0

oShell.run ("cmd.exe /c xcopy /c /e /h /i /q /y %userprofile%\Desktop\Local-Group-Policy-Backup\Machine %SystemRoot%\System32\GroupPolicy\Machine"),0

oShell.run ("cmd.exe /c xcopy /c /e /h /i /q /y %userprofile%\Desktop\Local-Group-Policy-Backup\User %SystemRoot%\System32\GroupPolicy\User"),0

oShell.run ("cmd.exe /c xcopy /c /e /h /i /q /y %userprofile%\Desktop\Local-Group-Policy-Backup\GroupPolicyUsers %SystemRoot%\System32\GroupPolicyUsers"),0

WScript.Sleep 2000

oShell.run "cmd.exe /k gpupdate /force"

End If 

'' SIG '' Begin signature block
'' SIG '' MIIi/QYJKoZIhvcNAQcCoIIi7jCCIuoCAQExCzAJBgUr
'' SIG '' DgMCGgUAMGcGCisGAQQBgjcCAQSgWTBXMDIGCisGAQQB
'' SIG '' gjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIBAAIB
'' SIG '' AAIBAAIBAAIBADAhMAkGBSsOAwIaBQAEFMgFQ/YBNF3h
'' SIG '' 1vUmKKyZSUTyFN6WoIIeWzCCBVgwggRAoAMCAQICEDmt
'' SIG '' aqw/qH/JaX11L5fdBc8wDQYJKoZIhvcNAQELBQAwfTEL
'' SIG '' MAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFu
'' SIG '' Y2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UE
'' SIG '' ChMRQ09NT0RPIENBIExpbWl0ZWQxIzAhBgNVBAMTGkNP
'' SIG '' TU9ETyBSU0EgQ29kZSBTaWduaW5nIENBMB4XDTE1MDIy
'' SIG '' MzAwMDAwMFoXDTIwMDIyMzIzNTk1OVowgZsxCzAJBgNV
'' SIG '' BAYTAkdCMRAwDgYDVQQRDAdXTjYgMEVKMRMwEQYDVQQI
'' SIG '' DApMYW5jYXNoaXJlMQ4wDAYDVQQHDAVXaWdhbjEbMBkG
'' SIG '' A1UECQwSMTcgSGlnaGZpZWxkIERyaXZlMRswGQYDVQQK
'' SIG '' DBJEZXNpZ25lciBNZWRpYSBMdGQxGzAZBgNVBAMMEkRl
'' SIG '' c2lnbmVyIE1lZGlhIEx0ZDCCASIwDQYJKoZIhvcNAQEB
'' SIG '' BQADggEPADCCAQoCggEBALgLwgjumFKY9o5zlDXlBK0s
'' SIG '' 9tXyRLqA52LOnHb9dah0H9sp/f35y8JrHRvB2QPfzjT+
'' SIG '' 2jbe6uKeN+w+fYWitAUaBK8BGPU+C62wTAvIEK47jPsq
'' SIG '' Z7XHV2vRMxMFwolEBRslF8gt+0ogozFb8FaQab7We242
'' SIG '' WMoI/PaYc25RSJkXUg1T5YFcjB2U+BHQ1z8pvnF9RzC0
'' SIG '' fQShLlsdUg09op4Dh5c6pEN2qpByzBkNmy67lyYGX5PK
'' SIG '' /2OpR1MjZisBLSnGPMsfLhLyITnpQQD8R98zj0y24F5T
'' SIG '' w/Nyn56ySIt8JJSF0eQdacOB9enUSwnsUD85jMaX8dse
'' SIG '' KuQVI3nh/bMCAwEAAaOCAbMwggGvMB8GA1UdIwQYMBaA
'' SIG '' FCmRYP+KTfrr+aZquM/55ku9Sc4SMB0GA1UdDgQWBBQ0
'' SIG '' QI8xs6RAxruTImCqX1oj4BcrazAOBgNVHQ8BAf8EBAMC
'' SIG '' B4AwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEF
'' SIG '' BQcDAzARBglghkgBhvhCAQEEBAMCBBAwRgYDVR0gBD8w
'' SIG '' PTA7BgwrBgEEAbIxAQIBAwIwKzApBggrBgEFBQcCARYd
'' SIG '' aHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwQwYD
'' SIG '' VR0fBDwwOjA4oDagNIYyaHR0cDovL2NybC5jb21vZG9j
'' SIG '' YS5jb20vQ09NT0RPUlNBQ29kZVNpZ25pbmdDQS5jcmww
'' SIG '' dAYIKwYBBQUHAQEEaDBmMD4GCCsGAQUFBzAChjJodHRw
'' SIG '' Oi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDb2Rl
'' SIG '' U2lnbmluZ0NBLmNydDAkBggrBgEFBQcwAYYYaHR0cDov
'' SIG '' L29jc3AuY29tb2RvY2EuY29tMCQGA1UdEQQdMBuBGXN1
'' SIG '' cHBvcnRAZGVzaWduZXJtZWRpYS5jb20wDQYJKoZIhvcN
'' SIG '' AQELBQADggEBAB/SPLay9AFBRlm7Mo+cMlZ2xT8nc7xh
'' SIG '' luqdotHP4xB50cWJQUH9Rv+GE/UPTltn9/UY4vz4Xdv+
'' SIG '' cZNIyGwmbT1KBisSAlMKUCSzD5FGlvYZ/7P9GUj1vp93
'' SIG '' t7/XshsCi+SwpU5Lezmqh94xcZzre9CbCxt8+aeh/EBK
'' SIG '' AHnfQ2Qvgk8VaMP+MPV0GKWq5AbCSSyqvYyuUl+Z6aMk
'' SIG '' 5iwLth6dWlO23Dkn6uvkp5ITBqqv+NJVodNN9fQJFDK0
'' SIG '' ypbNjWpRDD8Ggpn2UE808efIjC66v06sBI43WrnCz9in
'' SIG '' YY3Ds69lyPFK66D7/uWUjslev0x+8B4oxYnEu0HkeCnN
'' SIG '' jf8wggXYMIIDwKADAgECAhBMqvnK22Nv4B/3TthbA4ad
'' SIG '' MA0GCSqGSIb3DQEBDAUAMIGFMQswCQYDVQQGEwJHQjEb
'' SIG '' MBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYD
'' SIG '' VQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0Eg
'' SIG '' TGltaXRlZDErMCkGA1UEAxMiQ09NT0RPIFJTQSBDZXJ0
'' SIG '' aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0xMDAxMTkwMDAw
'' SIG '' MDBaFw0zODAxMTgyMzU5NTlaMIGFMQswCQYDVQQGEwJH
'' SIG '' QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAw
'' SIG '' DgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8g
'' SIG '' Q0EgTGltaXRlZDErMCkGA1UEAxMiQ09NT0RPIFJTQSBD
'' SIG '' ZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTCCAiIwDQYJKoZI
'' SIG '' hvcNAQEBBQADggIPADCCAgoCggIBAJHoVJLSClaxrA0k
'' SIG '' 3cXPRGd0mSs3o30jcABxvFPfxPoqEo9LfxBWvZ9wcrdh
'' SIG '' f8lLDxenPeOwBGHu/xGXx/SGPgr6Plz5k+Y0etkUa+ec
'' SIG '' s4Wggnp2r3GQ1+z9DfqcbPrfsIL0FH75vsSmL09/mX+1
'' SIG '' /GdDcr0MANaJ62ss0+2PmBwUq37l42782KjkkiTaQ2ti
'' SIG '' uFX96sG8bLaL8w6NmuSbbGmZ+HhIMEXVreENPEVg/DKW
'' SIG '' USe8Z8PKLrZr6kbHxyCgsR9l3kgIuqROqfKDRjeE6+jM
'' SIG '' gUhDZ05yKptcvUwbKIpcInu0q5jZ7uBRg8MJRk5tPpn6
'' SIG '' lRfafDNXQTyNUe0LtlyvLGMa31fIP7zpXcSbr0WZ4qNa
'' SIG '' JLS6qVY9z2+q/0lYvvCo//S4rek3+7q49As6+ehDQh6J
'' SIG '' 2ITLE/HZu+GJYLiMKFasFB2cCudx688O3T2plqFIvTz3
'' SIG '' r7UNIkzAEYHsVjv206LiW7eyBCJSlYCTaeiOTGXxkQMt
'' SIG '' cHQC6otnFSlpUgK7199QalVGv6CjKGF/cNDDoqosIapH
'' SIG '' ziicBkV2v4IYJ7TVrrTLUOZr9EyGcTDppt8WhuDY/0Dd
'' SIG '' +9BCiH+jMzouXB5BEYFjzhhxayvspoq3MVw6akfgw3lZ
'' SIG '' 1iAar/JqmKpyvFdK0kuduxD8sExB5e0dPV4onZzMv7NR
'' SIG '' 2qdH5YRTAgMBAAGjQjBAMB0GA1UdDgQWBBS7r34CPfqm
'' SIG '' 8TyEjq3uOJjs2TIy1DAOBgNVHQ8BAf8EBAMCAQYwDwYD
'' SIG '' VR0TAQH/BAUwAwEB/zANBgkqhkiG9w0BAQwFAAOCAgEA
'' SIG '' CvHVRoS3rlG7bLJNQRQAk0ycy+XAVM+gJY4C+f2wog31
'' SIG '' IJg8Ey2sVqKw1n4Rkukuup4umnKxvRlEbGE1opq0FhJp
'' SIG '' Wozh1z6kGugvA/SuYR0QGyqki3rF/gWm4cDWyP6ero8r
'' SIG '' uj2Z+NhzCVhGbqac9Ncn05XaN4NyHNNz4KJHmQM4XdVJ
'' SIG '' eQApHMfsmyAcByRpV3iyOfw6hKC1nHyNvy6TYie3OdoX
'' SIG '' GK69PAlo/4SbPNXWCwPjV54U99HrT8i9hyO3tklDeYVc
'' SIG '' uuuSC6HG6GioTBaxGpkK6FMskruhCRh1DGWoe8sjtxrC
'' SIG '' KIXDG//QK2LvpHsJkZhnjBQBzWgGamMhdQOAiIpugcaF
'' SIG '' 8qmkLef0pSQQR4PKzfSNeVixBpvnGirZnQHXlH3tA0rK
'' SIG '' 8NvoqQE+9VaZyR6OST275Qm54E9Jkj0WgkDMzFnG5jrt
'' SIG '' Ei5pPGyVsf2qHXt/hr4eDjJG+/sTj3V/TItLRmP+ADRA
'' SIG '' cMHDuaHdpnDiBLNBvOmAkepknHrhIgOpnG5vDmVPbIeH
'' SIG '' XvNuoPl1pZtA6FOyJ51KucB3IY3/h/LevIzvF9+3SQvR
'' SIG '' 8m4wCxoOTnbtEfz16Vayfb/HbQqTjKXQwLYdvjpOlKLX
'' SIG '' bmwLwop8+iDzxOTlzQ2oy5GSsXyF7LUUaWYOgufNzsgt
'' SIG '' plF/IcE1U4UGSl2frbsbX3QwggXgMIIDyKADAgECAhAu
'' SIG '' fIfMDpNKUv6U/Ry3zTSvMA0GCSqGSIb3DQEBDAUAMIGF
'' SIG '' MQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBN
'' SIG '' YW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYD
'' SIG '' VQQKExFDT01PRE8gQ0EgTGltaXRlZDErMCkGA1UEAxMi
'' SIG '' Q09NT0RPIFJTQSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0
'' SIG '' eTAeFw0xMzA1MDkwMDAwMDBaFw0yODA1MDgyMzU5NTla
'' SIG '' MH0xCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVy
'' SIG '' IE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
'' SIG '' BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMSMwIQYDVQQD
'' SIG '' ExpDT01PRE8gUlNBIENvZGUgU2lnbmluZyBDQTCCASIw
'' SIG '' DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKaYkGN3
'' SIG '' kTR/itHd6WcxEevMHv0xHbO5Ylc/k7xb458eJDIRJ2u8
'' SIG '' UZGnz56eJbNfgagYDx0eIDAO+2F7hgmz4/2iaJ0cLJ2/
'' SIG '' cuPkdaDlNSOOyYruGgxkx9hCoXu1UgNLOrCOI0tLY+Ai
'' SIG '' lDd71XmQChQYUSzm/sES8Bw/YWEKjKLc9sMwqs0oGHVI
'' SIG '' wXlaCM27jFWM99R2kDozRlBzmFz0hUprD4DdXta9/akv
'' SIG '' wCX1+XjXjV8QwkRVPJA8MUbLcK4HqQrjr8EBb5AaI+Jf
'' SIG '' ONvGCF1Hs4NB8C4ANxS5Eqp5klLNhw972GIppH4wvRu1
'' SIG '' jHK0SPLj6CH5XkxieYsCBp9/1QsCAwEAAaOCAVEwggFN
'' SIG '' MB8GA1UdIwQYMBaAFLuvfgI9+qbxPISOre44mOzZMjLU
'' SIG '' MB0GA1UdDgQWBBQpkWD/ik366/mmarjP+eZLvUnOEjAO
'' SIG '' BgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIB
'' SIG '' ADATBgNVHSUEDDAKBggrBgEFBQcDAzARBgNVHSAECjAI
'' SIG '' MAYGBFUdIAAwTAYDVR0fBEUwQzBBoD+gPYY7aHR0cDov
'' SIG '' L2NybC5jb21vZG9jYS5jb20vQ09NT0RPUlNBQ2VydGlm
'' SIG '' aWNhdGlvbkF1dGhvcml0eS5jcmwwcQYIKwYBBQUHAQEE
'' SIG '' ZTBjMDsGCCsGAQUFBzAChi9odHRwOi8vY3J0LmNvbW9k
'' SIG '' b2NhLmNvbS9DT01PRE9SU0FBZGRUcnVzdENBLmNydDAk
'' SIG '' BggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2Eu
'' SIG '' Y29tMA0GCSqGSIb3DQEBDAUAA4ICAQACPwI5w+74yjuJ
'' SIG '' 3gxtTbHxTpJPr8I4LATMxWMRqwljr6ui1wI/zG8Zwz3W
'' SIG '' GgiU/yXYqYinKxAa4JuxByIaURw61OHpCb/mJHSvHnsW
'' SIG '' MW4j71RRLVIC4nUIBUzxt1HhUQDGh/Zs7hBEdldq8d9Y
'' SIG '' ayGqSdR8N069/7Z1VEAYNldnEc1PAuT+89r8dRfb7Lf3
'' SIG '' ZQkjSR9DV4PqfiB3YchN8rtlTaj3hUUHr3ppJ2WQKUCL
'' SIG '' 33s6UTmMqB9wea1tQiCizwxsA4xMzXMHlOdajjoEuqKh
'' SIG '' fB/LYzoVp9QVG6dSRzKp9L9kR9GqH1NOMjBzwm+3eIKd
'' SIG '' XP9Gu2siHYgL+BuqNKb8jPXdf2WMjDFXMdA27Eehz8uL
'' SIG '' qO8cGFjFBnfKS5tRr0wISnqP4qNS4o6OzCbkstjlOMKo
'' SIG '' 7caBnDVrqVhhSgqXtEtCtlWdvpnncG1Z+G0qDH8ZYF8M
'' SIG '' mohsMKxSCZAWG/8rndvQIMqJ6ih+Mo4Z33tIMx7XZfiu
'' SIG '' yfiDFJN2fWTQjs6+NX3/cjFNn569HmwvqI8MBlD7jCez
'' SIG '' dsn05tfDNOKMhyGGYf6/VXThIXcDCmhsu+TJqebPWSXr
'' SIG '' fOxFDnlmaOgizbjvmIVNlhE8CYrQf7woKBP7aspUjZJc
'' SIG '' zcJlmAaezkhb1LU3k0ZBfAfdz/pD77pnYf99SeC7MH1c
'' SIG '' gOPmFjlLpzCCBmowggVSoAMCAQICEAMBmgI6/1ixa9bV
'' SIG '' 6uYX8GYwDQYJKoZIhvcNAQEFBQAwYjELMAkGA1UEBhMC
'' SIG '' VVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UE
'' SIG '' CxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGln
'' SIG '' aUNlcnQgQXNzdXJlZCBJRCBDQS0xMB4XDTE0MTAyMjAw
'' SIG '' MDAwMFoXDTI0MTAyMjAwMDAwMFowRzELMAkGA1UEBhMC
'' SIG '' VVMxETAPBgNVBAoTCERpZ2lDZXJ0MSUwIwYDVQQDExxE
'' SIG '' aWdpQ2VydCBUaW1lc3RhbXAgUmVzcG9uZGVyMIIBIjAN
'' SIG '' BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo2Rd/Hyz
'' SIG '' 4II14OD2xirmSXU7zG7gU6mfH2RZ5nxrf2uMnVX4kuOe
'' SIG '' 1VpjWwJJUNmDzm9m7t3LhelfpfnUh3SIRDsZyeX1kZ/G
'' SIG '' FDmsJOqoSyyRicxeKPRktlC39RKzc5YKZ6O+YZ+u8/0S
'' SIG '' eHUOplsU/UUjjoZEVX0YhgWMVYd5SEb3yg6Np95OX+Ko
'' SIG '' ti1ZAmGIYXIYaLm4fO7m5zQvMXeBMB+7NgGN7yfj95rw
'' SIG '' TDFkjePr+hmHqH7P7IwMNlt6wXq4eMfJBi5GEMiN6ARg
'' SIG '' 27xzdPpO2P6qQPGyznBGg+naQKFZOtkVCVeZVjCT88lh
'' SIG '' zNAIzGvsYkKRrALA76TwiRGPdwIDAQABo4IDNTCCAzEw
'' SIG '' DgYDVR0PAQH/BAQDAgeAMAwGA1UdEwEB/wQCMAAwFgYD
'' SIG '' VR0lAQH/BAwwCgYIKwYBBQUHAwgwggG/BgNVHSAEggG2
'' SIG '' MIIBsjCCAaEGCWCGSAGG/WwHATCCAZIwKAYIKwYBBQUH
'' SIG '' AgEWHGh0dHBzOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMw
'' SIG '' ggFkBggrBgEFBQcCAjCCAVYeggFSAEEAbgB5ACAAdQBz
'' SIG '' AGUAIABvAGYAIAB0AGgAaQBzACAAQwBlAHIAdABpAGYA
'' SIG '' aQBjAGEAdABlACAAYwBvAG4AcwB0AGkAdAB1AHQAZQBz
'' SIG '' ACAAYQBjAGMAZQBwAHQAYQBuAGMAZQAgAG8AZgAgAHQA
'' SIG '' aABlACAARABpAGcAaQBDAGUAcgB0ACAAQwBQAC8AQwBQ
'' SIG '' AFMAIABhAG4AZAAgAHQAaABlACAAUgBlAGwAeQBpAG4A
'' SIG '' ZwAgAFAAYQByAHQAeQAgAEEAZwByAGUAZQBtAGUAbgB0
'' SIG '' ACAAdwBoAGkAYwBoACAAbABpAG0AaQB0ACAAbABpAGEA
'' SIG '' YgBpAGwAaQB0AHkAIABhAG4AZAAgAGEAcgBlACAAaQBu
'' SIG '' AGMAbwByAHAAbwByAGEAdABlAGQAIABoAGUAcgBlAGkA
'' SIG '' bgAgAGIAeQAgAHIAZQBmAGUAcgBlAG4AYwBlAC4wCwYJ
'' SIG '' YIZIAYb9bAMVMB8GA1UdIwQYMBaAFBUAEisTmLKZB+0e
'' SIG '' 36K+Vw0rZwLNMB0GA1UdDgQWBBRhWk0ktkkynUoqeRqD
'' SIG '' S/QeicHKfTB9BgNVHR8EdjB0MDigNqA0hjJodHRwOi8v
'' SIG '' Y3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVk
'' SIG '' SURDQS0xLmNybDA4oDagNIYyaHR0cDovL2NybDQuZGln
'' SIG '' aWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEQ0EtMS5j
'' SIG '' cmwwdwYIKwYBBQUHAQEEazBpMCQGCCsGAQUFBzABhhho
'' SIG '' dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQQYIKwYBBQUH
'' SIG '' MAKGNWh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9E
'' SIG '' aWdpQ2VydEFzc3VyZWRJRENBLTEuY3J0MA0GCSqGSIb3
'' SIG '' DQEBBQUAA4IBAQCdJX4bM02yJoFcm4bOIyAPgIfliP//
'' SIG '' sdRqLDHtOhcZcRfNqRu8WhY5AJ3jbITkWkD73gYBjDf6
'' SIG '' m7GdJH7+IKRXrVu3mrBgJuppVyFdNC8fcbCDlBkFazWQ
'' SIG '' EKB7l8f2P+fiEUGmvWLZ8Cc9OB0obzpSCfDscGLTYkuw
'' SIG '' 4HOmksDTjjHYL+NtFxMG7uQDthSr849Dp3GdId0UyhVd
'' SIG '' kkHa+Q+B0Zl0DSbEDn8btfWg8cZ3BigV6diT5VUW8LsK
'' SIG '' qxzbXEgnZsijiwoc5ZXarsQuWaBh3drzbaJh6YoLbewS
'' SIG '' GL33VVRAA5Ira8JRwgpIr7DUbuD0FAo6G+OPPcqvao17
'' SIG '' 3NhEMIIGzTCCBbWgAwIBAgIQBv35A5YDreoACus/J7u6
'' SIG '' GzANBgkqhkiG9w0BAQUFADBlMQswCQYDVQQGEwJVUzEV
'' SIG '' MBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
'' SIG '' d3cuZGlnaWNlcnQuY29tMSQwIgYDVQQDExtEaWdpQ2Vy
'' SIG '' dCBBc3N1cmVkIElEIFJvb3QgQ0EwHhcNMDYxMTEwMDAw
'' SIG '' MDAwWhcNMjExMTEwMDAwMDAwWjBiMQswCQYDVQQGEwJV
'' SIG '' UzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQL
'' SIG '' ExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQDExhEaWdp
'' SIG '' Q2VydCBBc3N1cmVkIElEIENBLTEwggEiMA0GCSqGSIb3
'' SIG '' DQEBAQUAA4IBDwAwggEKAoIBAQDogi2Z+crCQpWlgHNA
'' SIG '' cNKeVlRcqcTSQQaPyTP8TUWRXIGf7Syc+BZZ3561JBXC
'' SIG '' mLm0d0ncicQK2q/LXmvtrbBxMevPOkAMRk2T7It6NggD
'' SIG '' qww0/hhJgv7HxzFIgHweog+SDlDJxofrNj/YMMP/pvf7
'' SIG '' os1vcyP+rFYFkPAyIRaJxnCI+QWXfaPHQ90C6Ds97bFB
'' SIG '' o+0/vtuVSMTuHrPyvAwrmdDGXRJCgeGDboJzPyZLFJCu
'' SIG '' WWYKxI2+0s4Grq2Eb0iEm09AufFM8q+Y+/bOQF1c9qjx
'' SIG '' L6/siSLyaxhlscFzrdfx2M8eCnRcQrhofrfVdwonVnwP
'' SIG '' YqQ/MhRglf0HBKIJAgMBAAGjggN6MIIDdjAOBgNVHQ8B
'' SIG '' Af8EBAMCAYYwOwYDVR0lBDQwMgYIKwYBBQUHAwEGCCsG
'' SIG '' AQUFBwMCBggrBgEFBQcDAwYIKwYBBQUHAwQGCCsGAQUF
'' SIG '' BwMIMIIB0gYDVR0gBIIByTCCAcUwggG0BgpghkgBhv1s
'' SIG '' AAEEMIIBpDA6BggrBgEFBQcCARYuaHR0cDovL3d3dy5k
'' SIG '' aWdpY2VydC5jb20vc3NsLWNwcy1yZXBvc2l0b3J5Lmh0
'' SIG '' bTCCAWQGCCsGAQUFBwICMIIBVh6CAVIAQQBuAHkAIAB1
'' SIG '' AHMAZQAgAG8AZgAgAHQAaABpAHMAIABDAGUAcgB0AGkA
'' SIG '' ZgBpAGMAYQB0AGUAIABjAG8AbgBzAHQAaQB0AHUAdABl
'' SIG '' AHMAIABhAGMAYwBlAHAAdABhAG4AYwBlACAAbwBmACAA
'' SIG '' dABoAGUAIABEAGkAZwBpAEMAZQByAHQAIABDAFAALwBD
'' SIG '' AFAAUwAgAGEAbgBkACAAdABoAGUAIABSAGUAbAB5AGkA
'' SIG '' bgBnACAAUABhAHIAdAB5ACAAQQBnAHIAZQBlAG0AZQBu
'' SIG '' AHQAIAB3AGgAaQBjAGgAIABsAGkAbQBpAHQAIABsAGkA
'' SIG '' YQBiAGkAbABpAHQAeQAgAGEAbgBkACAAYQByAGUAIABp
'' SIG '' AG4AYwBvAHIAcABvAHIAYQB0AGUAZAAgAGgAZQByAGUA
'' SIG '' aQBuACAAYgB5ACAAcgBlAGYAZQByAGUAbgBjAGUALjAL
'' SIG '' BglghkgBhv1sAxUwEgYDVR0TAQH/BAgwBgEB/wIBADB5
'' SIG '' BggrBgEFBQcBAQRtMGswJAYIKwYBBQUHMAGGGGh0dHA6
'' SIG '' Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBDBggrBgEFBQcwAoY3
'' SIG '' aHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lD
'' SIG '' ZXJ0QXNzdXJlZElEUm9vdENBLmNydDCBgQYDVR0fBHow
'' SIG '' eDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29t
'' SIG '' L0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNybDA6oDig
'' SIG '' NoY0aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lD
'' SIG '' ZXJ0QXNzdXJlZElEUm9vdENBLmNybDAdBgNVHQ4EFgQU
'' SIG '' FQASKxOYspkH7R7for5XDStnAs0wHwYDVR0jBBgwFoAU
'' SIG '' Reuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcNAQEF
'' SIG '' BQADggEBAEZQPsm3KCSnOB22WymvUs9S6TFHq1Zce9UN
'' SIG '' C0Gz7+x1H3Q48rJcYaKclcNQ5IK5I9G6OoZyrTh4rHVd
'' SIG '' Fxc0ckeFlFbR67s2hHfMJKXzBBlVqefj56tizfuLLZDC
'' SIG '' wNK1lL1eT7EF0g49GqkUW6aGMWKoqDPkmzmnxPXOHXh2
'' SIG '' lCVz5Cqrz5x2S+1fwksW5EtwTACJHvzFebxMElf+X+Ee
'' SIG '' vAJdqP77BzhPDcZdkbkPZ0XN1oPt55INjbFpjE/7WeAj
'' SIG '' D9KqrgB87pxCDs+R1ye3Fu4Pw718CqDuLAhVhSK46xga
'' SIG '' TfwqIa1JMYNHlXdx3LEbS0scEJx3FMGdTy9alQgpECYx
'' SIG '' ggQOMIIECgIBATCBkTB9MQswCQYDVQQGEwJHQjEbMBkG
'' SIG '' A1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQH
'' SIG '' EwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGlt
'' SIG '' aXRlZDEjMCEGA1UEAxMaQ09NT0RPIFJTQSBDb2RlIFNp
'' SIG '' Z25pbmcgQ0ECEDmtaqw/qH/JaX11L5fdBc8wCQYFKw4D
'' SIG '' AhoFAKBAMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEE
'' SIG '' MCMGCSqGSIb3DQEJBDEWBBRkyFsMqwU2kICpK+bk7SHK
'' SIG '' VO0h9TANBgkqhkiG9w0BAQEFAASCAQBwgpOBvIKEOXdV
'' SIG '' YDpiE0Xvu1Uc1jcrjXVDY/Rnrp/mf4gzqqnPW2LWAA7u
'' SIG '' QfbdykAmTk1BNupXhzgnj98dHLUNCK0NDT/oHpSyUIqn
'' SIG '' k9B3Een0Y7/R5z0PXK7b/ypsWIOP4vqAfLuKgZ9P2Ikj
'' SIG '' JmKwnW+hTkUYU/1dVxWTdyyba86maWHscK5uE8z2YQ0l
'' SIG '' kpfhgdp7UrNOp/Nl7n53JtPxqgGwtT93aiWA5n5r3UrF
'' SIG '' DpT2pd+3CQjJ4Q/xu1Pf4SLOPwcPjusWFLjhAVg6hb7Q
'' SIG '' Rbm9JyRud4+ueIuigH8tO9t59oVrHbKHhsvROml9TMtl
'' SIG '' Ignn4AmP0gHrGdD7MBwioYICDzCCAgsGCSqGSIb3DQEJ
'' SIG '' BjGCAfwwggH4AgEBMHYwYjELMAkGA1UEBhMCVVMxFTAT
'' SIG '' BgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3
'' SIG '' LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGlnaUNlcnQg
'' SIG '' QXNzdXJlZCBJRCBDQS0xAhADAZoCOv9YsWvW1ermF/Bm
'' SIG '' MAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0BCQMxCwYJKoZI
'' SIG '' hvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNzAzMjMwMTQ3
'' SIG '' MTNaMCMGCSqGSIb3DQEJBDEWBBSk+XnD1HyfgiUGLfdk
'' SIG '' TQk9NhngIjANBgkqhkiG9w0BAQEFAASCAQB6uLRi+n6N
'' SIG '' hJcFy0oVZpERL8YkAuM5IaxYV5voV3pZditwmBuoCFvH
'' SIG '' qRdzBR/4myJRL9TZk+JNW/gl+9DGvVmAk4zC/mg6ThwX
'' SIG '' CmYzR/ogrVS+sz2klexx4h0LfY7WQUVcZtS9LBo/9pWU
'' SIG '' wI0lKurIPBu7DXdNpoGU+wFd/KxPQc75n23rnk2oyOGG
'' SIG '' IipYj/t3uys4nsFURsP6QjhrxaUsduxDUIA07qiAYYse
'' SIG '' 4edsyTPj1PiwCA0Cfy6VQ8NR5OatJ3+WEvhRrHtNj9E8
'' SIG '' HCrCu/qgwMzmBGcYzze8dKTdp7HeJGLbNnxlTzVs8XYd
'' SIG '' +BOACaqhbZJNdxo69VS1n9Jx
'' SIG '' End signature block
