FROM itzg/minecraft-server

ENV TYPE=FORGE 
ENV FORGEVERSION=14.23.5.2803 
ENV OVERRIDE_SERVER_PROPERTIES=true
ENV DIFFICULTY=hard
ENV OPS=stickw
ENV MAX_PLAYERS=3
ENV MAX_TICK_TIME=-1
ENV ALLOW_FLIGHT=TRUE
ENV VIEW_DISTANCE=16
ENV JVM_XX_OPTS="-Xmx4G -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode -XX:-UseAdaptiveSizePolicy -Xmn128M"
ENV MEMORY="4G" 




RUN wget -O /tmp/mods.zip https://media.forgecdn.net/files/2800/990/RLCraft+Server+Pack+1.12.2+-+Beta+v2.7.zip
RUN unzip -o /tmp/mods.zip -d /tmp
RUN cp -R -f "/tmp/RLCraft Server Pack 1.12.2 - Beta v2.7/." /data
