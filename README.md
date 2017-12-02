## Beliefarm

2017 fall Media Project

### 개요
- IoT 센서를 이용한 농산물 크라우드 펀딩 웹 어플리케이션 


### 목표 
- 재배·사육 : 센서를 이용해서 실시간으로 정보를 공유함으로써 재배와 사육 과정의 투명성 확보
- 유통 : 생산자와 소비자를 직접 연결하는 크라우드 펀딩 방식으로 유통 과정 최소화 


### 개발환경
- Java
- Spring Framework
- Apache Tomcat 8.0
- MySQL


### 기능
1) 크라우드 펀딩 방식으로 프로젝트에 투자 
- 판매자의 소개를 보고 투자를 하고, 투자 금액이 모이면 해당 농산물이 판매되는 서비스 

2) 아두이노 센서를 통해 재배 환경 측정

- Arduino Uno, 온/습도센서(DHT22), 토양수분센서, Analog PH Meter Kit-SEN0161 사용

- 센서를 통해 실내 대기 온/습도, 토양 수분 함량, 토양 산성도를 측정

- 측정된 데이터는 [RxTx library](http://rxtx.qbang.org/wiki/index.php/Main_Page)를 사용하여 Java와 시리얼 통신

- Spring batch를 사용해 매 시간마다 측정되는 데이터를 [DayValue] 테이블의 해당일의 기존 데이터와의 평균값으로 Update.


3) QR코드를 통해 상품 정보 확인 가능 

- 프로젝트에 투자하여 받은 상품 배송 박스에 QR코드를 부착

- 소비자는 모바일을 통해 바로 웹 페이지로 이동하여 상품에 대한 정보를 확인 가능 



### 기타

[시연영상](https://drive.google.com/file/d/13cqet2F9N4e_qmRQLeBJlLQxsd_NNq_0/view?usp=sharing)

[프로젝트 발표자료](https://drive.google.com/file/d/1FMt5papQPPyAvu6pjT1lHgUb47olTuY4/view?usp=sharing)


