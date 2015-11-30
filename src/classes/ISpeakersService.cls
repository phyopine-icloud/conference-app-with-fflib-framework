////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is Interface for service layer template of FF Framework
// Step 1 of 3 for Service Layer
// Change Class Name to appropriate name
// Naming convention is IsObjectsService (note the plural form of sObject)
// Nothing interesting but just method signatures 
////////////////////////////////////////////////////////////////////////////////////////////////////////

public interface ISpeakersService {
	//Define the method signature to be implemented in classes that implements the interface
	void getSpeakersInfo(Set<ID> speakerIds);
}