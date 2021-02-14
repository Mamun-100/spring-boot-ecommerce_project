

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-3 register-left">
    <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
    <h3>Welcome</h3>
    <p>If  have no accounts then quickly sign up account</p>
    <a href="<c:url value="loginView"/>"><input type="submit" style="background: #58AB53" name="" value="Login"/></a><br/>
</div>
<div class="col-md-9 register-right">
    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
        </li>
    </ul>
    <form action="/signupSubmit" method="GET">
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <h3 class="register-heading">Apply Of User</h3>
                <div class="row register-form">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="name"class="form-control" placeholder="First Name" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text"  name="name"class="form-control" placeholder="Last Name" value="" />
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password" value="" />
                        </div>
                        <div class="form-group">
                            <input type="password"  name="password" class="form-control"  placeholder="Confirm Password" value="" />
                        </div>
                        <div class="form-group">
                            <div class="maxl">
                                <label class="radio inline"> 
                                    <input type="radio" name="gender" value="male" checked>
                                    <span> Male </span> 
                                </label>
                                <label class="radio inline"> 
                                    <input type="radio" name="gender" value="female">
                                    <span>Female </span> 
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="Your Email " value=""width="auto" />
                        </div>
                        <div class="form-group">
                            <input type="text" minlength="11" maxlength="11" name="mobile" class="form-control" placeholder="Your Phone" value="" />
                        </div>
                        <div class="form-group">
                            <select class="form-control" name="type">
                                <option class="hidden"  selected disabled> Selects</option>
                                <option value="admin">admin</option>
                                <option value="user">user</option>             
                            </select>
                        </div>
                        <input type="submit" class="btnRegister"  value="Signup Submite"/>
                    </div>
                </div>
            </div>      
        </div>
    </form>

</div>


