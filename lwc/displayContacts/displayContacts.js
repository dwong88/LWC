import { LightningElement,wire } from 'lwc';
import displayConRecords from '@salesforce/apex/ContactController.displayConRecords'

export default class DisplayContacts extends LightningElement {
    @wire(displayConRecords) contacts;

}