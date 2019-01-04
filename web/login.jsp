<button type="button" class="btn btn-link btn-lg" data-toggle="modal" data-target="#login">Login</button>

<!-- Modal -->
<div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div>
                        <form role="form" action="login" method="POST">
                            <fieldset>
                                <h2>Please Sign In</h2>
                                <hr class="colorgraph">
                                <div class="form-group">
                                    <input type="text" name="username" id="username" class="form-control input-lg" placeholder="Username" required="required">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" required="required">
                                </div>

                                <hr class="colorgraph">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <button type="button" class="btn btn-lg btn-primary btn-block" data-toggle="modal" data-target="#register" data-dismiss="modal">Register</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->

<div class="modal fade" id="register" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div>
                        <form role="form" action="register" method="POST">
                            <fieldset>
                                <h2>Please Sign Up <small>It's free and always will be.</small></h2>
                                <hr class="colorgraph">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1" required="required">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2" required="required">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="display_name" id="display_name" class="form-control input-lg" placeholder="Display Name" tabindex="3" required="required">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="4" required="required">
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5" required="required">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="6" required="required">
                                        </div>
                                    </div>
                                </div>
                                <hr class="colorgraph">
                                <div class="row">
                                    <div class="col-xs-12 col-md-6"><input type="submit" value="Register" class="btn btn-success btn-block btn-lg" tabindex="7"></div>
                                    <div class="col-xs-12 col-md-6">
                                        <button type="button" class="btn btn-lg btn-primary btn-block" data-toggle="modal" data-target="#login" data-dismiss="modal">Sign In</button>

                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>