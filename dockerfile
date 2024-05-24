# Define the base layer
FROM openjdk:22-slim
LABEL maintainer="Kemet <bassammaged>"

# Install the burpsuite requirements
RUN apt-get update && apt-get install -y libxtst6 curl libxml2-utils libxrender1 libxi6 libgconf-2-4 fonts-dejavu fonts-liberation libfreetype6 fontconfig openssl ca-certificates


# Create a non-root user
RUN useradd -ms /bin/bash burp
# Change the user
USER burp

# Change the working dir
WORKDIR /home/burp

# Expose port 8080
EXPOSE 8080
# Burp REST API
EXPOSE 1337

CMD ["/bin/bash", "src/entrypoint.sh"]
