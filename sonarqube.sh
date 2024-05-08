#!/bin/bash
sonarscanner="/opt/sonar-scanner/bin/sonar-scanner"
path1="/home/rodney/Desktop/PGUPGRADE/2/"
path2="/home/rodney/Desktop/PGUPGRADE/3/"
docker="92801401b2f2"
projectvar="-Dsonar.projectKey="
scanner="-Dsonar.sources=src -Dsonar.java.binaries=src -Dsonar.host.url=http://localhost:9000 -Dsonar.token="
project="project1"
token="sqp_b8de888token1"

runscanner() {
    echo "Initiating $project source code audit"
    cd "$path$project"
    "$sonarscanner" "$projectvar$project" "$scanner$token"
    echo "Completed scanning $project source code audit. Proceed to SonarQube portal for source code review."
}
      echo "Confirming running images"
      sudo docker ps | grep $docker

if docker ps | grep -q $docker; then
      # Run the sonar-scanner commands
      # run first source code
      runscanner
      # create variable for project channel request
	project="project2"
	token="sqp_b8de88token2"
      # run 2nd source code audit
      runscanner
      # run 3rd source code audit  

      echo "Thank you for using sonarqube scanning tool adios. Proceed to the sonarqube portal to get the results of the report"
else
      echo "sonarqube docker image is not running."
fi
