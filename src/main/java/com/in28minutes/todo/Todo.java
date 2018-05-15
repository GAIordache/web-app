package com.in28minutes.todo;

public class Todo {
	private String name;
	private String category;
	
	public Todo(String pName,String pCategory) {
		super();
		this.name = pName;
		this.category = pCategory;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String pCategory) {
		category = pCategory;
	}

	public String getName() {
		return name;
	}

	public void setName(String pName) {
		name = pName;
	}


	

	@Override
	public String toString() {
		return "Todo [name=" + name + ", category=" + category + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Todo other = (Todo) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
	
	
}
