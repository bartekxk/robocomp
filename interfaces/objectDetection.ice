//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: objectDetection.idl
//  Source: objectDetection.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPOBJECTDETECTION_ICE
#define ROBOCOMPOBJECTDETECTION_ICE

module RoboCompobjectDetection
{
	sequence <string> listType;
	
	interface objectDetection
	{
		void  statisticalOutliersRemoval();
		void  passThrough();
		void  grabThePointCloud(string image, string pcd);
		void  aprilFitModel(string model);
		void  fitModel(string model, string method);
 		void  getInliers(string model);
		void  projectInliers(string model);
		void  convexHull(string model);
		void  extractPolygon(string model);
		void  ransac(string model);
		void  normalSegmentation(string model);
		void  euclideanClustering(out int numCluseters);
		void  showObject(int numObject);
		void  reset();
		void  mirrorPC();
		void  mindTheGapPC();
		void  reloadVFH(string pathToSet);
		void  loadTrainedVFH();
		void  fitTheViewVFH();
		void  vfh(out listType guesses);
		void  surfHomography(out listType guesses);
		void  centroidBasedPose(out float x, out float y, out float theta);
		void  segmentImage();
		void  grabTheAR();
		void  findTheObject(string objectTofind);
		void  getPose(out float x,out float y,out float z);
		void  getRotation(out float rx,out float ry,out float rz);
	};
};
  
#endif