package me.yuechuan.database;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JPanel;
import javax.swing.JSplitPane;
import javax.swing.JTable;


public class Explorer extends JPanel  {

	private static final long serialVersionUID = 1L;
	private JSplitPane outsider;
	private JPanel infoDisplayPanel;
	private InstructInputPanel inputPanel;
	private JFrame frame;
	private JTable table;

	
	public Explorer() {
		setLayout(new BorderLayout(2, 0));
		
		inputPanel = new InstructInputPanel();
		infoDisplayPanel = new JPanel();
		
		outsider = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, infoDisplayPanel, inputPanel);
		
		table = new JTable();
		infoDisplayPanel.add(table);
		outsider.setOneTouchExpandable(true);
		outsider.setDividerLocation(300);
		outsider.setDividerSize(6);
		outsider.setBorder(null);
		
		this.add(outsider);	
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