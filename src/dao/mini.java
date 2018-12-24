package dao;

import java.sql.Date;


public class mini {

	/**
	 * @param args
	 */
	int QUESTION_NO;
	String QUESTION;
	String OPTION1;
	String OPTION2;
	String OPTION3;
	String OPTION4;
	int answer;
	
	
	public mini() {
		// TODO Auto-generated constructor stub
	}
	
	public mini(int qUESTION_NO, String qUESTION, String oPTION1,
			String oPTION2, String oPTION3, String oPTION4, int answer) {
		super();
		QUESTION_NO = qUESTION_NO;
		QUESTION = qUESTION;
		OPTION1 = oPTION1;
		OPTION2 = oPTION2;
		OPTION3 = oPTION3;
		OPTION4 = oPTION4;
		this.answer = answer;
	}
	public int getQUESTION_NO() {
		return QUESTION_NO;
	}
	public void setQUESTION_NO(int qUESTION_NO) {
		QUESTION_NO = qUESTION_NO;
	}
	public String getQUESTION() {
		return QUESTION;
	}
	public void setQUESTION(String qUESTION) {
		QUESTION = qUESTION;
	}
	public String getOPTION1() {
		return OPTION1;
	}
	public void setOPTION1(String oPTION1) {
		OPTION1 = oPTION1;
	}
	public String getOPTION2() {
		return OPTION2;
	}
	public void setOPTION2(String oPTION2) {
		OPTION2 = oPTION2;
	}
	public String getOPTION3() {
		return OPTION3;
	}
	public void setOPTION3(String oPTION3) {
		OPTION3 = oPTION3;
	}
	public String getOPTION4() {
		return OPTION4;
	}
	public void setOPTION4(String oPTION4) {
		OPTION4 = oPTION4;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	
}