<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
        <link rel="stylesheet" href="assets/modal.css">
        <title>Address Book</title>
        <link rel="shortcut icon" href="assets/ABicon.png">
    </head>
    <body>
        <cfoutput>
            <cfinclude  template="mainHeade.cfm"> 
            <div class="middle padding10">
                <div class="dflex whiteBackground justifyFlexEnd margin10">
                    <img src="assets/pdf.png" alt="pdf" class="imgIcon">
                    <img src="assets/excel.png" alt="excel" class="imgIcon">
                    <img src="assets/printer.png" alt="printer" class="imgIcon">
                </div>
                <div class="dflex padding10 ">
                    <div class="padding10 whiteBackground">
                        <div class="dflex justfyCenter ">
                            <img src="assets/profile.png" alt="printer" class="bookImg">
                        </div>
                        <div class="dflex justfyCenter blue weight700">#session.name#</div>
                        <button onclick="document.getElementById('id01').style.display='block'" class="background white curveBoder small">CREATE CONTACT</button>
                    </div>
                </div>  
                <div id="id01" class="w3-modal ">
                    <div class="w3-modal-content middle padding10">
                      <div class="w3-container dflex">
                        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                        <div class="whiteBackground padding10 width600">
                            <div class="lightblue dflex justfyCenter">
                                <div class="extraLarge blue padding10">CREATE CONTACT</div>
                            </div>
                            <div class="padding10 blue blueBottomBorder">Personal Contact</div>
                            <form method="post" name="createFrom">
                                <div class="dflex">
                                    <div>
                                        <div class="blue padding10">Title</div>
                                            <select name="option" id="option">
                                                <option selected="" value="Default"></option>
                                                <option value="Mr">Mr</option>
                                                <option value="Mrs">Mrs</option>
                                                <option value="Ms">Ms</option>
                                            </select>
                                        </div>
                                    <div>
                                    <div class="blue padding10">First Name*</div>
                                </div>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
        </cfoutput>