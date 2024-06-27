[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
invoke-WebRequest -Uri https://raw.githubusercontent.com/firebird5589/VariousBatchFiles/main/hosts -OutFile C:\Windows\System32\drivers\etc\hosts
