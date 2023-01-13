import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class studentUpdate {
    public static void fun(int index,String id,String name,String sex){
        //根据学生的index查找学生数据，更新学生的学号、姓名、性别信息
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try {
            conn=jdbcUtils.getConnection();
            st=conn.createStatement();
            String sql="UPDATE student SET `id`='"+id+"',`name`='"+name+"',sex='"+sex
                    +"' WHERE `index`="+index;
            int k=st.executeUpdate(sql);
            if(k>0)
                System.out.println("学生信息更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            jdbcUtils.release(conn,st,rs);
        }
    }
}
