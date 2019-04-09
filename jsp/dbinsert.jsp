<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String password=request.getParameter("password");

String Role=request.getParameter("Role");
        try{
         Class.forName("org.postgresql.Driver");
           Connection con = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/hvdeploy", "postgres", "postgres123");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into register(username,firstname,lastname,email,password,Role) values('"+username+"','"+firstname+"','"+lastname+"','"+email+"','"+password+"',"+Role+")");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>