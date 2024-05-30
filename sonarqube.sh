#!/bin/bash
sonarscanner="/opt/sonar-scanner/bin/sonar-scanner"
path1="/home/spider/Desktop/"
docker="92801401b23ef2"
projectvar="-Dsonar.projectKey="
scanner="-Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token="
project="project1"
token="sqp_b8de888token1"

runscanner() {
    echo "Initiating $project source code audit";
    cd $path$project;
    $sonarscanner $projectvar$project $scanner$token;
    echo "Completed scanning $project source code audit. Proceed to SonarQube portal for source code review.";
    sleep 3
}
      echo "Confirming running images"
      sudo docker ps | grep $docker
if docker ps | grep -q $docker; then
      # Run the sonar-scanner commands
      # run first source code
      runscanner
      # create variable for project channel request run seconf source code function
	project="project2"
	token="sqp_b8de88token2"
 	runscanner
      # run 3rd source code audit  

      echo "Thank you for using sonarqube scanning tool adios. Proceed to the sonarqube portal to get the results of the report"
else
      echo "sonarqube docker image is not running."
fi
