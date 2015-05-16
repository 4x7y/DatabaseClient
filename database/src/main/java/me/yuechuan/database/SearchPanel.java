package me.yuechuan.database;

import java.awt.Color;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.RowSorter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;


public class SearchPanel extends JPanel {
	
	private static final long serialVersionUID = 1L;
	private JTextField textField_4;
	private JTextField textField_5;
	private JScrollPane scrollPane;
	private JTable table_1;
	private Object rows[][];
	private String columns[];
	private DatabaseOperator dbo;
	private JFrame frame;
	
	private MouseListener searchBtnListener;
	private MouseListener addBookListener;
	private MouseListener changeBookListener;
	private MouseListener deleteBookListener;
	
	private ResultSet resultset;
	private int	columnNum;
	private int rowNum;
	
	public SearchPanel(DatabaseOperator dbo) 
	{
		this.dbo = dbo;
		
		initListener();
		
		JLabel label_4 = new JLabel("书名");
		
		textField_4 = new JTextField();
		textField_4.setColumns(10);
		
		JLabel lblIsbn = new JLabel("ISBN");
		
		textField_5 = new JTextField();
		textField_5.setColumns(10);
		
		JButton btnSearch = new JButton("Search");
		btnSearch.addMouseListener(searchBtnListener);
		
		JButton button = new JButton("添加图书");
		button.addMouseListener(addBookListener);
		
		JButton button_1 = new JButton("修改记录");
		button_1.addMouseListener(changeBookListener);
		
		JButton button_2 = new JButton("删除记录");
		button_2.addMouseListener(deleteBookListener);
		
		scrollPane = new JScrollPane();
		GroupLayout gl_panel_1 = new GroupLayout(this);
		gl_panel_1.setHorizontalGroup(
			gl_panel_1.createParallelGroup(Alignment.LEADING)
				.addGroup(Alignment.TRAILING, gl_panel_1.createSequentialGroup()
					.addContainerGap()
					.addGroup(gl_panel_1.createParallelGroup(Alignment.TRAILING)
						.addComponent(scrollPane, Alignment.LEADING, GroupLayout.DEFAULT_SIZE, 577, Short.MAX_VALUE)
						.addGroup(Alignment.LEADING, gl_panel_1.createSequentialGroup()
							.addComponent(button)
							.addPreferredGap(ComponentPlacement.RELATED)
							.addComponent(button_1)
							.addPreferredGap(ComponentPlacement.RELATED)
							.addComponent(button_2))
						.addGroup(Alignment.LEADING, gl_panel_1.createSequentialGroup()
							.addComponent(label_4)
							.addPreferredGap(ComponentPlacement.RELATED)
							.addComponent(textField_4, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
							.addGap(38)
							.addComponent(lblIsbn)
							.addPreferredGap(ComponentPlacement.RELATED)
							.addComponent(textField_5, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
							.addPreferredGap(ComponentPlacement.RELATED, 120, Short.MAX_VALUE)
							.addComponent(btnSearch)))
					.addContainerGap())
		);
		gl_panel_1.setVerticalGroup(
			gl_panel_1.createParallelGroup(Alignment.LEADING)
				.addGroup(gl_panel_1.createSequentialGroup()
					.addContainerGap()
					.addGroup(gl_panel_1.createParallelGroup(Alignment.BASELINE)
						.addComponent(label_4)
						.addComponent(textField_4, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
						.addComponent(lblIsbn)
						.addComponent(textField_5, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
						.addComponent(btnSearch))
					.addPreferredGap(ComponentPlacement.UNRELATED)
					.addComponent(scrollPane, GroupLayout.DEFAULT_SIZE, 343, Short.MAX_VALUE)
					.addPreferredGap(ComponentPlacement.RELATED)
					.addGroup(gl_panel_1.createParallelGroup(Alignment.BASELINE)
						.addComponent(button)
						.addComponent(button_1)
						.addComponent(button_2))
					.addContainerGap())
		);
		
		table_1 = new JTable();
		this.setLayout(gl_panel_1);
	    scrollPane.setViewportView(table_1);
	}
	
	public void updateSearchTable(ResultSet resultset)
	{
		try {
			columnNum = resultset.getMetaData().getColumnCount();
			resultset.last();
			rowNum = resultset.getRow();
			resultset.first();
			
			rows = new Object[rowNum][columnNum];
			columns = new String[columnNum];
			
			for(int i = 0; i < columnNum; i++) {
				columns[i] = resultset.getMetaData().getColumnName(i+1);
				System.out.print(columns[i] + "\t");
			}
			System.out.println();
			
			if(rowNum == 0) {
				rows = null;
			} else {
				for (int i = 0;; i++) {
					for(int j = 0; j < columnNum; j++) {
						rows[i][j] = resultset.getString(j+1);
						
						System.out.print(rows[i][j] + "\t");
					}
					System.out.println();
					if(!resultset.next()) break;
		        }
			}
			
			TableModel model = new DefaultTableModel(rows, columns)
			{
				private static final long serialVersionUID = 1L;

				public boolean isCellEditable(int row, int column)
				{
					if(column == 0) {
				    	return false;
				    }
					return true;
				}
			};
			
			table_1.setModel(model);
		    
		    table_1.setGridColor(new Color(200,200,200));
		    RowSorter<TableModel> sorter = new TableRowSorter<TableModel>(model);
		    table_1.setRowSorter(sorter);
		    
		    table_1.setRowHeight(20);
		    table_1.setDefaultRenderer(Object.class,new EvenOddRender()); 
		    
		    TableColumn firsetColumn = table_1.getColumnModel().getColumn(0);
		    firsetColumn.setPreferredWidth(firsetColumn.getPreferredWidth());
		   
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void initListener() 
	{
		searchBtnListener = new MouseListener(){

			public void mouseClicked(MouseEvent e) {
				// TODO Auto-generated method stub
				String bookName = textField_4.getText();
				String isbn = textField_5.getText();
				
				if(!bookName.isEmpty()) {
					if(!isbn.isEmpty()) {
						resultset = dbo.bookISBNandNameSearch(isbn, bookName);
					} else {
						resultset = dbo.bookNameSearch(bookName);
					}
				} else if(!isbn.isEmpty()) {
					resultset = dbo.bookISBNSearch(isbn);
				} else {
					resultset = dbo.bookShow();
				}
				
				updateSearchTable(resultset);
			}

			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseReleased(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
		};
		
		addBookListener = new MouseListener() {

			public void mouseClicked(MouseEvent e) {
				// TODO Auto-generated method stub
				AddBookDialog dlg = new AddBookDialog(frame, "", dbo);
				
				dlg.setVisible(true);
			}

			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseReleased(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
		};
		
		changeBookListener = new MouseListener() {

			public void mouseClicked(MouseEvent e) {
				int selectRow = table_1.getSelectedRow();
				try {
					resultset.absolute(selectRow + 1);
					for (int i = 0; i < columnNum; i++) {
						System.out.print(resultset.getString(i + 1));
					}
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseReleased(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
		};
		
		deleteBookListener = new MouseListener() {

			public void mouseClicked(MouseEvent e) {
				
				int selectRow = table_1.getSelectedRow();
				try {
					resultset.absolute(selectRow + 1);
					String isbn = resultset.getString("title_id");
					System.out.print(resultset.getString("title_id"));
					dbo.bookISBNDelete(isbn);
				} catch (SQLException e1) {
					JOptionPane.showConfirmDialog(null, e1.getMessage(), "Warning", JOptionPane.ERROR_MESSAGE);
					e1.printStackTrace();
				}
			}

			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseReleased(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
		};
	}

}
