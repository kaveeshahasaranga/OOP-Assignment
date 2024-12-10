package onlinetourguide;

public class EventMode {
	private int id;
	private String eventname;
	private String location;
	private String date;
	private String description;
	
	
	public EventMode(int id, String eventname, String location, String date, String description) {
		super();
		this.id = id;
		this.eventname = eventname;
		this.location = location;
		this.date = date;
		this.description = description;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEventname() {
		return eventname;
	}


	public void setEventname(String eventname) {
		this.eventname = eventname;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
