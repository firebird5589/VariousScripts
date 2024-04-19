invoke-WebRequest -Uri https://raw.githubusercontent.com/firebird5589/VariousBatchFiles/main/hosts -OutFile D:\Downloads\hosts

Move-Item -path D:\hosts -Destination D:\Documents
