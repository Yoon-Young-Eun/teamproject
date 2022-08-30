package mymaven.spring.web.board;

//import java.sql.Date;
//������ ���� ��ϳ�¥�� �����ϴ� regDate ������ ���������� java.sql.Date�� ����Ͽ��µ� �� ��ü�� �⺻ �����ڰ� ���� ��ü�̴�. 
//Ư�� �ڹ� ��ü�� XML�� ��ȯ�Ϸ��� �ݵ�� �ش� Ŭ������ �⺻ �����ڰ� �־�� �Ѵ�. 
//���� regDate ������ �⺻ �����ڰ� �ִ� java.util.Date Ÿ���� ������ ������ ���̴�.
import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.web.multipart.MultipartFile;
import com.fasterxml.jackson.annotation.JsonIgnore;


@XmlAccessorType(XmlAccessType.FIELD) // @XmlAccessorType은 BoardVO 객체를 XML로 변환할 수 있다는 의미
public class BoardDTO {
	
	@XmlAttribute  // 이는 seq를 속성으로 표현하라는 의미
	private int seq;
	
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int cnt;
	
	@XmlTransient //  XML 변환에서 제외하라는 의미 
	private String searchCondition;
	@XmlTransient
	private String searchKeyword;
	@XmlTransient
	private String downloadFile;
	@XmlTransient
	private MultipartFile uploadFile;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
//	 @JsonIgnore를 추가하였다. @JsonIgnore는 자바 객체
//	 를 JSON으로 변환할 때 특정 변수를 변환에서 제외시킨다. 주의할 점은 getter 메서드 위에 설정 해야한다는 점이다.
	
	@JsonIgnore
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	@JsonIgnore
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	@JsonIgnore
	public String getDownloadFile() {
		return downloadFile;
	}
	public void setDownloadFile(String downloadFile) {
		this.downloadFile = downloadFile;
	}
	@JsonIgnore
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	

}
