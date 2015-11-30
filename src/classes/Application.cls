////////////////////////////////////////////////////////////////////////////////////////////////////////
// This file will be the first one to create for FF Apex Framework.
// However, actual content needs to be created first before making the reference. 
////////////////////////////////////////////////////////////////////////////////////////////////////////

public class Application {

	//UoW ( List of SObjects)
	public static final fflib_Application.UnitOfWorkFactory UnitOfWork = 
		new fflib_Application.UnitOfWorkFactory(
			new List<SObjectType> {
				Speaker__c.SObjectType
			}
		);
	//Service (Map of Interface to Implementation class)
	public static final fflib_Application.ServiceFactory Service = 
		new fflib_Application.ServiceFactory(
			new Map<Type, Type> {
				ISpeakersService.class => SpeakersServiceImpl.class
				
			}
		);
	
	
	//Selector (Map of SObject to Selector Class (no interface mapping here))
	public static final fflib_Application.SelectorFactory Selector = 
		new fflib_Application.SelectorFactory(
			new Map<SObjectType, Type> {
				Speaker__c.SObjectType => SpeakersSelector.class
			}
		);
	
	//Domain ( Always pass Selector AND Map of SObject and Constructor class for Bulkification purpose)
	public static final fflib_Application.DomainFactory Domain =
		new fflib_Application.DomainFactory(
			Application.Selector,
			new Map<SObjectType, Type> {
				Speaker__c.SObjectType => Speakers.Constructor.class
		
			}
		);	

}