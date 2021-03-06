package com.dost.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {

	public static String formatDate(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dateFormat.format(date);
	}
	
	public static Date formatDate(String dateStr) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		try {
			date = dateFormat.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static String formatDate(String format, Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		return dateFormat.format(date);
	}
	
	public static Date formatDate(String format, String dateStr) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		Date date = null;
		try {
			date = dateFormat.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static String unixToDate(String unix_timestamp) {    
	    long timestamp = Long.parseLong(unix_timestamp) * 1000;

	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String date = null;
	    date = sdf.format(timestamp);
	    return date.toString();
	}
	
	public static Long dateToUnix(String date) {    
	    Date localDate = formatDate("yyyy-M-dd HH:mm:ss", date);
	    localDate.setHours(localDate.getHours() - 4);
//	    return localDate.getTime() / 1000L;
	    return localDate.getTime();
	}
}
