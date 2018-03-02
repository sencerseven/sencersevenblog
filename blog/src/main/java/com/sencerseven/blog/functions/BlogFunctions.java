package com.sencerseven.blog.functions;

import java.text.Normalizer;
import java.text.Normalizer.Form;

public class BlogFunctions {
	
	public static String toPrettyURL(String string) {
	    return Normalizer.normalize(string.toLowerCase(), Form.NFD)
	        .replaceAll("\\p{InCombiningDiacriticalMarks}+", "")
	        .replaceAll("[^\\p{Alnum}]+", "-");
	}

}
