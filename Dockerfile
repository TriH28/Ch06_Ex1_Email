# Sử dụng base image Tomcat 9 với JDK 17
FROM tomcat:9.0.89-jdk17-temurin

# Xóa ứng dụng mặc định của Tomcat (ROOT)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào Tomcat (deploy dưới tên ROOT.war để chạy trực tiếp trên "/")
COPY ch06_ex1_email_war.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080 (Render sẽ tự map port này)
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
