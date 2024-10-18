package s21215_java70;

class Tv
{
	// Tv의 속성(멤버 변수)
	int channel; // 채널
	
	
	// Tv의 기능(메서드)
	void channelUp() { ++channel; } // Tv 채널을 높이는 기능
	void channelDown() { --channel; } // Tv 채널을 낮추는 기능
}

class SmartTv extends Tv
{
	boolean caption = true;
	void displayCaption(String text)
	{
		if(caption) System.out.println(text); // caption 상태가 on(true)일 때만 출력
	}
}

public class S21215_70_1 {
	
	public static void main(String[] args) {
		
		SmartTv sTv = new SmartTv();
		
		sTv.channel = 10;
		sTv.channelUp();
		System.out.println(sTv.channel);
		sTv.displayCaption("2학년 12반 전체");
		sTv.caption = false;
		sTv.displayCaption("2학년 12반 사랑한다 친구야~");
		
	}
}

