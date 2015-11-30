////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is Interface for Domain layer template of FF Framework
// Step 1 of 2 for Domain Layer
// Change Class Name to appropriate name
// Naming convention is IsObjects (note the plural form of sObject)
// Nothing interesting but just method signatures 
//
// Important: extends fflib_ISObjectDomain 
////////////////////////////////////////////////////////////////////////////////////////////////////////

public interface ISpeakers extends fflib_ISObjectDomain{
	List<Speaker__c> getSpeakersInfo();
}