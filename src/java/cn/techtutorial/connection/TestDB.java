/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cn.techtutorial.connection;

/**
 *
 * @author ACER
 */

import java.sql.Connection;
import java.sql.SQLException;

public class TestDB {

    public static void main(String[] args) {
        try {
            Connection connection = DbCon.getConnection();
            if (connection != null) {
                System.out.println(" Ket noi den co so du lieu thanh cong!");
                connection.close(); // Đóng kết nối
            } else {
                System.out.println("Không thể kết nối đến cơ sở dữ liệu!");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm thấy driver JDBC!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Lỗi kết nối đến cơ sở dữ liệu!");
            e.printStackTrace();
        }
    }
}

