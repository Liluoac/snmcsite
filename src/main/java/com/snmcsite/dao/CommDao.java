package com.snmcsite.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class CommDao {

    public static Connection conn = null;


    public CommDao() {
        conn = this.getConn();
    }


//数据库 连接


    public Connection getConn() {
        try {
            if (conn == null || conn.isClosed()) {

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://47.100.54.218:3306/snmcsite?characterEncoding=utf8", "root", "zhoupuyu97Z");
                System.out.println(conn);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }


    public List<HashMap> select(String sql) {
        System.out.println(sql);
        List<HashMap> list = new ArrayList();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();

            while (rs.next()) {
                HashMap map = new HashMap();
                int i = rsmd.getColumnCount();
                for (int j = 1; j <= i; j++) {
                    if (!rsmd.getColumnName(j).equals("ID")) {
                        String str = rs.getString(j) == null ? "" : rs.getString(j);
                        if (str.equals("null")) str = "";
                        map.put(rsmd.getColumnName(j), str);
                    } else
                        map.put("id", rs.getString(j));
                }
                list.add(map);
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block

            if (sql.equals("show tables"))
                list = select("select table_name from   INFORMATION_SCHEMA.tables");
            else
                e.printStackTrace();
        }
        return list;
    }


    public HashMap getNews(String id) {
        List<HashMap> list = new ArrayList();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from t_news where newsId=" + id);
            ResultSetMetaData rsmd = rs.getMetaData();
            while (rs.next()) {
                HashMap map = new HashMap();
                int i = rsmd.getColumnCount();
                for (int j = 1; j <= i; j++) {
                    if (!rsmd.getColumnName(j).equals("ID")) {
                        String str = rs.getString(j) == null ? "" : rs.getString(j);
                        if (str.equals("null")) str = "";
                        map.put(rsmd.getColumnName(j), str);
                    } else
                        map.put("id", rs.getString(j));
                }
                list.add(map);
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list.get(0);
    }

    public void close() {

    }

    /**
     * 执行一条查询sql,以 List<hashmap> 的形式返回查询的记录，记录条数，和从第几条开始，由参数决定，主要用于翻页
     * pageno 页码  rowsize 每页的条数
     */
    public List<HashMap> select(String sql, int pageno, int rowsize) {
        List<HashMap> list = new ArrayList<HashMap>();
        List<HashMap> mlist = new ArrayList<HashMap>();
        try {
            list = this.select(sql);
            int min = (pageno - 1) * rowsize;
            int max = pageno * rowsize;

            for (int i = 0; i < list.size(); i++) {

                if (!(i < min || i > (max - 1))) {
                    mlist.add(list.get(i));
                }
            }
        } catch (RuntimeException re) {
            re.printStackTrace();
            throw re;
        }


        return mlist;
    }


    public static void main(String[] args) {
    }
}
