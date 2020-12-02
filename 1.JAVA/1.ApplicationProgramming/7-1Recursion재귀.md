## Recursion - Recursive Call(재귀 호출)
* 메소드가 메소드 내부에서 자신의 메소드를 다시 호출하는 것
* 메소드는 호출되면 자신의 메모리 영역(Stack)을 생성하고 자신의 작업이 종료되면(return) 자신의 메모리 영역을 해제합니다.
	* 메소드의 작업이 종료되기 전에 다른 메소드를 호출하면 Stack이 쌓이게 됩니다.
	* 메모리 사용량이 늘어나고 실행의 결과도 여러 번 되돌아 가는 구조를 갖기 때문에 늦게 나오게 됩니다.
* 알고리즘을 표현할 때 쉽게 표현할 수 있는 경우가 많아서 종종 이용합니다.

`10까지의 합 : 10 + 9까지의 합(9 + 8까지의 합)`  

* 위와 같은 형태로 합을 구할려고 했는데 결과에 다시 합이 나오는 경우
* 이런 경우에는 반드시 종료 시점이 있어야 합니다.
	* 합의 경우는 1까지의 합은 1 이렇게 종료 시점이 명확하게 있어야 합니다.
* 재귀로 구현할 수 있는 것들로는 합계, 팩토리얼(곱), 피보나치 수열, 하노이의 탑, 퀵 정렬이나 병합 정렬등이 있습니다.

* 재귀 메소드 구현 방법

```java
리턴타입 메소드이름(리턴타입과 동일한 자료형 매개변수이름){
	if(종료조건){	
		return 값;
	}else{
		return 메소드이름(매개변수);
	}
}
```

* 매개변수로 대입되는 데이터가 참조형이라면 return을 하지 않을 수도 있습니다.

* 1 - n 까지의 합을 구해주는 메소드(재귀를 이용)

```java
int hap(int n){
	if(n == 1){
		return 1;
	}
	
	return n + hap(n-1);
}
```

```
4까지의 합
4 + hap(3)
4 + 3 + hap(2)
4 + 3 + 2 + hap(1)
4 + 3 + 2 + 1
```

* 재귀를 만들 때 주의할 점은 반드시 중단을 하거나 아무일도 하지 않는 조건을 만들어야 한다는 것입니다.
	* 그렇지 않으면 무한 반복하다가 프로그램이 메모리 부족으로 종료됩니다.

### 1.fibonacci 수열
* 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89.....

```
f2:1
f1:1
result: 2

f2 = f1
f1 = result
result = f2 + f1
```

* 첫번째와 두번째 항은 무조건 1
* 세번째 항 부터는 앞쪽 2개 항의 합

```
fn = f(n-1) + f(n-2)
단 f1 = 1, f2 = 1

재귀로 가능한 이유
f(10) -> f(9) + f(8)
```

1) 재귀를 이용하지 않고 해결

```java
public int fibo1(int n){
	if(n == 1 || n == 2){
		return 1;
	}else{
		//피보나치 수열의 값을 저장할 변수
		int result = -1;

		//계산할 값 이전 2번째 항의 값을 저장할 변수
		int f2 = 1;
		//계산할 값 이전 1번째 항의 값을 저장할 변수
		int f1 = 1;
		for(int i=3; i<=n; i=i+1){
			result = f2 + f1;
			
			f2 = f1;
			f1 = result;
		}
		//피보나치 수열의 값 리턴
		return result;
	}
}
```

2) 재귀를 이용해서 해결

```java
public int fibo2(int n){
	if(n==1 || n==2){
		return 1;
	}else{
		return fibo2(n-1) + fibo2(n-2);
	}
}
```

### 2.피보나치 수열 확인
* main을 소유한 클래스 에 작성: 메소드의 코드를 읽어보고 매개변수를 50정도로 늘려서 둘의 차이를 확인

```java
public class Main {

	//재귀를 이용하지 않고 n 번째 피보나치 수열의 값을 리턴하는 메소드
	public static int fibo1(int n) {
		//첫번째나 두번째는 무조건 1
		if(n==1 || n==2) {
			return 1;
		}
		//세번째 부터는 이전 2개 항의 합
		else {
			int result = -1;
			//현재 계산할 항의 이전 두번째 항의 값을 저장할 변수
			int f2 = 1;
			//현재 계산할 항의 이전 첫번째 항의 값을 저장할 변수
			int f1 = 1;
			for(int i=3; i<=n; i=i+1) {
				//이전 2개 항의 합을 계산하고 2개 항을 다음 항으로 이동
				result = f2 + f1;
				f2 = f1;
				f1 = result;
			}
			return result;
		}
	}
```

```java
	//재귀를 이용해서 피보나치 수열의 값을 찾아주는 메소드
	public static int fibo2(int n) {
		if(n==1 || n==2) {
			return 1;
		}else {
			//fibo2 메소드 내에서 fibo2 를 호출하기 때문에 재귀라고 합니다.
			return fibo2(n-1) + fibo2(n-2);
		}
	}
	
	public static void main(String[] args) {
		//Student 클래스의 인스턴스 생성
		Student student = new Student();
		//인스턴스 변수에 값을 설정
		student.setNum(1);
		student.setName("park");
		student.setMajor("CS");
		
		//인스턴스 변수의 값 가져오기
		System.out.println("번호:" + student.getNum());
		System.out.println("이름:" + student.getName());
		System.out.println("전공:" + student.getMajor());
		
		//현재 클래스 내부에 있는 메소드를 호출할 때는 이름만 기재하면 됩니다.
		int r =fibo1(100);
		System.out.println("r:" + r);
		
		r = fibo2(100);
		System.out.println("r:" + r);
	
	}
}
```