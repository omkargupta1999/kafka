[osuser@bastion Gradle]$ curl -k -u v1021577:token https://artifactory.jfrog.sbi/artifactory/itepaypg-sbiepay2-gradle-virtual/org/springframework/boot/spring-boot-gradle-plugin/3.3.10/
{
  "errors" : [ {
    "status" : 404,
    "message" : "{\"error\":\"children items not found on all virtual repos\"}"
  } ]



================================================
[osuser@bastion Gradle]$ curl -u v1021577:token https://artifactory.jfrog.sbi/artifactory/itepaypg-sbiepay2-gradle-virtual/org/springframework/boot/spring-boot-gradle-plugin/3.3.10/
curl: (60) SSL certificate problem: self signed certificate in certificate chain
More details here: https://curl.haxx.se/docs/sslcerts.html

curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the web page mentioned above.
[osuser@bastion Gradle]$
[osuser@bastion Gradle]$ curl -u v1021577:token_given https://artifactory.jfrog.sbi/artifactory/itepaypg-sbiepay2-gradle-virtual/org/springframework/boot/spring-boot-gradle-plugin/3.3.10/  --tls-verify=false
curl: option --tls-verify=false: is unknown
curl: try 'curl --help' or 'curl --manual' for more information
[osuser@bastion Gradle]$
