
import java.util.Scanner;
 public class CXK{
	public static void main(String args[]){
		//����Scanner����
		Scanner scanner = new Scanner(System.in);
		//����
		System.out.print("�������һ���ߣ���λ��cm����");
		//���ճ���
		double a= scanner.nextDouble();
		System.out.print("������ڶ����ߣ���λ��cm����");
		//���ճ���
		double b= scanner.nextDouble();
		System.out.print("������������ߣ���λ��cm����");
		//���ճ���
		double  c =scanner.nextDouble();
		if((a+b<c) || (a+c<b) ||(b+c<a)){
			System.out.print("����ı߳�����һ�������Σ�");
			return;
		}
		if(a==b&&b==c){
			System.out.print("����һ���ȱ������Σ�");

		}else if((a*a == b*b+c*c) || (b*b ==a*a+c*c) || (c*c== a*a+b*b)){
			System.out.print("����һ��ֱ�������Σ�");

		}else if((a*a > b*b+c*c) || (b*b > a*a+c*c) || (c*c > a*a+b*b)){
			System.out.print("����һ���۽������Σ�");
		}else{
			System.out.print("����һ�����������");
		}
				
		}
		
}




		


	