/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Address;

/**
 *
 * @author minhd
 */
public class AddressDAO extends DBContext {
    private ArrayList<Address> addresslst;

    public AddressDAO() {

    }
    public void setAddresslst(ArrayList<Address> addresslst) {
        this.addresslst = addresslst;
    }

    public ArrayList<Address> getAddresslst() {
        load();
        return addresslst;
    }


    public Address insert(Address  a) {
        String sql
                = "INSERT INTO [Happy_Programming].[dbo].[Address]\n"
                + "           ([Tinh]\n"
                + "           ,[Huyen]\n"
                + "           ,[Xa])\n"
                + "     VALUES (?,?,?);\n";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, a.getTinh());
            ps.setString(2, a.getHuyen());
            ps.setString(3, a.getXa());
            ps.executeUpdate();
            
            sql = "SELECT top(1) [Address_ID]\n"
                    + "  FROM [dbo].[Address]\n"
                    + "  order by Address_ID desc";
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                a.setID(rs.getInt(1));
            }
        } catch (SQLException e) {
           
        }
        return a;
    }

    public void update(Address a) {
        String sql = "UPDATE [dbo].[Address]\n"
                + "   SET [Tinh] = ?\n"
                + "      ,[Huyen] = ?\n"
                + "      ,[Xa] = ?\n"
                + " WHERE Address_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(4, a.getID());
            ps.setString(1, a.getTinh());
            ps.setString(2, a.getHuyen());
            ps.setString(3, a.getXa());
            ps.execute();
        } catch (SQLException e) {
            
        }
    }

    public void load() {
        addresslst = new ArrayList<>();
        String sql = "SELECT * FROM Address";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Address address = new Address();
                address.setID(rs.getInt(1));
                address.setTinh(rs.getString(2));
                address.setHuyen(rs.getString(3));
                address.setXa(rs.getString(4));
                addresslst.add(address);
            }
        } catch (SQLException e) {
            
        }

    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Address]\n"
                + "      WHERE Address_ID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            
        }
    }
}
