package el;

public class Product {
	
	//set이 이미 되어 있는 것이기 때문에 get만 호출
	private String[] productList = {"사과", "토마토", "감", "귤"};
	private int num1 = 10;
	private int num2 = 20;
	
	public String[] getProductList() {
		return productList;
	}

	public int getNum1() {
		return num1;
	}

	public int getNum2() {
		return num2;
	}
}
