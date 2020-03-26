FROM fedora:24

RUN dnf install -y sudo && \
    adduser user && \
    echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user

RUN su - user -c "touch mine"

CMD ["su", "-", "user", "-c", "/bin/bash"]
