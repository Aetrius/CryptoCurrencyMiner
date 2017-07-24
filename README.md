# CryptoCurrencyMiner

<h2>Setup/Configuration Script</h2>
<p>Requirements: CENTOS7, other OS's are not verified.</p>

<h3>Memory Leak</h3>
<p>This program contains a memory leak by disabling flags for non AES-NI processors. Once a day, this app will re-launch. </p>

<h3>Encrypted Password</h3>
<p>Run the openssl tool within Linux to create an encrypted password. 
Run the following command: #<i><b>openssl passwd -1 -salt xyz yourpassword</b></i>
in bash to create a hashed password. Replace the password in the file 
with your own password.</p>

