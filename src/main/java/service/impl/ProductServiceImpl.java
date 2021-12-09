package service.impl;

import model.Category;
import model.Product;
import service.ProductService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    public ProductServiceImpl() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/manageproduct?useSSL=false", "root", "123456");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Product> findAll() {
        List<Product> list = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement
                     ("select  * from product")) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int categoryId = rs.getInt("categoryId");
                list.add(new Product(id, name, price, quantity, color, description, categoryId));
            }
        } catch (SQLException e) {
            System.out.println("");
        }
        return list;
    }

    @Override
    public Product findById(int id) {
        Product product = new Product();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement
                     ("select * from product where id =?")) {
            System.out.println(preparedStatement);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int categoryId = rs.getInt("categoryId");
                product = new Product(id, name, price, quantity, color, description, categoryId);
            }
        } catch (SQLException ignored) {

        }
        return product;
    }

    @Override
    public void add(Product product) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement
                     ("insert into product(name, price,quantity, color, description, categoryId) values (?, ?,?,?,?, ?)");) {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setInt(3, product.getQuantity());
            preparedStatement.setString(4, product.getColor());
            preparedStatement.setString(5, product.getDescription());
            preparedStatement.setInt(6, product.getCategoryId());
            preparedStatement.executeUpdate();
        } catch (SQLException ignored) {
        }

    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement
                     ("delete from product where id = ?;")) {
            preparedStatement.setInt(1, id);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean update(Product product) throws SQLException {
        return false;
    }

    @Override
    public void edit(Product product) throws SQLException {
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement
                ("update product set name = ?, price = ?, quantity = ?, color=?, description= ?, categoryId = ? where id = ?;");) {
            statement.setString(1, product.getName());
            statement.setDouble(2, product.getPrice());
            statement.setInt(3, product.getQuantity());
            statement.setString(4, product.getColor());
            statement.setString(5, product.getDescription());
            statement.setInt(6, product.getCategoryId());
            statement.setInt(7, product.getId());
            statement.executeUpdate();
        } catch (SQLException ignored) {
        }
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> product = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement
                     ("select * from product where name like ?");) {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name1 = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int categoryId = rs.getInt("categoryId");
                product.add(new Product(id, name1, price, quantity, color, description, categoryId));
            }
        } catch (SQLException ignored) {

        }
        return product;
    }
}
