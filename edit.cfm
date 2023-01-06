<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
        <link rel="stylesheet" href="assets/modal.css">
        <title>Address Book</title>
        <link rel="shortcut icon" href="assets/ABicon.png">
    </head>
    <body>
        <cfoutput>
            <form method="post" name="createFrom" onsubmit="return vadidateCreate()">
                <div class="dflex justfyBetween">
                    <div>
                        <div class="blue padding10">Title</div>
                            <select name="option" id="optionId" class="borderNone">
                                <option selected="" value="Default"></option>
                                <option value="Mr">Mr</option>
                                <option value="Mrs">Mrs</option>
                                <option value="Ms">Ms</option>
                            </select>
                        </div>
                    <div>
                        <div class="blue padding10">First Name*</div>   
                        <input type="text" name="fName" id="fName" placeholder="Your First Name" class="createText borderNone">
                    </div>
                    <div>
                        <div class="blue padding10">Last Name*</div>   
                        <input type="text" name="lName" id="lName" placeholder="Your Last Name" class=" error createText borderNone">
                    </div>
                </div>
                <div class="dflex justfyBetween">
                    <div>
                        <div class="blue padding10">Gender*</div>
                        <select name="option" id="option" class="borderNone createText2">
                            <option selected="" value="Default"></option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>
                    <div>
                        <div class="blue padding10">Date Of Birth*</div>   
                        <input type="date" name="date" id="date" class="createText2 borderNone">
                    </div>
                </div>
                <div class="dflex justfyBetween">
                    <div>
                        <div class="blue padding10">Upload Photo*</div>
                        <input type="file" name="file" id="file" class="createText2">
                    </div>
                </div>
                <div class="padding10 blue blueBottomBorder">Contact Details</div>
                <div class="dflex justfyBetween">
                    <div>
                        <div class="blue padding10">Address*</div>
                        <input type="text" name="address" id="address" placeholder="Your Address" class="createText2 borderNone">
                    </div>
                    <div>
                        <div class="blue padding10">Street*</div>   
                        <input type="text" name="street" id="street" placeholder="Your Street Name" class="createText2 borderNone">
                    </div>
                </div>
                <div class="dflex justfyBetween">
                    <div>
                        <div class="blue padding10">Email Id*</div>
                        <input type="text" name="email" id="address" placeholder="Your Email Address" class="createText2 borderNone">
                    </div>
                    <div>
                        <div class="blue padding10">Phone No*</div>   
                        <input type="text" name="street" id="street" placeholder="Your Phone No" class="createText2 borderNone">
                    </div>
                </div>
                <div class="dflex justfyCenter">
                    <input type="submit" name="createFormSubmit" id="createFormSubmit" class="login" value="Create">
                </div>
            </form>
        </div>
      </div>
    </div>
<script  src="js/jquery.js"></script>
</cfoutput>