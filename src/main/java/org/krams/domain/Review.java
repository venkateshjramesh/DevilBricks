package org.krams.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Review {
	
	@Id
	private String id;


    private String behaviourDesc;

    private String attitudeDesc;

    private String ebBillDesc;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBehaviourDesc() {
        return behaviourDesc;
    }

    public void setBehaviourDesc(String behaviourDesc) {
        this.behaviourDesc = behaviourDesc;
    }

    public String getAttitudeDesc() {
        return attitudeDesc;
    }

    public void setAttitudeDesc(String attitudeDesc) {
        this.attitudeDesc = attitudeDesc;
    }

    public String getEbBillDesc() {
        return ebBillDesc;
    }

    public void setEbBillDesc(String ebBillDesc) {
        this.ebBillDesc = ebBillDesc;
    }
}
