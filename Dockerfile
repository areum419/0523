FROM node:16

# 가상환경만듬 앱디렉토리생성
WORKDIR /data/node_mongo/app

# 가이드파일 전체 카피한다
COPY package*.json ./

# 실행 명령어
RUN npm install
RUN npm install -g nodemon

# 앱소스 추가
#현재 있는걸 그대로 카피하겠다
COPY . .

#도커환경에서 나가는 포트 (같아도 무방하나, 다만 컴퓨터 충돌날수있어서 다르게 설정함)
EXPOSE 9091

#실행하는 명령어
#'L' 은 자동 실행명령어 > 도커에서 사용하는 명령어임
CMD ["nodemon", "-L", "index.js"]


## 이미지 파일 만드는 코드 (1 ~ 22줄)
