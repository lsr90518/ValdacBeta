package com.ValdacBeta.controller;

import com.ValdacBeta.entity.User;
import com.ValdacBeta.service.UserService;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.FileContent;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.google.api.services.drive.model.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

@Controller
public class ImageController {
    @Autowired
    private UserService userService;

    private static String CLIENT_ID = "1084207930508-hgd9hasqq9ed2ip5l57i87gjr9rglhjl.apps.googleusercontent.com";
    private static String CLIENT_SECRET = "C6lzJpZAGdNkR4ZTGm_cFTSS";

    private static String REDIRECT_URI = "http://localhost:8080/oauth2callback";
    public String imageName;
    public String imageId;
    public String myCode;
    public HttpTransport httpTransport;
    public JsonFactory jsonFactory;
    GoogleAuthorizationCodeFlow flow;

    @RequestMapping(value = "/imageDriveUpload",method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String requestCode(@RequestParam(value = "upfile") String upfile,HttpSession session, ModelMap modelMap) throws IOException {

        imageName=upfile;
        System.out.println(upfile);
        httpTransport = new NetHttpTransport();
        jsonFactory = new JacksonFactory();

        flow = new GoogleAuthorizationCodeFlow.Builder(
                httpTransport, jsonFactory, CLIENT_ID, CLIENT_SECRET, Arrays.asList(DriveScopes.DRIVE))
                .setAccessType("online")
                .setApprovalPrompt("auto").build();

        String url = flow.newAuthorizationUrl().setRedirectUri(REDIRECT_URI).build();


        System.out.println("Please open the following URL in your browser then type the authorization code:");
        System.out.println("  " + url);
        modelMap.addAttribute("url",url);
        return url;
    }

    @RequestMapping(value = "/oauth2callback",method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String printWelcome(@RequestParam("code") String code,HttpSession session, ModelMap model) throws IOException {
        model.addAttribute("message", "oauth2callback");
        myCode = code;
        System.out.print(code);

        GoogleTokenResponse response = null;
        try {
            response = flow.newTokenRequest(code).setRedirectUri(REDIRECT_URI).execute();

            GoogleCredential credential = new GoogleCredential().setFromTokenResponse(response);

            //Create a new authorized API client
            Drive service = new Drive.Builder(httpTransport, jsonFactory, credential).build();
           //upload画像
            File body=new File();
            body.setTitle(imageName);
            java.io.File fileMetadata=new java.io.File("/Users/zhangrui/Desktop/workspace/img/"+imageName);
            FileContent mediaContent = new FileContent("image/png", fileMetadata);
            File file = service.files().insert(body, mediaContent).execute();
            imageId=file.getId();
            System.out.println("File png ID: " + imageId);
            String Url="http://drive.google.com/uc?export=view&id="+imageId;
            System.out.println("Url:"+Url);
            model.addAttribute("profileID",file.getId());
            model.addAttribute("Url",Url);
        } catch (IOException e) {
            e.printStackTrace();
        }

        User user=(User)session.getAttribute("user");


        if (user !=null){
            user = userService.updateUserProfileImage(user,imageId);

            model.addAttribute("user",user);
            session.setAttribute("user",user);
            model.addAttribute("message","更新完成");
            return "Loading...";
        } else {
            return "login";
        }
    }
}
