package s21215_java30;

public class Car_main {
	
	public static void main(String[] args) {
		
		Car car1 = new Car();
		System.out.println("car1.company   : " + car1.company);
		System.out.println("car1.str       : " + car1.str);
		System.out.println();
		car1.str = "kor";
		
		Car car2 = new Car("자가용1");
		System.out.println("car2.company   : " + car2.company);
		System.out.println("car2.model     : " + car2.model);
		System.out.println("car2.str       : " + car2.str);
		System.out.println();
		car2.str = "usa";
		
		Car car3 = new Car("자가용2", "하얀색");
		System.out.println("car3.company   : " + car3.company);
		System.out.println("car3.model     : " + car3.model);
		System.out.println("car3.color     : " + car3.color);
		System.out.println("car3.str       : " + car3.str);
		System.out.println();
		
		Car car4 = new Car("레저용", "빨강", 200);
		System.out.println("car4.company   : " + car4.company);
		System.out.println("car4.model     : " + car4.model);
		System.out.println("car4.color     : " + car4.color);
		System.out.println("car4.max_speed : " + car4.max_speed);
		System.out.println("car4.str       : " + car4.str);
		System.out.println("test " + car2.model); // car1, car2, car3, car4 모두 별개임
		
	}
}
