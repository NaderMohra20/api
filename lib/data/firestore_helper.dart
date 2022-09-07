// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirestoreHelper {
//   FirestoreHelper._();
//   static FirestoreHelper firestoreHelper = FirestoreHelper._();
//   CollectionReference<Map<String, dynamic>> categoriesCollectionRefrence =
//       FirebaseFirestore.instance.collection("categories");
//   CollectionReference<Map<String, dynamic>> photosCollectionRefrence =
//       FirebaseFirestore.instance.collection("photos");
//   CollectionReference<Map<String, dynamic>> offersCollectionRefrence =
//       FirebaseFirestore.instance.collection("offers");
//   CollectionReference<Map<String, dynamic>> usersCollectionRefrence =
//       FirebaseFirestore.instance.collection("users");

//   // Future<List<Category>> getAllCategories() async {
//   //   QuerySnapshot<Map<String, dynamic>> querySnapshot =
//   //       await categoriesCollectionRefrence.get();
//   //   List<Category> categories = querySnapshot.docs.map((e) {
//   //     Category category = Category.fromMap(e.data());
//   //     category.catId = e.id;
//   //     return category;
//   //   }).toList();
//   //   return categories;
//   // }

//   // Future<List<Prodect>> getAllProdects(String catId) async {
//   //   QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore
//   //       .instance
//   //       .collection("categories")
//   //       .doc(catId)
//   //       .collection("prodects")
//   //       .get();
//   //   List<Prodect> products = querySnapshot.docs.map((e) {
//   //     Map<String, dynamic> data = e.data();
//   //     data["id"] = e.id;
//   //     Prodect prodect = Prodect.fromMap(data);

//   //     return prodect;
//   //   }).toList();
//   //   return products;
//   // }

//   // Future<List<Photo>> getAllPhoto() async {
//   //   QuerySnapshot<Map<String, dynamic>> querySnapshot =
//   //       await photosCollectionRefrence.get();
//   //   List<Photo> photos = querySnapshot.docs.map((e) {
//   //     Photo photo = Photo.fromMap(e.data());
//   //     photo.id = e.id;
//   //     return photo;
//   //   }).toList();
//   //   return photos;
//   // }

//   // Future<List<Offer>> getAllOffers() async {
//   //   QuerySnapshot<Map<String, dynamic>> querySnapshot =
//   //       await offersCollectionRefrence.get();
//   //   List<Offer> offers = querySnapshot.docs.map((e) {
//   //     Offer offer = Offer.fromMap(e.data());
//   //     offer.id = e.id;
//   //     return offer;
//   //   }).toList();
//   //   return offers;
//   // }
// }
