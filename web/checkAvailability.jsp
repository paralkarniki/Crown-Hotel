<div class="container" id="checkAvailabilityForm" style="color:white;">
    <div class="modal-dialog">
        <div class="modal-body">
            <div class="row">
                <div>
                    <form>
                        
                        <h2>Check Availability</h2>
                            <hr class="colorgraph">

                                <div class="form-group">
                                    <label>Check-In: </label>                                            
                                    <input type="date" name="CheckIn" class="form-control input-lg" placeholder="Check In Date"/>
                                    
                                </div>
                                <div class="form-group">
                                    <label>Check-Out: </label>
                                    <input type="date" name="CheckOut" class="form-control input-lg" placeholder="Check Out"/>
                                </div>
                                <div class="form-group">
                                    <label>Type Of Room: </label>
                                    <select class="select_room form-control input-lg" data-style="btn-primary" id="guests" name="guests" onchange="roomType(this.value)" >
                                        <option value="1">Single-Bed Room</option>
                                        <option value="2">Double-Bed Room</option>
                                        <option value="3">Triple-Bed Room</option>
                                    </select>
                                </div>

                                <hr class="colorgraph">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <input type="submit" class="btn btn-default btn-info btn-block" value="Check Availability">
                                    </div>

                                </div>
                    </form>
                </div>
            </div>
        </div>
   </div>
</div>
