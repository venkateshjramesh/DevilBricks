package org.krams.controller;

import org.krams.domain.Reply;
import org.krams.domain.Report;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/saveReport")
public class SaveReportController {

    @Autowired
    private DevilBrickService service;

    @RequestMapping(method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getReviews(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("hiddenReportType") String hiddenReportType,
            @ModelAttribute("hiddenReportIdVal") String hiddenReportIdVal,
            @ModelAttribute("displayName") String displayName,
            @ModelAttribute("reportText") String reportText,
            @ModelAttribute("userId") String userId ,
            @ModelAttribute("theme") String theme
    ) {

        Report report = new Report();
        report.setUserId(userId);
        report.setCreationDate(new Date());
        report.setDisplayName(displayName);
        report.setHiddenReportIdVal(hiddenReportIdVal);
        report.setHiddenReportType(hiddenReportType);
        report.setTheme(theme);

        service.createReport(report);

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("success","success");
        return model;

    }

}
