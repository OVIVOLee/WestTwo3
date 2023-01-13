import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class studentDelete {
    public static void fun(int index){
        //根据学生的index信息（班级的studentindex信息）查找并删除表class和student中的数据
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try {
            conn=jdbcUtils.getConnection();
            st=conn.createStatement();
            String sql1="DELETE FROM `class` WHERE `studentindex`="+index;
            String sql2="DELETE FROM `student` WHERE `index`="+index;
            int k=st.executeUpdate(sql1);
            int j=st.executeUpdate(sql2);
            if(k>0&&j>0)
                System.out.println("学生信息删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtils.release(conn,st,rs);
        }
    }
}
