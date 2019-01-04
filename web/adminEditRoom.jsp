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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="row">

        <div>
            <H2>Editing room number: <%=request.getParameter("room_no")%></H2>
            <form role="form" action="editRoom" method="POST">
                <fieldset>
 Nothing much
 //what are you working on?
                    <input type="hidden" class="form-control " type="text" placeholder="Room No" value="<%=request.getParameter("room_no")%>"  name="new_no">
                    <div class="form-group">
                        <label for="room_no">Room Price</label>
                        <input class="form-control " type="text"  value="<%=request.getParameter("room_price")%>" placeholder="Room Price" name="new_price">
                    </div>
                    <div class="form-group">
                        <label for="room_no">Room Type</label>
                        <input class="form-control " type="text"  value="<%=request.getParameter("room_type")%>" placeholder="Room Type" name="new_type">
                    </div>
                    <div class="form-group">
                        <label for="room_no">Room Spec</label>
                        <input class="form-control " type="text"  value="<%=request.getParameter("room_spec")%>" placeholder="Room Specification" name="new_spec">
                    </div>

                    <div class="row ">
                        <div class="col-xs-12 col-md-6"><input type="submit" value="Update Room" class="btn btn-success btn-block btn-lg" tabindex="7"></div>
                    </div>            
                </fieldset>
            </form>
        </div>
    </div>
</div>