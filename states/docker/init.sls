docker-install:
    cmd.run:
        - name: wget -qO- https://get.docker.com | sh

docker-user-mod:
    user.present:
        - name: {{ grains.user }}
        - groups:
            - docker
        - require:
            - cmd: docker-install
