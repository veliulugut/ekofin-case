FROM apache/nifi:1.23.0

# PostgreSQL JDBC Driver'ı indir
RUN curl -L -o /opt/nifi/nifi-current/lib/postgresql-42.7.4.jar  https://jdbc.postgresql.org/download/postgresql-42.7.4.jar

# Sertifikalar ve yapılandırma dosyalarını kopyala
# COPY certs/nifi-keystore.p12 /opt/nifi/certs/nifi-keystore.p12
# COPY certs/nifi-truststore.jks /opt/nifi/certs/nifi-truststore.jks
# COPY nifi.properties /opt/nifi/nifi-current/conf/nifi.properties
COPY ekofin-case-son.xml /opt/nifi/nifi-current/conf/templates/ekofin-case-son.xml
