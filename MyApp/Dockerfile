FROM tomee:10.1.4-jre17-webprofile

# Remove default apps
RUN rm -rf /usr/local/tomee/webapps/*

# Copy WAR file
COPY src/main/webapp/MyApp.war /usr/local/tomee/webapps/

# Expose TomEE port
EXPOSE 8080

# Start TomEE
CMD ["catalina.sh", "run"]
