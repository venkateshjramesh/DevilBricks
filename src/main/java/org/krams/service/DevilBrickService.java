package org.krams.service;

import org.krams.domain.*;
import org.krams.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.ServletRequestAttributes;


@Service
public class DevilBrickService {

    @Autowired
    private IMongoDBOwnerRepository mongoDBOwnerRepository;

    @Autowired
    private MongoTemplate mongoTemplate;

	@Autowired
	private OwnerRepository ownerRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private BloggerRepository bloggerRepository;

    @Autowired
    private ReplyRepository replyRepository;

    @Autowired
    private ReportRepository reportRepository;

    @Autowired
    private RatingHistoryRepository ratingHistoryRepository;

    @Autowired
    private CityZipRepository cityZipRepository;

    @Autowired
    private SimpleMailMessage emailTemplate;

    @Autowired
    private JavaMailSenderImpl javaMailSender;



    public Owner create(Owner owner) {
        if(owner.getId()!=null && owner.getId().equals(""))
        owner.setId(UUID.randomUUID().toString());
        return ownerRepository.save(owner);
    }

    public Report createReport(Report report) {
        report.setId(UUID.randomUUID().toString());
        return reportRepository.save(report);
    }

    public RatingHistory createRatingHistory(RatingHistory ratingHistory) {
        ratingHistory.setId(UUID.randomUUID().toString());
        return ratingHistoryRepository.save(ratingHistory);
    }

    public Blogger createBlogger(Blogger blogger) {
        blogger.setId(UUID.randomUUID().toString());
        return bloggerRepository.save(blogger);
    }

    public Blogger updateBlogger(Blogger blogger) {
        return bloggerRepository.save(blogger);
    }


    public Blogger findByEmail(String passwordEmail){
        return bloggerRepository.findByEmailAndStatus(passwordEmail, "A");
    }

    public List<Blogger> checkBlogger(Blogger blogger) {
        return bloggerRepository.findByParameters(blogger.getUserName(), blogger.getPassword());
    }

    public Blogger findOneBlogger(String id) {
        return bloggerRepository.findOne(id);
    }

    public Review createReview(Review review) {
        if(review.getId()!=null && review.getId().equals(""))
        review.setId(UUID.randomUUID().toString());
        else if(review.getId()==null)
            review.setId(UUID.randomUUID().toString());
        return reviewRepository.save(review);
    }

    public Review updateReview(Reply reply,String id) {
        Review review = reviewRepository.findOne(id);
        List<Reply> replies =  review.getReplies();
        if(replies==null) {
            replies = new ArrayList<Reply>();
        }
        //add reply in a specific position
        for(int j=0;j<replies.size();j++){
            if(replies.get(j).getId().equals(reply.getParentId())){
                replies.add(j + 1,reply);
            review.setReplies(replies);
            return reviewRepository.save(review);
            }
        }

        replies.add(reply);
        review.setReplies(replies);
        return reviewRepository.save(review);

    }


    public Owner findOne(String id) {
        return ownerRepository.findOne(id);
    }

    public CityZip findByPinCode(String pinCode) {
        List<CityZip> cityList = cityZipRepository.findByPinCode(pinCode);
        if(cityList != null && cityList.size() > 0)
        return cityList.get(0);
        else
            return null;
    }

    public Review findOneReview(String id) {
        return reviewRepository.findOne(id);
    }
    public Review findReviewForReply(String id) {
        return reviewRepository.findReviewForReply(id);
    }




    public List<Owner> findByParameters(Owner owner){
//        return  repository.findByFirstNameAndLastNameAndMobileAndEmailAndId(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId()) ;
//        return  repository.findByFirstNameOrLastNameOrMobileOrEmailOrId(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId()) ;
        //return repository.findByParameters(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId(),owner.getPlotNumber(),owner.getAppartmentName(),owner.getDoorNo(),owner.getFloor(),owner.getStreetName(),owner.getLandmark(),owner.getArea(),owner.getCity(),owner.getTaluk(),owner.getDistrict(),owner.getState(),owner.getPinCode());
        //return repository.findByParameters(owner.getFirstName(),owner.getPinCode());

        String pincode = owner.getFirstName()+"!"+owner.getLastName()+"!"+owner.getMobile()+"!"+owner.getEmail()+"!"+owner.getId()+"!"+owner.getPlotNumber()+"!"+owner.getAppartmentName()+"!"+owner.getDoorNo()+"!"+owner.getFloor()+"!"+owner.getStreetName()+"!"+owner.getLandmark()+"!"+owner.getArea()+"!"+owner.getCity()+"!"+owner.getTaluk()+"!"+owner.getDistrict()+"!"+owner.getState()+"!"+owner.getPinCode();

        return mongoDBOwnerRepository.findByPinCode(pincode);
        //mongoDBOwnerRepository.
        //return ownerRepository.findByPinCodeAndFirstName(owner.getPinCode(),owner.getFirstName());

    }

    public List<RatingHistory> findByParameters(String userId,String targetId) {
        return ratingHistoryRepository.findByUserIdAndTargetId(userId,targetId);
    }


    public void sendMail(String dear, String content,String passwordEmail,Blogger blogger) throws MessagingException {

        String[] emailList = new String[1];
        emailList[0] = passwordEmail;
        String fromEmail = emailTemplate.getFrom();
        String[] toEmail = emailList;
        String emailSubject = "Password Details - DevilBricks.com";
        //String emailBody = String.format("Please note your password : " + blogger.getPassword(), blogger.getUserName(), content);
        String emailBody = "Hi "  + blogger.getUserName() +  "<br>     Please note your password details below."
                +"<br><br><html><body><table border=1><tr><td>PASSWORD</td><td>"+blogger.getPassword()+"</td></tr></table></body></html>"
                + "<br><br>Thanks and Regards,<br>DevilBricksTeam";

        MimeMessage mimeMessage = javaMailSender.createMimeMessage();

            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

            helper.setFrom(fromEmail);
            helper.setTo(toEmail);
            helper.setSubject(emailSubject);
            helper.setText(emailBody,true);

			/*
			  uncomment the following lines for attachment FileSystemResource
			  file = new FileSystemResource("attachment.jpg");
			  helper.addAttachment(file.getFilename(), file);
			 */

            javaMailSender.send(mimeMessage);
            System.out.println("Mail sent successfully.");



    }

    public void sendVerificationMail(Blogger blogger, StringBuffer url) throws MessagingException {

        String[] emailList = new String[1];
        emailList[0] = blogger.getEmail();
        String fromEmail = emailTemplate.getFrom();
        String[] toEmail = emailList;
        String emailSubject = "User Verification - DevilBricks.com";
        //String emailBody = String.format("Please note your password : " + blogger.getPassword(), blogger.getUserName(), content);
        int endIndex = url.lastIndexOf("/");
        String emailBody = "Hi "  + blogger.getUserName() +  "<br>     Please click or copy and paste in a browser the following URL mentioned below to activate your acount."
                +"<br><br><html><body><table border=1><tr><td>URL</td><td>"+url.substring(0, endIndex) + "/verifyEmail/" + blogger.getId()+"</td></tr></table></body></html>"
                + "<br><br>Thanks and Regards,<br>DevilBricksTeam";

        MimeMessage mimeMessage = javaMailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

        helper.setFrom(fromEmail);
        helper.setTo(toEmail);
        helper.setSubject(emailSubject);
        helper.setText(emailBody,true);

			/*
			  uncomment the following lines for attachment FileSystemResource
			  file = new FileSystemResource("attachment.jpg");
			  helper.addAttachment(file.getFilename(), file);
			 */

        javaMailSender.send(mimeMessage);
        System.out.println("Mail sent successfully.");



    }

}
