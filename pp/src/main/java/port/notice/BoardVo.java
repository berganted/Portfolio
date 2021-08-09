package port.notice;

import java.sql.Timestamp;

import util.CommonVo;

public class BoardVo extends CommonVo {
	private int no;
	private String title;
	private String content;
	private String name;
	private int readcnt;
	private Timestamp regdate;
	private String filename;
	private String filerename;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilerename() {
		return filerename;
	}
	public void setFilerename(String filerename) {
		this.filerename = filerename;
	}
	
	

}
