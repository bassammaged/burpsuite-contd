# Information
This repository provides a Dockerized version of Burp Suite, a leading web vulnerability scanner. The setup includes GUI support, allowing users to interact with Burp Suite through a graphical user interface seamlessly within a container environment. 

## Features

- **Containerized Environment:** Ensures a consistent setup across different machines.
- **GUI Support:** Access Burp Suite via VNC for a full graphical interface experience.
- **Easy Setup:** Simple scripts and pre-configured settings streamline the setup process.

## Quick Start

1. **Clone the Repository:**
    ```bash
   git clone https://github.com/bassammaged/burpsuite-contd.git
   cd cburpsuite-contd

2. **Build the Docker Image:**
    ```bash
    docker build -t burpsuite-gui .

3. **Allow xhost access:**
    ```bash
    Allow access: xhost + 127.0.0.1

4. **Run the Container:**
    ```bash
    docker container run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ./data/:/home/burp/data -p 8080:8080 burpsuit

## TODO tasks
- [ ] Support Burp Suite Pro version
- [ ] Allow users to define the Burp Suite version
- [ ] Create a script to simplify usability

## Contributing
Contributions are welcome! Please open an issue or submit a pull request with your enhancements, bug fixes, or ideas.