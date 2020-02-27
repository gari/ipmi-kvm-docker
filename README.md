## ipmi-kvm-docker

Ever wanted to access and IPMI KVM console, only to find that you don't
have network access or the right version of java or a compatible 
browser or credentials?

This container runs:

* Xvfb - X11 in a virtual framebuffer
* x11vnc - A VNC server that scrapes the above X11 server
* [noNVC](https://kanaka.github.io/noVNC/) - A HTML5 canvas vnc viewer
* Fluxbox - a small window manager
* Firefox - For browsing IPMI consoles
* Java-plugin - Because... you need java to access most IPMI KVM Consoles.

This is a [trusted build](https://registry.hub.docker.com/u/solarkennedy/ipmi-kvm-docker/)
on the Docker Hub.

## Run It

    # on a remote host that can reach ipmi
    ssh admin
    $ docker run -p 5900:5900 -p 8080:8080 gari123/ipmi-kvm-docker
    
    # Now on your laptop
    xdg-open http://admin:8080
    
    # Or you can use yours vnc client 

In your web browser you should see the firefox, ready to connect to 
and IPMI KVM:

![IPMI Screenshot](https://raw.githubusercontent.com/solarkennedy/ipmi-kvm-docker/master/screenshot.png)
