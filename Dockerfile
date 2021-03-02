#### 使用 Node 的版本(作為編譯)
FROM library/node:11-stretch AS builder
# Node 在容器內的位置
WORKDIR /home/node
# 編譯與安裝環境
COPY app /home/node
RUN ls && \
    npm install && \
    npm i save-dev @types/uuid && \
    npm run build
# 正式伺服器
FROM library/httpd:2.4
COPY --from=builder /home/node/dist/ /usr/local/apache2/htdocs/
