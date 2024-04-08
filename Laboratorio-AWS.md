Pdf 06

# EC2
![[Pasted image 20240319155237.png]]
OS Image -> Ubuntu
![[Pasted image 20240319160153.png]]
Create Key pair 
![[Pasted image 20240319160337.png]]
Per collegarsi via SSH si usa l'IP pubblico, che cambia ogni volta che si accende la macchina 

![[Pasted image 20240319160511.png]]
![[Pasted image 20240319161210.png]]

`ssh -i "twc24key.pem" ubuntu@ec2-16-16-166-65.eu-north-1.compute.amazonaws.com`

`sudo apt-get install php libapache2-mod-php`


# S3


# DynamoDB


# Elasic Container Service


# Lambda


---

###  Esercizio 8
Trasferire file da locale a remoto con connessione SSH e SCP: 

```bash
scp -r -i /home/enrperes/twc24key.pem CubeRenders ec2-16-16-128-147.eu-north-1.compute.amazonaws.com:/var/www/html/media
```