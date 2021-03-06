package com.kedu.board.dto;

public class BoardSearchCriteria extends BoardCriteria {

	private String searchType;
	private String keyword;
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	@Override
	public String toString() {
		return "BoardSearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", toString()="
				+ super.toString() + "]";
	}
	
}
