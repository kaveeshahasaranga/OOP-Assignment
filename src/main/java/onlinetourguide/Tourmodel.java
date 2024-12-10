package onlinetourguide;

public class Tourmodel {
	
	private int id;
	private String tourname;
	private String price;
	private String image;
	private String location;
	private String description;
	public Tourmodel(int id, String tourname, String price, String image, String location, String description) {
		super();
		this.id = id;
		this.tourname = tourname;
		this.price = price;
		this.image = image;
		this.location = location;
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTourname() {
		return tourname;
	}
	public void setTourname(String tourname) {
		this.tourname = tourname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}


}
