FROM itzg/minecraft-server

ENV TYPE=FORGE 
ENV FORGEVERSION=14.23.5.2803 

RUN wget -O /tmp/mods.zip https://media.forgecdn.net/files/2800/990/RLCraft+Server+Pack+1.12.2+-+Beta+v2.7.zip
RUN unzip -o /tmp/mods.zip 
RUN cp -R -f "/tmp/RLCraft Server Pack 1.12.2 - Beta v2.7/." /data
