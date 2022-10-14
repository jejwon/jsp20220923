package domain.ch14;

public class Employee {
	private String firstName;
	private String lastName;
	private int id;
	
	//자바빈 만들기(ch14.servlet17)
	//get, set 메소드 생성-> 프로퍼티 생김
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
