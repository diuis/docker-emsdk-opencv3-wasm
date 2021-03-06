FROM diuis/docker-emsdk-opencv3:19.04-opencv3.4.6

USER root
RUN update-alternatives --set python /usr/bin/python2.7
USER appuser
SHELL ["/bin/bash", "-c"]
RUN source /home/appuser/emsdk/emsdk_env.sh && \
    mkdir /home/appuser/opencv_wasm && \
    python /home/appuser/opencv/platforms/js/build_js.py --build_wasm /home/appuser/opencv_wasm
