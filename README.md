

# Docker運行
```
# 建構
docker build -t n9 . 

# 運行(需在根目錄下運行)
docker build -t n9 ./

# 若第一次運行 無啟動 .air.toml  
docker run -it --rm -v $(pwd):/app -p 18080:8080 n9 sh

# 啟動
docker run -it --rm -v $(pwd):/app -p 18080:8080 n9
 
```

| Http Method | 說明 |
|-------------|----|
| GET         | 取得資料 |
| POST         | 新增一筆資料 |
| PUT         | 更新一筆資料 |
| DELETE         | 資料刪除 |

``````