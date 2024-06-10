package com.webapp.utils;

public class ConverterUtil {
	public static Long[] converter(String rawString) {
		Long longList[] = new Long[100];
		if (rawString!=null && !rawString.equals("")) {
		String[] tokens = rawString.split(",");
		for (int i=0; i<tokens.length; ++i) {
			longList[i] = Long.parseLong(tokens[i]);
		}
		}
		return longList;
	}
}
