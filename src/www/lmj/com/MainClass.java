package www.lmj.com;

import www.lmj.com.control.FileControl;

public class MainClass {

	public static void main(String[] args) {
		FileControl fileControl = new FileControl();
		String title = "java.txt";
		String content = "æ»≥Á«œººø‰. π›∞©Ω¿¥œ¥Ÿ";
		
		fileControl.writeFile(title, content);
		
		String readFile = fileControl.readFile(title);
		System.out.println(readFile);
	}

}
