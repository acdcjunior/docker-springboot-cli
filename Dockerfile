FROM donbeave/sdkman

RUN /bin/bash -c "\
    source $SDKMAN_DIR/bin/sdkman-init.sh && \
	sdk install springboot && \
	spring install org.springframework.cloud:spring-cloud-cli:1.4.0.RELEASE"
	
RUN curl -q -L -C - -b "oraclelicense=accept-securebackup-cookie" -o /tmp/jce_policy-8.zip \
    -O http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip \
    && unzip -oj -d /usr/lib/jvm/java-8-oracle/jre/lib/security /tmp/jce_policy-8.zip \*/\*.jar \
    && rm /tmp/jce_policy-8.zip