package data;

public class Movie {
	
	private Integer id;
	private String title;
	private Integer year;
	private Integer duration;
	
	public Movie() {
	}
	
	public Movie(String title, Integer year) {
		this(title, year, null);
	}
	
	public Movie(String title, Integer year, Integer duration) {
		this.title = title;
		this.year = year;
		this.duration = duration;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(title)
			.append(" (")
			.append(year)
			.append(")");
		return builder.toString();
	}
	

}
