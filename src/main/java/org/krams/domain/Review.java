package org.krams.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;
import java.util.List;

@Document
public class Review {
	
	@Id
	private String id;

    private String behaviour;
    private String attitude;
    private String ebBill;
    private String maintainance;
    private String guest;
    private String hiddenCost;
    private String water;
    private String parking;
    private String otherComments;
    private String suggestion;
    private List<Reply> replies;
    private String voteUp;
    private String voteDown;
    private String userId;
    private String displayName;
    private Date creationDate;

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getVoteUp() {
        return voteUp;
    }

    public void setVoteUp(String voteUp) {
        this.voteUp = voteUp;
    }

    public String getVoteDown() {
        return voteDown;
    }

    public void setVoteDown(String voteDown) {
        this.voteDown = voteDown;
    }

    public List<Reply> getReplies() {
        return replies;
    }

    public void setReplies(List<Reply> replies) {
        this.replies = replies;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBehaviour() {
        return behaviour;
    }

    public void setBehaviour(String behaviour) {
        this.behaviour = behaviour;
    }

    public String getAttitude() {
        return attitude;
    }

    public void setAttitude(String attitude) {
        this.attitude = attitude;
    }

    public String getEbBill() {
        return ebBill;
    }

    public void setEbBill(String ebBill) {
        this.ebBill = ebBill;
    }

    public String getMaintainance() {
        return maintainance;
    }

    public void setMaintainance(String maintainance) {
        this.maintainance = maintainance;
    }

    public String getGuest() {
        return guest;
    }

    public void setGuest(String guest) {
        this.guest = guest;
    }

    public String getHiddenCost() {
        return hiddenCost;
    }

    public void setHiddenCost(String hiddenCost) {
        this.hiddenCost = hiddenCost;
    }

    public String getWater() {
        return water;
    }

    public void setWater(String water) {
        this.water = water;
    }

    public String getParking() {
        return parking;
    }

    public void setParking(String parking) {
        this.parking = parking;
    }

    public String getOtherComments() {
        return otherComments;
    }

    public void setOtherComments(String otherComments) {
        this.otherComments = otherComments;
    }

    public String getSuggestion() {
        return suggestion;
    }

    public void setSuggestion(String suggestion) {
        this.suggestion = suggestion;
    }
}
