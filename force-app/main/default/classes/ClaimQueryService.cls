public class ClaimQueryService {
    @AuraEnabled(cacheable=true)
    public static List<Insurance_Claim__c> getHighValueClaims() {

        return [
            SELECT Id,
                   Name,
                   Claim_Number__c,
                   Claim_Type__c,
                   Claim_Status__c,
                   Priority__c,
                   Estimated_Damage__c,
                   Assessed_Damage__c,
                   Eligible_Claim_Amount__c,
                   Customer__c,
                   Policy__c,
                   Vehicle__c
            FROM Insurance_Claim__c
            WHERE Eligible_Claim_Amount__c > 50000
            ORDER BY Eligible_Claim_Amount__c DESC
        ];
    }
}