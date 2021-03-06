package com.sosks1313.dto;

import java.sql.Timestamp;

public class BDto {
	
	int bId;
	String bName;
	String bTitle;
	String bContent;
	Timestamp bDate;  //timestamp = 특정 시각을 나타내는 문자열, 이떄는 글 작성 시간에 쓰인다.
	int bHit;
	int bGroup;
	int bStep;
	int bIndent;
	
	String bdTitle;
	int bdId;
	
	String menuTitle;
	String menuContent;

	
	public BDto(int bId,
				String bName,
				String bTitle,
				String bContent,
				Timestamp bDate,
				int bHit,
				int bGroup,
				int bStep,
				int bIndent)
				{
		super();
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bHit = bHit;
		this.bGroup = bGroup;
		this.bStep = bStep;
		this.bIndent = bIndent;
		
		
		
	}//생성자
	
	public BDto(String bdTitle, int bdId) {
		super();
		
		this.bdTitle = bdTitle;
		this.bdId = bdId;
	}
	
	public BDto(String bdTitle) {
		super();
		
		this.bdTitle = bdTitle;
	}
	
	public BDto(String menuTitle, String menuContent) {
		super();
		
		this.menuTitle = menuTitle;
		this.menuContent = menuContent;
		
	}
	
	
	public int getbId() {
		return bId;
	}
	
	public void setbId(int bId) {
		this.bId = bId;
	}
	
	public String getbName() {
		return bName;
	}
	
	public void setbName(String bName) {
		this.bName = bName;
	}
	
	public String getbTitle() {
		return bTitle;
	}
	
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	
	public String getbContent() {
		return bContent;
	}
	
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	
	public Timestamp getbDate() {
		return bDate;
	}
	
	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}
	
	public int getbHit() {
		return bHit;
	}
	
	public void setbHit(int bHit) {
		this.bHit = bHit;
	}
	
	public int getbGroup() {
		return bGroup;
	}
	
	public void setbGroup(int bGroup) {
		this.bGroup = bGroup;
	}
	
	public int getbStep() {
		return bStep;
	}
	
	public void setbStep(int bStep) {
		this.bStep = bStep;
	}
	
	public int getbIndent() {
		return bIndent;
	}
	
	public void setbIndent(int bIndent) {
		this.bIndent = bIndent;
	}
	
	public String getbdTitle() {
		return bdTitle;
	}
	public void setbdTitle(String bdTitle) {
		this.bdTitle = bdTitle;
	}
	public int getbdId() {
		return bdId;
	}
	
	public void setbdId(int bdId) {
		this.bdId = bdId;
	}
	public String getmenuTitle() {
		return menuTitle;
	}
	public void setmenuTitle(String menuTitle) {
		this.menuTitle = menuTitle;
	}
	public String getmenuContent() {
		return menuContent;
	}
	public void setmenuContent(String menuContent) {
		this.menuContent = menuContent;
	}
	
	

}
