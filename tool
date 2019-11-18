//将host相同的日志进行分类。
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class test5 {

	public static void main(String[] args) throws FileNotFoundException {
		// TODO Auto-generated method stub
		File file=new File("E:\\out_test_normal_100000.txt");
		FileReader fReader=new FileReader(file);
		BufferedReader bufferedReader=new BufferedReader(fReader);
		File file2=new File("E:\\out_test_normal_hongkongport");
		FileWriter fr=null;
		BufferedWriter fw=null;
		try {
			fr=new FileWriter(file2);
			fw=new BufferedWriter(fr);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			while(bufferedReader.readLine()!=null)
			{
				String line=bufferedReader.readLine();
				if(line.contains("www.hongkongpost.hk"))
				{
					fw.write(line);
				}
				else
				{continue;}
			}
			System.out.print("process accomplish");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
