import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class Login extends JavaCrud{
    private JPanel loginPanel;
    private JButton logInButton;
    private JButton cancelButton;
    private JTextField emailTF;
    private JPasswordField passwordTF;
    private JPanel Main;
    Connection con;
    PreparedStatement pst;

    public Login() {
        Connect();
        logInButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ValidarUsuario();
            }
        });
        cancelButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });
    }

    public void Connect() {
        final String DB_URL = "jdbc:mysql://localhost/misproductos?serverTimezone=UTC";
        final String USERNAME = "root";
        final String PASSWORD = "";

        try {
            Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
            Statement stmt = conn.createStatement();

            System.out.println("Conexion exitosa");

        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println("SQL incorrecto");

        }
    }
    public void ValidarUsuario(){
        int resultado=0;
        String usuario;
        usuario=emailTF.getText();
        final String DB_URL="jdbc:mysql://localhost/misproductos?serverTimezone=UTC";
        final String USERNAME="root";
        final String PASSWORD="";

        try {

            Connection con= DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
            String contraseña=String.valueOf(passwordTF.getPassword());
            String sql="select*from user where user='"+usuario+"'and contraseña='"+contraseña+"'";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            if(rs.next()){
                resultado=1;
                if (resultado==1){
                    mostrarFrame();
                }
                System.out.println("Conecion Exitosa");
            }else {

                JOptionPane.showMessageDialog(null,"Error de usario/contraseña");
            }

        }catch (Exception e){

            JOptionPane.showMessageDialog(null,"Error");
        }
    }

    public static void main(String[] args) {
        JFrame frame=new JFrame("Login");
        frame.setContentPane(new Login().Main);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
