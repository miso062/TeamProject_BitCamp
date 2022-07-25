package test.firebase;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.google.api.client.util.IOUtils;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.storage.Blob;
import com.google.cloud.storage.Bucket;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseAuthException;
import com.google.firebase.cloud.StorageClient;

@Service
public class FireStorage {
	
	public static final String firebaseBucket = "gese-t.appspot.com";
	
	public static void main(String[] args) throws IOException, FirebaseAuthException {
		
		initialize();
		
		File file = new File("C:\\Users\\smile\\Downloads\\파스타.jfif");
		DiskFileItem fileItem = new DiskFileItem("test", 
				Files.probeContentType(file.toPath()),
				false,
				file.getName(), 
				(int)file.length(),
				file.getParentFile());
		
		InputStream input = new FileInputStream(file);
		OutputStream os = fileItem.getOutputStream();
		IOUtils.copy(input, os);
		
		MultipartFile multipartFile = new CommonsMultipartFile(fileItem);
		uploadFiles(multipartFile, "memId");
//		https://storage.googleapis.com/gese-t.appspot.com/
	}
	
	@SuppressWarnings("deprecation")
	public static void initialize() {
		try {
			String path = FireStorage.class.getResource("").getPath();
			
			FileInputStream serviceAccount = new FileInputStream(path + "serviceAccountKey.json");
			FirebaseOptions options = new FirebaseOptions.Builder()
					  .setCredentials(GoogleCredentials.fromStream(serviceAccount))
					  .build();
			if(FirebaseApp.getApps().isEmpty()) {
				FirebaseApp.initializeApp(options);
				System.out.println("Firebase application has been initialized");
			}
			System.out.println("성공");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static String uploadFiles(MultipartFile file, String nameFile)
		throws FirebaseAuthException, IOException{
		Bucket bucket = StorageClient.getInstance().bucket(firebaseBucket);
		InputStream content = new ByteArrayInputStream(file.getBytes());
		Blob blob = bucket.create(nameFile.toString(), content, file.getContentType());
		System.out.println(blob.getSelfLink());
		System.out.println(blob.getMediaLink());
		
		return blob.getMediaLink();
	}
}
