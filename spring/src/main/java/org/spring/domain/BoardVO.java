package org.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private int num;
	private String id;
	private String name;	
	private String title;
	private String subject;
	private Date regdate;
	private Date updateDate;
	private int hit;
	private String ip;
	private String lastUpdateIp;
	private int authority;
	private String deleteYN;
	private Date deldate;
	
//	private int bno;
//	private String writerId;
//	private String writerName;	
//	private String title;
//	private String content;
//	private Date regdate;
//	private Date updateDate;
//	private int hit;
//	private String ip;
//	private String lastUpdateIp;
//	private int authority;
//	private String deleteYN;
//	private Date deldate;

}
