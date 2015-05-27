package org.krams.domain;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: 370727
 * Date: 4/27/15
 * Time: 8:40 PM
 * To change this template use File | Settings | File Templates.
 */

public class RatingHistory {

    private String id;
    private String targetId;
    private String targetType;
    private String value;
    private String userId;
    private Date creationDate;

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTargetId() {
        return targetId;
    }

    public void setTargetId(String targetId) {
        this.targetId = targetId;
    }

    public String getTargetType() {
        return targetType;
    }

    public void setTargetType(String targetType) {
        this.targetType = targetType;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
