<%@page import="com.sun.xml.ws.rx.rm.runtime.sequence.invm.SequenceDataPojo.Parameter.state"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="entity.User"%>
<%
    javax.naming.Context ctx = new javax.naming.InitialContext();
    DataSource ds = (DataSource) ctx.lookup("jdbc/hotelmanagemain");
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


                <table id="mytable" class="table table-bordred table-striped">

                    <thead>

                        <!--<th><input type="checkbox" id="checkall" /></th>-->

                    <th>Room No</th>
                    <th>Room Price</th>
                    <th>Room Type</th>
                    <th>Room Specification</th>
                    </thead>
                    <tbody>

                        <%
                        try{
                                result = connection.createStatement().executeQuery("select * from rooms");
                                Boolean Insert=true ;
                                Boolean Update=true;
                                Boolean Delete=true;
                                String Checkin=request.getParameter("Checkin");
                                 String Checkout=request.getParameter("Checkout");
                                 String Comment=request.getParameter("Comment");
                               if(Insert){
                                    result=connection.createStatement().executeQuery("insert into App.BookingTbls(Checkin,Checkout,Comments,BookingId)");
                                 }
                               else if(Update){
                                   result=connection.createStatement().executeQuery("update into App.BookingTbls(Checkin,Chechout,comments,BookingId)");
                               }
                               else{
                                   result=connection.createStatement().executeQuery("delete from App.BookingTbls where BookingId=(Checkin,Checkout,Comments)");
                               }
                               catch(Exception e){
                                          System.out.println("Invalid Action");
                                   }
                        
                     }

                                while (result.next()) {
                                    
                        %>
                        <tr>
                            <td><%=result.getString("room_no")%></td>
                            <td><%=result.getString("room_price")%></td>
                            <td><%=result.getString("room_type")%></td>
                            <td><%=result.getString("specification")%></td>
                           
                            <td><p data-placement="top" data-toggle="tooltip" title="Edit">
                                <form action="adminEditRoom.jsp" method="post">
                                    <input type="hidden" name="room_no" value="<%=result.getString("room_no")%>">
                                     <input type="hidden" name="room_price" value="<%=result.getString("room_price")%>">
                                     <input type="hidden" name="room_type" value="<%=result.getString("room_type")%>">
                                     <input type="hidden" name="room_spec" value="<%=result.getString("specification")%>"> 
                                     <button type="submit" class="btn btn-primary btn-xs" data-title="Edit" href="adminEditRoom.jsp" >
                                        <span class="glyphicon glyphicon-pencil"></span>
                                    </button>
                                
                                </form>
                                </p>
                            </td>
                            <td>
                                <p data-placement="top" data-toggle="tooltip" title="Delete">
                                    <a class="btn btn-danger btn-xs" data-title="Delete" href="deleteRoom?room_no=<%=result.getString("room_no")%>" >
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                </p>
                            </td>
                        </tr>
                        <%
                                }
                            } catch (Exception e) {

                            }
                        %>
                    </tbody>
                </table>
                <input type="button" class="btn-lg btn-default" value="Add new room" data-title="Add" data-toggle="modal" data-target="#add"/>
            </div>
        </div>
    </div>
</div>

<!-- /.modal-dialog --> 

<!--<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
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
         /.modal-content  
    </div>
     /.modal-dialog  
</div>-->

<div class="modal fade" id="add" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">  

            <div class="modal-body">
                <div class="row">

                    <div>
                        <form role="form" action="addRoom" method="POST">
                            <fieldset>

                                    <div class="form-group">
                                        <input class="form-control " type="text" placeholder="Room No" name="room_no">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control " type="text" placeholder="Room Price" name="room_price">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control " type="text" placeholder="Room Type" name="room_type">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control " type="text" placeholder="Room Specification" name="room_spec">
                                    </div>

                                <div class="row ">
                                    <div class="col-xs-12 col-md-6"><input type="submit" value="Add new Room" class="btn btn-success btn-block btn-lg" tabindex="7"></div>
                                </div>            
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.modal-content --> 

    </div>
    <!-- /.modal-dialog --> 
</div>
</body>
</html>