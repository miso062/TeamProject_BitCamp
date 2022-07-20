/**
 * Firebase Cloud Storage Image Upload Example
 */

import { getStorage, ref, uploadBytes } from "firebase/storage";

const storage = getStorage();
const storageRef = ref(storage, 'some-child');

// 'file' comes from the File API
uploadBytes(storageRef, file).then((snapshot) => {
  console.log('Uploaded a file!');
});