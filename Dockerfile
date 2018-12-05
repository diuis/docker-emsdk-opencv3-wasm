FROM diuis/docker-emsdk-opencv3:v1.0.10

USER root
RUN mkdir /opencv_wasm && chown appuser /opencv_wasm

USER appuser
RUN source /emsdk/emsdk_env.sh && \
    python /opencv/opencv-3.4.4/platforms/js/build_js.py --build_wasm /opencv_wasm
