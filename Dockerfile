# Apache NiFi'nin temel imajını kullan
FROM apache/nifi:1.23.0

# PostgreSQL JDBC Driver'ı indir
RUN curl -L -o /opt/nifi/nifi-current/lib/postgresql-42.2.20.jar https://jdbc.postgresql.org/download/postgresql-42.2.20.jar

# NiFi şablonunu kopyala
COPY ekofin-case-son.xml /opt/nifi/nifi-current/conf/templates/ekofin-case-son.xml
