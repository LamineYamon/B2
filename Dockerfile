# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Xóa các webapp mặc định (docs, examples,...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã build vào Tomcat và đổi thành ROOT.war
COPY EmailListApp.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080 (Render sẽ tự map cổng này)
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]