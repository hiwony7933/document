

* mariaDB 를 사용하기 위한 bean 추가 

```xml
    <bean class="org.springframework.jdbc.datasource.DriverManagerDataSource" id="dataSource">
   	 	<property name="driverClassName" value="org.mariadb.jdbc.Driver"/>
    	<property name="url" value="jdbc:mariadb://jwleehome.iptime.org:7577/jwleeDB"/>
    	<property name="username" value="norelove" />
    	<property name="password" value="92ghlrhkS!@#" />    
    </bean>
 ```



* Oracle 을 사용하기 위한 bean 추가 

```xml
=> </properties> 
<!-- 중앙 저장소 이외의 곳에서 라이브러리를 다운로드 받을 때 다운로드 받는 위치를 설정하는 태그 -->
    <repositories>
        <repository>
            <id>oracle</id>
            <name>ORACLE JDBC Repository</name>
            <url>http://maven.jahia.org/maven2</url>
        </repository>
    </repositories>

=> <dependencies> 
    <!-- 오라클 라이브러리 -->
        <dependency>
            <groupId>com.oracle</groupId>
            <artifactId>ojdbc7</artifactId>
            <version>12.1.0.2</version>
        </dependency>
```
