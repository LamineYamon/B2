# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Xóa các webapp mặc định (docs, examples,...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy startup script và WAR file
COPY start.sh /start.sh
COPY EmailListApp.war /usr/local/tomcat/webapps/ROOT.war

# Make script executable
RUN chmod +x /start.sh

# Expose cổng mặc định (Render sẽ override với PORT env var)
EXPOSE 8080

# Chạy startup script
CMD ["/start.sh"]