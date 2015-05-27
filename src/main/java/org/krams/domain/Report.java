package org.krams.domain;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: 370727
 * Date: 4/27/15
 * Time: 8:40 PM
 * To change this template use File | Settings | File Templates.
 */

public class Report {

    private String id;

    private String hiddenReportType;
    private String hiddenReportIdVal;
    private Date creationDate;
    private String displayName;
    private String reportText;
    private String userId;
    private String is;
    private String theme;

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHiddenReportType() {
        return hiddenReportType;
    }

    public void setHiddenReportType(String hiddenReportType) {
        this.hiddenReportType = hiddenReportType;
    }

    public String getHiddenReportIdVal() {
        return hiddenReportIdVal;
    }

    public void setHiddenReportIdVal(String hiddenReportIdVal) {
        this.hiddenReportIdVal = hiddenReportIdVal;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getReportText() {
        return reportText;
    }

    public void setReportText(String reportText) {
        this.reportText = reportText;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getIs() {
        return is;
    }

    public void setIs(String is) {
        this.is = is;
    }
}
