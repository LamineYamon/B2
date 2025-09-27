# EmailList App - Deploy to Render

## Cách build và deploy lên Render:

### 1. Build WAR file cho Docker:
```bash
ant docker-build
```

### 2. Build Docker image locally (test):
```bash
docker build -t emaillist-app .
docker run -p 8080:8080 emaillist-app
```

### 3. Deploy lên Render:
1. Push code lên GitHub repository
2. Tạo Web Service mới trên Render
3. Connect với GitHub repository
4. Render sẽ tự động build và deploy

### 4. Truy cập ứng dụng:
- Local: http://localhost:8080
- Render: https://your-app-name.onrender.com

## Cấu trúc project:
- `src/` - Source code Java
- `WebContent/` - Web assets (HTML, JSP, CSS)
- `Dockerfile` - Docker configuration
- `build.xml` - Ant build script
- `EmailListApp.war` - WAR file được tạo cho Docker