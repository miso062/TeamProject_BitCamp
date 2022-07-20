package test.firebase;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.google.api.client.util.IOUtils;
import com.google.api.core.ApiFuture;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.WriteResult;
import com.google.cloud.storage.Blob;
import com.google.cloud.storage.Bucket;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseAuthException;
import com.google.firebase.cloud.FirestoreClient;
import com.google.firebase.cloud.StorageClient;

public class BtsFireBase {
	
	public static final String COLLECTION_NAME="profile_img";
	public static final String firebaseBucket = "gese-t.appspot.com";
	
	public static void main(String[] args) throws IOException, FirebaseAuthException {
		
		initialize();
		
		File file = new File("C:\\Users\\bitcamp\\Downloads\\cancel.png");
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
		System.out.println(uploadFiles(multipartFile, "smile974@naver.com"));
		
		Firestore firestore = FirestoreClient.getFirestore();
		
//		try {
//			삽입
//			ProfileImgDTO profileImgDTO = new ProfileImgDTO();
			
//			BtsVideoVO btsVideoVO = new BtsVideoVO();
//			btsVideoVO.setAge(1);
//			btsVideoVO.setId("test");
//			btsVideoVO.setName("testName");
//			btsVideoVO.setTel("010-1234-1234");
//			insertMember(btsVideoVO);
//			
//			getMemberDetail("test");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}
	
	@SuppressWarnings("deprecation")
	public static void initialize() {
		try {
			String path = BtsFireBase.class.getResource("").getPath();
			
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
	
	public static final String insertMember(BtsVideoVO member) throws Exception {
		Firestore firestore = FirestoreClient.getFirestore();
		ApiFuture<WriteResult> apiFuture = firestore.collection(COLLECTION_NAME).document(member.getId()).set(member);
		return apiFuture.get().getUpdateTime().toString();
	}
	
	public static void getMemberDetail(String id) throws Exception {
		Firestore firestore = FirestoreClient.getFirestore();
		DocumentReference documentReference = firestore.collection(COLLECTION_NAME).document(id);
		ApiFuture<DocumentSnapshot> apiFuture = documentReference.get();
		DocumentSnapshot documentSnapshot = apiFuture.get();
		
		BtsVideoVO member = null;
		
		if(documentSnapshot.exists()) {
			member = documentSnapshot.toObject(BtsVideoVO.class);
			System.out.println(member.toString());
		}
		else {
			
		}
	}
	
	public static String uploadFiles(MultipartFile file, String nameFile)
		throws FirebaseAuthException, IOException{
		Bucket bucket = StorageClient.getInstance().bucket(firebaseBucket);
		InputStream content = new ByteArrayInputStream(file.getBytes());
		Blob blob = bucket.create(nameFile.toString(), content, file.getContentType());
		System.out.println(blob.getSelfLink());
		
		return blob.getMediaLink();
	}
}
