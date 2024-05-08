#!/bin/bash
sonarscanner="/opt/sonar-scanner/bin/sonar-scanner"
path1="/home/rodney/Desktop/PGUPGRADE/2/"
path2="/home/rodney/Desktop/PGUPGRADE/3/"
docker="92801401b2f2"
projectvar="-Dsonar.projectKey="
scanner="-Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token="
project="cellulantadaptor-main"
token="sqp_b8de8887e895fdbd89538bf17c0a06c265532125"
run="echo \"Initiating $project source code audit\"; cd $path1$project; $sonarscanner $projectvar$project $scanner$token; echo \"Completed scanning $project source code audit. Proceed to sonarqube portal for source code review.\""
runscanner (){  

      echo "Initiating $project source code audit"
      cd $path1$project
      $sonarscanner $projectvar$project $scanner$token
      echo "Completed scanning $project source code audit. Proceed to sonarqube portal for source code review."

}
      echo "Confirming running images"
      sudo docker ps | grep $docker

if docker ps | grep -q $docker; then
      # Run the sonar-scanner commands
      # run first source code
      runscanner
      echo "Initiating $project source code audit"
      cd $path1$project
      $sonarscanner $projectvar$project $scanner$token
      echo "Completed scanning $project source code audit. Proceed to sonarqube portal for source code review."
      # create variable for project channel request
project=channelrequestprocessor-master
token=sqp_b8de8887e895fdbd89538bf17c0a06c265532125
      # run 2nd source code audit
      run-scanner
      # run 3rd source code audit  

      echo "Thank you for using sonarqube scanning tool adios. Proceed to the sonarqube portal to get the results of the report"
else
      echo "sonarqube docker image is not running."
fi




      echo "cellulantadaptor-main"
      cd /home/rodney/Desktop/PGUPGRADE/2/cellulantadaptor-main
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=cellulantadaptor-main -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_b8de8887e895fdbd89538bf17c0a06c265532125
      echo "cellulantadaptor-main source code completed"
      sleep 2
    
      echo "channelrequestprocessor-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/2/channelrequestprocessor-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=channelrequestprocessor-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_ef9695407be1030f83b7dd093e281efb0cc1fcdb
      echo "completed scanning channelrequestprocessor-master source code"
      sleep 2
     
      echo "craftelmaadaptor-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/2/craftelmaadaptor-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=craftelmaadaptor-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_0ef0bcc1f05760ebe46202da9045cdb30673f35e
      echo "completed scanning craftelmaadaptor-master source code"
      sleep 2
       
      echo "inmcardsadaptor-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/2/inmcardsadaptor-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=inmcardsadaptor-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_59cee06f91b25820c99949cd1cc6dd9148801a06
      echo "completed scanning inmcardsadaptor-master source code"
      sleep 2

      echo "iprsadaptor-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/2/iprsadaptor-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=iprsadaptor-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_9bf4501074e0ad95233abeafb19125fb88f547c1
      echo "completed scanning iprsadaptor-master source code"
      sleep 2
	
      echo "mfsadaptor-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/2/mfsadaptor-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=mfsadaptor-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_59c3495676ea28eb0151ba93c5c92d6d037b2875
      echo "completed scanning mfsadaptor-master source code"
      sleep 2


      echo "mpesacallbacksender-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/3/mpesacallbacksender-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=mpesacallbacksender-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_9dba82fe8ebb580366c7991bd5c5fb1a2dfbf552
      echo "completed scanning mpesacallbacksender-master source code"
      sleep 2

      echo "mpesajsonservice-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/3/mpesacallbacksender-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=mpesajsonservice-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_14f53e32db59a9362459de6ab66af5b95946db43
      echo "completed scanning mpesajsonservice-master source code"
      sleep 2

      echo "nbk-adaptor-main --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/3/nbk-adaptor-main
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=nbk-adaptor-main -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_27767e4f6b0c93e32dde8d287f2ae05e8670e5b7
      echo "completed scanning nbk-adaptor-main source code"
      sleep 2

      echo "notificationsservice-master --------------------------------------------------"
      cd /home/rodney/Desktop/PGUPGRADE/3/notificationsservice-master
      /opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=notificationsservice-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_c5118fa116fcfce886c2050552e0830a6cad3f94
      echo "completed scanning notificationsservice-master source code"
      sleep 2
  
	echo "paykonnectthirdparty-master --------------------------------------------------"
     	cd /home/rodney/Desktop/PGUPGRADE/3/paykonnectthirdparty-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=paykonnectthirdparty-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_10a20c9a3b49968a4f210c2725dad73bcd89e02a
      	echo "completed scanning paykonnectthirdparty-master source code"
     	sleep 2
 
 	echo "pesalinkv2-master --------------------------------------------------"
	cd /home/rodney/Desktop/PGUPGRADE/3/pesalinkv2-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=pesalinkv2-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_a7f5541cd3cf4f2284479281d3fa3d2549f02657
      echo "completed scanning pesalinkv2-master source code"
      sleep 2 
 
  	echo "pgdeamon-master --------------------------------------------------"
	cd /home/rodney/Desktop/PGUPGRADE/3/pgdeamon-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=pgdeamon-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_3477e1f2f2fff5ec17a8137f5e038467109a1bf5
      echo "completed scanning pgdeamon-master source code"
      sleep 2 
 
 	echo "responseservice-master --------------------------------------------------"
	cd /home/rodney/Desktop/PGUPGRADE/3/responseservice-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=responseservice-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_877faf54e24a8db36cfb3d23ff5c108578a258a8
      	echo "completed scanning pgdeamon-master source code"
      	sleep 2 
 
 	echo "safaricomtopup-master --------------------------------------------------"
	cd /home/rodney/Desktop/PGUPGRADE/3/safaricomtopup-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=safaricomtopup-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_3d581a678b21658d8793abdcc5b190c28945b145
      	echo "completed scanning safaricomtopup-master source code"
      	sleep 2 
 
  	echo "servicelayer-master --------------------------------------------------"
	cd /home/rodney/Desktop/PGUPGRADE/3/servicelayer-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=servicelayer-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_07f05bc835150afd1cae602baecefd4f3ef2b5ac
      	echo "completed scanning servicelayer-master source code"
      	sleep 2 
 
 echo "smsmanager-master --------------------------------------------------"
	cd /home/rodney/Desktop/PGUPGRADE/3/smsmanager-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=smsmanager-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_7b29d8f2d1336b4eddcc72aa771511592cbc49b2
      	echo "completed scanning smsmanager-master source code"
      	sleep 2 
 
  echo "telkomadaptor-master --------------------------------------------------"
	cd /home/rodney/Desktop/PGUPGRADE/3/telkomadaptor-master
	/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=telkomadaptor-master -Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token=sqp_a49e45746d755ac5f211210a2ce06456696f8ce2
      	echo "completed scanning telkomadaptor-master source code"
      	sleep 2 

      echo "Thank you for using sonarqube scanning tool adios. Proceed to the sonarqube portal to get the results of the report"

else
    echo "sonarqube docker image is not running."
fi


