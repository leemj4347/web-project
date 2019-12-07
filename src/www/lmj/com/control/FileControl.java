package www.lmj.com.control;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

public class FileControl {
	public void writeFile(String title,String content) {
		File newFile = new File(title);
		
		try (BufferedWriter writer = new BufferedWriter(new FileWriter(newFile))){
			writer.write(content);
			
		} catch (Exception e) {
		}
		System.out.println(newFile.getAbsolutePath());
	}
	public String readFile(String title) {
		StringBuilder result = new StringBuilder();
		File storedFile = new File(title);
		
		try (BufferedReader reader = new BufferedReader(new FileReader(storedFile))){
			String line;
			while ((line = reader.readLine()) !=null) {
				result.append(line);
			}
		} catch (Exception e) {
			
		}
		
	return result.toString();	
	}
	

}
