package ch04;

public class Person {
	private int id = 20210119;
	private String name = "홍길슨";
	
	public Person() {
//		필수
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
