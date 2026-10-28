@RestResource(urlMapping='/insuranceclaims/*')
global with sharing class ClaimRestApi {

    @HttpGet
    global static List<Insurance_Claim__c> getClaims() {

        return [
            SELECT Id,
                   Name,
                   Claim_Number__c,
                   Claim_Type__c,
                   Claim_Status__c,
                   Priority__c,
                   Estimated_Damage__c,
                   Assessed_Damage__c,
                   Eligible_Claim_Amount__c
            FROM Insurance_Claim__c
            ORDER BY CreatedDate DESC
        ];
    }
}