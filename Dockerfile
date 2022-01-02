FROM ghcr.io/ansible-project/ansible-controller-containerized:main

RUN git clone --depth 1 -b devel --single-branch https://github.com/dell/dellemc-openmanage-ansible-modules.git && cd dellemc-openmanage-ansible-modules && python3 install.py

RUN git clone --depth 1 https://github.com/dell/omsdk.git && cd omsdk && pip3 install --no-cache-dir -r requirements-python3x.txt && sh build.sh 1.2 423 &&  cd dist && pip3 install omsdk-1.2.423-py2.py3-none-any.whl
