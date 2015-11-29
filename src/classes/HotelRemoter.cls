global with sharing class HotelRemoter {
	@RemoteAction
    global static List<Hotel__c> findAll() {
        return [Select Id, Name, Location__Latitude__s, Location__Longitude__s From Hotel__c];
    }
}