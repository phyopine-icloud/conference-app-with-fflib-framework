////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is Interface for Selector layer template of FF Framework
// Step 1 of 2 for Selector Layer
// Change Class Name to appropriate name
// Naming convention is IsObjectsSelector (note the plural form of sObject)
// Nothing interesting but just method signatures 
//
// Important: extends fflib_ISObjectSelector 
////////////////////////////////////////////////////////////////////////////////////////////////////////

public interface ISpeakersSelector extends fflib_ISObjectSelector 
{
	List<Speaker__c> selectById(Set<ID> idSet);	
}