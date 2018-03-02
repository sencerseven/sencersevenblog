package com.sencerseven.blogbackend.funtions;

import java.text.Normalizer;
import java.text.Normalizer.Form;

import org.springframework.lang.Nullable;

public class BlogBackendFunctions {
	
public static String toPrettyURL(String string,@Nullable Integer id) {
		
		if(id != null) {
		string = string + " " +id;	
		}
	
		string = string.replace('ı', 'i');
		string = string.replace('ö', 'o');
		string = string.replace('ü', 'u');
		string = string.replace('ç', 'c');
		
	    return Normalizer.normalize(string.toLowerCase(), Form.NFD)
	        .replaceAll("\\p{InCombiningDiacriticalMarks}+", "")
	        .replaceAll("[^\\p{Alnum}]+", "-");
	}

}
