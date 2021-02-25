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
CMD [ "/usr/bin/cyclictest", "--priority=90", "--duration=1m", "--threads=1", "--mlockall", "--histogram=US" ]
