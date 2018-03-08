package com.sencerseven.blog.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.sencerseven.blog.functions.BlogFunctions;

public class FileUploadUtility {

	private static String ABS_PATH = "/Users/sencerseven/git/sencersevenblog/blog/src/main/webapp/assets/images/uploads/";
	private static String REAL_PATH;
	private static String PATH = "/assets/images/uploads/";
	
	
	public static List<String> multiFileUpload(HttpServletRequest request,List<MultipartFile> file) {
		
		REAL_PATH = request.getSession().getServletContext().getRealPath(PATH);
		
		if(!new File(ABS_PATH).exists())
			new File(ABS_PATH).mkdir();
		
		if(!new File(REAL_PATH).exists())
			new File(REAL_PATH).mkdir();
		
		List<String> fileNames = new ArrayList<String>();
		
		for(int i=0; i< file.size(); i++) {
			try {
				String fileExtName = FilenameUtils.getExtension(file.get(i).getOriginalFilename());
				String fileNameWithOutExt = FilenameUtils.removeExtension(file.get(i).getOriginalFilename());
				String saltName = BlogFunctions.toPrettyURL(fileNameWithOutExt);
				String newName = saltName + "." + fileExtName;
				fileNames.add(newName);
				FileCopyUtils.copy(file.get(i).getBytes(),new File(REAL_PATH + newName ));
				FileCopyUtils.copy(file.get(i).getBytes(),new File(ABS_PATH + newName));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return fileNames; 
		
		
	}
}
