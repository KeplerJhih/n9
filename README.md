

# Docker運行
```
# 建構(需在根目錄下運行)
docker build -t n9 . 

# 若第一次運行 無啟動 .air.toml  
docker run -it --rm -v $(pwd):/app -p 18080:8080 n9 sh

# 啟動
docker run -it --rm -v $(pwd):/app -p 18080:8080 n9
 
```

``` init
air init 
go mod init [專案名]
go mod tidy
```


| 套件                                                      | 說明       |
|---------------------------------------------------------|----------|
| [validator](https://github.com/go-playground/validator) | Api接口驗證器 |
| [swag](https://github.com/swaggo/swag)                  | 自動api文檔  |
| [air](https://github.com/cosmtrek/air)   | 熱更新      |