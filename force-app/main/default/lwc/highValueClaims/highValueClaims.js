import { LightningElement, wire } from 'lwc';
import getHighValueClaims from '@salesforce/apex/ClaimQueryService.getHighValueClaims';

export default class HighValueClaims extends LightningElement {
    claims;
    error;

    @wire(getHighValueClaims)
    wiredClaims({ data, error }) {
        if (data) {
            this.claims = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.claims = undefined;
        }
    }
}