#!/bin/bash

java -jar \
     -Djava.security.egd=file:/dev/./urandom \
     -Dpiper.messenger.provider=jms \
     -Dpiper.coordinator.enabled=true \
     -Dpiper.worker.enabled=true \
     -Dpiper.worker.subscriptions.tasks=5 \
     -Dpiper.pipeline-repository.git.enabled=false \
     -Dpiper.pipeline-repository.git.url=git@github.com:creactiviti/piper-pipelines.git \
     -Dpiper.pipeline-repository.git.search-paths=demo/ \
     -Dpiper.pipeline-repository.filesystem.enabled=true \
     -Dpiper.pipeline-repository.filesystem.base-path=$HOME/piper/**/*.yaml \
     piper-server/target/piper-server-0.0.1-SNAPSHOT.jar
