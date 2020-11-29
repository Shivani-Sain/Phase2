package com.fly;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="flight")
public class Flight {
	@Id
	@Column(name="date")
	private String date;
	@Column(name="source")
	private String source;
	@Column(name="destination")
	private String destination;
	@Column(name="price")
	private String price;
	@Column(name="airline")
	private String airline;
	@Column(name="flightNo")
	private String flightNo;
	
	public String getFlightNo() {
		return flightNo;
	}
	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Flight() {
		}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	@Override
	public String toString() {
		return "Flight [date=" + date + ", source=" + source + ", destination=" + destination + ", price=" + price
				+ ", airline=" + airline + "]";
	}
	
	
}
