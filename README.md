# CryptoCurrencyMiner

<h2>Setup/Configuration Script</h2>
<p>Requirements: CENTOS7, other OS's are not verified.</p>

<h3>Memory Leak</h3>
<p>This program contains a memory leak by disabling flags for non AES-NI processors. I'll try to build a cron job script to handle this. </p>

<h3>Encrypted Password</h3>
<p>Run the openssl tool within Linux to create an encrypted password. 
Run the following command: #<i><b>openssl passwd -1 -salt xyz yourpassword</b></i>
in bash to create a hashed password. Replace the password in the file 
with your own password.</p>

<h3>Features to add</h3>
<p>
<ul>
<li>Cron job to reset application daily.</li>
<li>Startup script for application to launch at bootup.</li>
</ul>
</p>