import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class Login extends  JDialog{
    private JPanel loginPanel;
    private JButton logInButton;
    private JButton cancelButton;
    private JTextField emailTF;
    private JPasswordField passwordTF;
    private JPanel Main;
    public User user;

    public Login(JFrame parent) {
        logInButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String email=emailTF.getText();
                String contraseña=String.valueOf(passwordTF.getPassword());
                user=getAuthenticationUser(email,contraseña);
                if (user!=null){
                    dispose();

                }
                else{
                    JOptionPane.showMessageDialog(
                            Login.this,"email o password incorrectos",
                            "intente nuevamente",
                            JOptionPane.ERROR_MESSAGE
                    );
                }
            }
        });
    }

    public Login() {

    }


    private User getAuthenticationUser(String email, String password){
        User user =null;

        final String DB_URL="jdbc:mysql://localhost/misproductos?serverTimezone=UTC";
        final String USERNAME="root";
        final String PASSWORD="";
        JavaCrud javaCrud=new JavaCrud();

        try{
            Connection conn= DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
            Statement stmt= conn.createStatement();
            String sql="SELECT * FROM user WHERE Email=? AND Contraseña=?";
            PreparedStatement preparedStatement=conn.prepareStatement(sql);
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,password);
            System.out.println("conexion ok");
            ResultSet resultSet=preparedStatement.executeQuery();

            if(resultSet.next()){
                user=new User();
                user.email=resultSet.getString("email");
                user.password=resultSet.getString("password");

            }

            stmt.close();
            conn.close();

        }catch(Exception e){
            System.out.println("error de...");
            e.printStackTrace();
        }

        return user;
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("JavaCrud");
        frame.setContentPane(new Login().Main);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }


}
