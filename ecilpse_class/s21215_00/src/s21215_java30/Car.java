package s21215_java30;

public class Car {
	
	static String str = "우리나라 자동차";
	
	// 필드 인스턴스 변수
	String company = "현대자동차";
	String model;
	String color;
	int max_speed;
	
	// 기본 생성자
	Car()
	{}
	
	// 생성자들
	Car(String model)  		// model 로컬 변수
	{
		this.model = model;	// this.model 인스턴스 변수
	}
	
	Car(String model, String color)
	{
		this.model = model;
		this.color = color;
	}
	
	Car(String model, String color, int max_speed)
	{
		this.model = model;
		this.color = color;
		this.max_speed = max_speed;
	}

}
