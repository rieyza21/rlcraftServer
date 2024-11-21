# Use a base image for Minecraft servers
FROM itzg/minecraft-server:java8

# Set environment variables for the RLCraft server
ENV TYPE=FORGE
ENV FORGEVERSION=1.12.2-14.23.5.2860
ENV VERSION=1.12.2
ENV EULA=TRUE

# Copy the RLCraft server files into the container
COPY ./RLCraft_Server /data

# Expose the default Minecraft server port
EXPOSE 25565

# Default command to run the Minecraft server
CMD ["start"]
