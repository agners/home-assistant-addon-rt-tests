ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        rt-tests \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
