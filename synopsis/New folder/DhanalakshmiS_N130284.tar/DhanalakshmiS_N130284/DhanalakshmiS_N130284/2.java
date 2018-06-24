import java.util.*;
class Second{
	public static void main(String args[]){
		Scanner sc = new Scanner(System.in);
		String file = sc.nextLine();
		String cn = sc.nextLine();
		//String cn = "SERVICE_NAME=facebook.in SERVICE_PROTOCOL=https SERVICE_PORT==443 SERVICE_STATUS=available";
		int n1 = cn.indexOf("NAME");//find the index of service name
		String name = cn.subString(n1+4,cn.indexOf(' '));//stored service name into name
		System.out.println("application.service.name="+name);
		int n2 = cn.indexOf("PROTOCOL");//find the index of protocol
		String protocol = cn.subString(n2+8,cn.indexOf(' ',n2));//stored service protocol into protocol
		System.out.println("application.service.protocol="+protocol);
		int n3 = cn.indexOf("PORT");//find the index of port
		String port = cn.subString(' ',n3);//store the service port value into port variable
		System.out.println("applicatoin.service.protocol="+port);
		Sytem.out.println("applicatoin.service.address="+protocol+"://"+name+":"+port+"/");
	}
}
		
			
			
