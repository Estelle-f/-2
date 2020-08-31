/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package code;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Administrator
 */
public class DBConn {

  private  Connection conn  = null;
  private Statement stmt = null;
    private  ResultSet rs=null;
    String username="root";
        String password ="root";

    public DBConn (){   //构造方法      


        /*
         odbc连接
         * *
        String driver = "com.MySQL.jdbc.Driver";
        String url =  "jdbc:mysql://localhost/salarydb";
        String username="sa";
        String password ="034";
        

        /* jdbc连接sql server 2000
         * 需要添加驱动，导入驱动包
         */
        /*
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String url = "jdbc:microsoft.sqlserver://localhost:1433;DatabaseName=db_salary";
        String username="sa";
        String password ="sa";
        */

       /* jdbc 连接sql server 2005
        * 需要添加驱动，导入包
        * /

        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String url = "jdbc:sqlserver://localhost:1433;DatabaseName=db_salary";
        String username = "sa";
        String password  = "sa";
        */

        try{
            Class.forName("com.MySQL.jdbc.Driver");
            //conn = DriverManager.getConnection(url,username,password);
        }catch(java.lang.ClassNotFoundException e){
            System.err.println(e.getMessage());
        } //catch (SQLException ex) {
            //Logger.getLogger(DBConn.class.getName()).log(Level.SEVERE, null, ex);
        // }
    }
    
    public int Check(String sql){
      //  int result = 0;
        try{
             conn = DriverManager.getConnection( "jdbc:mysql://localhost/salarydb?characterEncoding=utf8",username,password);
             stmt = conn.createStatement();
             rs  = stmt.executeQuery(sql);
            if(rs.next()){
                return 1 ;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return 0;
    }

    public ResultSet Search(String sql){    //建立查询

  
        try {
            conn = DriverManager.getConnection( "jdbc:mysql://localhost/salarydb?characterEncoding=utf8",username,password);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
        } catch (SQLException ex) {
          System.err.println(ex.getMessage());
        }
        return rs;
    }

    public int Update(String sql){      //操作数据库
     
        int result = 0;
        try {
             conn = DriverManager.getConnection( "jdbc:mysql://localhost/salarydb?characterEncoding=utf8",username,password);
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            result = stmt.executeUpdate(sql);
        } catch (SQLException ex) {
               result=0;
        }
        return result;
    }

   /**
	 * 关闭数据库连接
	 */
	public void close(){
		try{
			if(rs != null){
				rs.close();
			}
		}catch(Exception e){
			e.printStackTrace(System.err);
		}
		
		try{
			if(stmt != null){
				stmt.close();
			}
		}catch(Exception e){
			e.printStackTrace(System.err);
		}
		
		try{
			if(conn != null){
				conn.close();
			}
		}catch(Exception e){
			e.printStackTrace(System.err);
		}
	}


}
