<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="entity.User"%>
<%
    javax.naming.Context ctx = new javax.naming.InitialContext();
    DataSource ds = (DataSource) ctx.lookup("jdbc/hotelapp");
    Connection connection = null;
    connection = ds.getConnection();
    ResultSet result = null;
%>
<jsp:include page="adminHeader.jsp"/>
<div class="container">
    <div class="row">


        <div class="col-md-12">
            <h4>Welcome</h4>
            <div class="table-responsive">


                <table id="mytable" class="table table-bordred table-striped table-responsive table-condensed">

                    <thead>

                        <!--<th><input type="checkbox" id="checkall" /></th>-->

                    <th>Booking ID</th>
                    <th>Room No</th>
                    <th>Client Name</th>
                    <th>Check - In</th>
                    <th>Check - Out</th>
                    <th>Comments</th>
                    <th>Edit</th>
                    <th>Delete</th>

                    </thead>
                    <tbody>
                        <%
                            try {
                                result = connection.createStatement().executeQuery("select * from bookings");
                                while (result.next()) {
                        %>
                        <tr>
                            <td><%=result.getString("booking_id")%></td>
                            <td><%=result.getString("room_no")%></td>
                            <td><%=result.getString("username")%></td>
                            <td><%=result.getString("start_date")%></td>
                            <td><%=result.getString("end_date")%></td>
                            <td><%=result.getString("comments")%></td>
                            <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                            <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                        </tr>
                        <%
                                }
                            } catch (Exception e) {

                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<form action="updateRoom" method="POST">
    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                    <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <input name="room_no" class="form-control " type="text" placeholder="Room No">
                    </div>
                    <div class="form-group">
                        <input name="username" class="form-control " type="text" placeholder="Client Name">
                    </div>
                    <div class="form-group">
                        <input name="start_date" class="form-control " type="date" placeholder="Check - In">
                    </div>
                    <div class="form-group">
                        <input name="end_date" class="form-control " type="date" placeholder="Check - Out">
                    </div>
                    <div class="form-group">
                        <input name="comments" class="form-control " type="text" placeholder="Comments">
                    </div>
                </div>
                <div class="modal-footer ">
                    <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
                </div>
            </div>
            <!-- /.modal-content --> 
        </div>
        <!-- /.modal-dialog --> 
    </div>
</form>



<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    <div class="modal-dialog">
        
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
            </div>
            <div class="modal-body">

                <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>

            </div>
            <div class="modal-footer ">
                <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
            </div>
        </div>
        <!-- /.modal-content --> 
    </div>
    <!-- /.modal-dialog --> 
</div>
</body>
</html>