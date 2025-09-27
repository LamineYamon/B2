#!/bin/bash

# Render cung cấp PORT environment variable
# Nếu không có PORT, sử dụng 8080 mặc định
export PORT=${PORT:-8080}

# Cấu hình Tomcat port
sed -i "s/port=\"8080\"/port=\"$PORT\"/" /usr/local/tomcat/conf/server.xml

# Khởi động Tomcat
exec catalina.sh run