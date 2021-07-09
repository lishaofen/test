
import java.util.Scanner;
 public class CXK{
	public static void main(String args[]){
		//创建Scanner对象
		Scanner scanner = new Scanner(System.in);
		//提问
		System.out.print("请输入第一条边（单位：cm）：");
		//接收长度
		double a= scanner.nextDouble();
		System.out.print("请输入第二条边（单位：cm）：");
		//接收长度
		double b= scanner.nextDouble();
		System.out.print("请输入第三条边（单位：cm）：");
		//接收长度
		double  c =scanner.nextDouble();
		if((a+b<c) || (a+c<b) ||(b+c<a)){
			System.out.print("输入的边长不是一个三角形！");
			return;
		}
		if(a==b&&b==c){
			System.out.print("这是一个等边三角形！");

		}else if((a*a == b*b+c*c) || (b*b ==a*a+c*c) || (c*c== a*a+b*b)){
			System.out.print("这是一个直角三角形！");

		}else if((a*a > b*b+c*c) || (b*b > a*a+c*c) || (c*c > a*a+b*b)){
			System.out.print("这是一个钝角三角形！");
		}else{
			System.out.print("这是一个锐角三角形");
		}
				
		}
		
}




		


	