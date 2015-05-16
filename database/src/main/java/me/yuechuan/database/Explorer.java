package me.yuechuan.database;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.LayoutStyle.ComponentPlacement;

public class Explorer extends JPanel  {

	private static final long serialVersionUID = 1L;
	
	private JFrame frame;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JPasswordField passwordField_1;
	
	private SearchPanel searchPanel;
	private RentInfoPanel rentInfoPanel;
	private StatisticInfoPanel stInfoPanel;
	
	private DatabaseOperator dbo;
	
	private boolean connectStat = false;
	
	public Explorer() {
		
		
		dbo = new DatabaseOperator();
       
		
		setLayout(new BorderLayout(0, 0));
		
		JPanel panel = new JPanel();
		add(panel, BorderLayout.NORTH);
		
		JLabel lblIp = new JLabel("主机 IP");
		
		textField = new JTextField();
		textField.setColumns(10);
		
		JLabel label = new JLabel("端口");
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		
		JLabel label_1 = new JLabel("数据库");
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		
		JLabel label_2 = new JLabel("用户名");
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		
		JLabel label_3 = new JLabel("密码");
		
		passwordField_1 = new JPasswordField();
		
		JLabel lblNewLabel = new JLabel("");
		
		JButton btnConnect = new JButton("Connect");
		btnConnect.addMouseListener(new MouseListener(){

			public void mouseClicked(MouseEvent e) 
			{
				
				if(!connectStat){
					String ip = textField.getText();
					String username = textField_3.getText();
					String passwd = new String(passwordField_1.getPassword());
					String dbname = textField_2.getText();
					//String dbport = textField_1.getText();
					
					 if(dbo.connect("jdbc:mysql://" + ip + "/" + dbname, username, passwd))
					 {
						 ((JButton)e.getSource()).setText("Disconnect");
						 
						 connectStat = true;
					 } else {
						 JOptionPane.showConfirmDialog(null, "Connection Failed", "Warning", JOptionPane.WARNING_MESSAGE);
					 }
					 
				} else {
					if(!dbo.close()) {
						JOptionPane.showConfirmDialog(null, "Disconnection Errors!", "Warning", JOptionPane.WARNING_MESSAGE);
					}
					((JButton)e.getSource()).setText("Connect");
					
					connectStat = false;
				}		
			}

			public void mousePressed(MouseEvent e) {
			}

			public void mouseReleased(MouseEvent e) {
			}

			public void mouseEntered(MouseEvent e) {
			}

			public void mouseExited(MouseEvent e) {
			}
			
		});
		
		GroupLayout gl_panel = new GroupLayout(panel);
		gl_panel.setHorizontalGroup(
			gl_panel.createParallelGroup(Alignment.LEADING)
				.addGroup(gl_panel.createSequentialGroup()
					.addContainerGap()
					.addGroup(gl_panel.createParallelGroup(Alignment.LEADING)
						.addGroup(gl_panel.createSequentialGroup()
							.addGroup(gl_panel.createParallelGroup(Alignment.TRAILING, false)
								.addComponent(label_2, Alignment.LEADING, GroupLayout.DEFAULT_SIZE, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
								.addComponent(label_1, GroupLayout.DEFAULT_SIZE, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
								.addComponent(lblIp, GroupLayout.DEFAULT_SIZE, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
							.addPreferredGap(ComponentPlacement.RELATED)
							.addGroup(gl_panel.createParallelGroup(Alignment.LEADING, false)
								.addComponent(textField_3)
								.addComponent(textField_2)
								.addComponent(textField))
							.addGap(38)
							.addGroup(gl_panel.createParallelGroup(Alignment.LEADING)
								.addComponent(label)
								.addComponent(label_3))
							.addPreferredGap(ComponentPlacement.RELATED)
							.addGroup(gl_panel.createParallelGroup(Alignment.LEADING)
								.addGroup(gl_panel.createSequentialGroup()
									.addComponent(passwordField_1, GroupLayout.PREFERRED_SIZE, 127, GroupLayout.PREFERRED_SIZE)
									.addPreferredGap(ComponentPlacement.RELATED, 113, Short.MAX_VALUE)
									.addComponent(btnConnect)
									.addGap(17))
								.addGroup(gl_panel.createSequentialGroup()
									.addComponent(textField_1, GroupLayout.PREFERRED_SIZE, 56, GroupLayout.PREFERRED_SIZE)
									.addContainerGap(297, Short.MAX_VALUE))))
						.addGroup(gl_panel.createSequentialGroup()
							.addComponent(lblNewLabel)
							.addContainerGap(604, Short.MAX_VALUE))))
		);
		gl_panel.setVerticalGroup(
			gl_panel.createParallelGroup(Alignment.LEADING)
				.addGroup(gl_panel.createSequentialGroup()
					.addContainerGap()
					.addGroup(gl_panel.createParallelGroup(Alignment.BASELINE)
						.addComponent(lblIp)
						.addComponent(textField, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
						.addComponent(label)
						.addComponent(textField_1, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
					.addPreferredGap(ComponentPlacement.RELATED)
					.addGroup(gl_panel.createParallelGroup(Alignment.BASELINE)
						.addComponent(label_1)
						.addComponent(textField_2, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
					.addPreferredGap(ComponentPlacement.RELATED)
					.addGroup(gl_panel.createParallelGroup(Alignment.BASELINE)
						.addComponent(label_2)
						.addComponent(textField_3, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
						.addComponent(label_3)
						.addComponent(passwordField_1, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
						.addComponent(btnConnect))
					.addPreferredGap(ComponentPlacement.RELATED, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
					.addComponent(lblNewLabel)
					.addContainerGap())
		);
		panel.setLayout(gl_panel);
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		add(tabbedPane, BorderLayout.CENTER);
		
		searchPanel = new SearchPanel(dbo);
		tabbedPane.addTab("书籍查询", null, searchPanel, null);
	
		rentInfoPanel = new RentInfoPanel();
		tabbedPane.addTab("租借情况", null, rentInfoPanel, null);
		
		stInfoPanel = new StatisticInfoPanel();
		tabbedPane.addTab("统计信息", null, stInfoPanel, null);	
		
	}
	
	
	
	public JFrame createFrame(JMenuBar menuBar)
	{	
		frame = new JFrame();
		frame.getContentPane().add(this);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setJMenuBar(menuBar);
		frame.setSize(1280, 768);
		
		return frame;
	}

	protected JFrame getFrame() {
		return frame;
	}
}