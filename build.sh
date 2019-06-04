run (){
  while true; do
    rm -rf Build
    mkdir Build
    cd Build
    wget http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
    wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
    java -Xmx1G -Xms1G -jar BuildTools.jar --rev latest
    echo "A new BungeeCord and Spigot server will be built every 6 hours.";
    sleep 21600;
  done
}

run
