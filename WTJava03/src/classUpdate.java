import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class classUpdate {
    public static void fun(String id1,String id){
        //根据id1查找数据，更新班级的id信息
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try {
            conn=jdbcUtils.getConnection();
            st=conn.createStatement();
            //UPDATE class SET `id`='1' WHERE `id`='asdad';
            String sql="UPDATE class SET `id`='"+id+"' WHERE `id`='"+id1+"'";
            int k=st.executeUpdate(sql);
            if(k>0)
                System.out.println("班级信息更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtils.release(conn,st,rs);
        }
    }
}
