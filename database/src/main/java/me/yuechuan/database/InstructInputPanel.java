package me.yuechuan.database;

import javax.swing.JPanel;
import java.awt.Color;
import javax.swing.JTable;
import javax.swing.RowSorter;
import javax.swing.BoxLayout;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;



public class InstructInputPanel extends JPanel 
{
	private static final long serialVersionUID = 1L;

	public InstructInputPanel() {
		setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		
		Object rows[][] = {
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"},
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"} ,
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"} ,
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"},
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"},
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"} ,
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"} ,
				{ " Species ", "Mus musculus" },
				{ " Taxid ", "10090" },
				{ " Array ", "MouseRef-8_V2" },
				{ " Probemap", "MouseRef-8_V2_0_R3_11278551_A.txt" },
				{ " Group ", "grp1, grp2, grp3, grp4" },
				{ " Groupap", "grp1"} 
	         };
	        
		String columns[] = { " name ", "value" };
		TableModel model = new DefaultTableModel(rows, columns){
			
			private static final long serialVersionUID = 2084117422705814143L;

			public boolean isCellEditable(int row, int column) {
			    if(column == 0) {
			    	return false;
			    }
				return true;
			}
		};
	    JTable table = new JTable(model);
	    
	    table.setGridColor(new Color(200,200,200));
	    RowSorter<TableModel> sorter = new TableRowSorter<TableModel>(model);
	    table.setRowSorter(sorter);
	    
	    table.setRowHeight(20);
	    table.setDefaultRenderer(Object.class,new EvenOddRender()); 
	    
	    TableColumn firsetColumn = table.getColumnModel().getColumn(0);
	    firsetColumn.setPreferredWidth(80);
	    firsetColumn.setMaxWidth(80);
	    firsetColumn.setMinWidth(80);
	    
	    this.add(table);
	    
		
		// TODO Auto-generated constructor stub
	}

}
