package PracticePrograms;

public class Practice {

	public static void main(String[] args) {
				String ch="a";
				String ch1="a";
				
				
				boolean ans=ch.equals(ch1);
				System.out.println("Value with equals method is = "+ans);
				
				boolean ans1=(ch==ch1);
				System.out.println("value with == operator = "+ans1);

				System.out.println(System.identityHashCode(ch));
				System.out.println(System.identityHashCode(ch1));
				
				int abc=ch.hashCode();
				int abc1=ch1.hashCode();
				System.out.println("value of abc = "+abc);
				System.out.println("value of abc1 = "+abc1);
				
	}

}
