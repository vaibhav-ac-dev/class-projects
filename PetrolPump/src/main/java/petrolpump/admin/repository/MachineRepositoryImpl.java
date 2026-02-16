package petrolpump.admin.repository;

import java.util.ArrayList;
import java.util.List;

import petrolpump.admin.config.DBConfig;
import petrolpump.admin.model.MachineModel;

public class MachineRepositoryImpl extends DBConfig implements MachineRepository{

	List<Object[]> list;
	
	private int MId;
	
	private int generateMachineId() {
		try {
			stmt=conn.prepareStatement("select max(MId) from machineinfo");
			rs=stmt.executeQuery();
			if(rs.next()) {
				MId=rs.getInt(1);
			}
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return -1;
		}
		++MId;
		return MId;
	}
	
	@Override
	public boolean isAddNewMachine(MachineModel model,String ftypeid[],String capacity[]) {
		
		try {
			int MId=this.generateMachineId();
			int value=0;
			boolean add=true;
			if(MId>0) {
				for(int i=0;i<capacity.length;i++) {
					if(capacity[i]!=""&&add) {
						stmt=conn.prepareStatement("insert into machineinfo values(?,?)");
						stmt.setInt(1, MId);
						stmt.setString(2, model.getMachineCode());
						value=stmt.executeUpdate();
						add=false;
					}
				}
				
				if(value>0) {
					value=0;
					for(int i=0,j=0;i<capacity.length;i++) {
						if(capacity[i]!="") {
							if(ftypeid!=null) {
								stmt=conn.prepareStatement("insert into machinetypejoin value(?,?,?)");
								stmt.setInt(1, MId);
								stmt.setInt(2, Integer.parseInt(ftypeid[j]));
								stmt.setInt(3, Integer.parseInt(capacity[i]));
								value=stmt.executeUpdate();
								j++;
							}
							else {
								stmt=conn.prepareStatement("insert into machinetypejoin (mid,capacity)values(?,?)");
								stmt.setInt(1, MId);
								stmt.setInt(2, Integer.parseInt(capacity[i]));
								value=stmt.executeUpdate();
							}
						}
					}
					return (value>0)?true:false;
				}
				else {
					return false;
				}
			}
			else {
				return false;
			}
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return false;
		}
	}

	@Override
	public List<Object[]> getAllMachines() {
		
		try {
			list=new ArrayList<Object[]>();
			stmt=conn.prepareStatement("select m.mid,m.machinecode,f.type,mtj.capacity from machineinfo m left join machinetypejoin mtj on m.mid=mtj.mid left join fueltype f on mtj.typeid=f.typeid");
			rs=stmt.executeQuery();
			while(rs.next()) {
				Object obj[]=new Object[] {rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4)};
				list.add(obj);
			}
			return list.size()>0?list:null;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return null;
		}
	}

	@Override
	public boolean isDeleteMachineById(int mid) {
		try {
			stmt=conn.prepareStatement("delete from machineinfo where mid=?");
			stmt.setInt(1, mid);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return false;
		}
	}

	@Override
	public boolean isUpdateMachine(MachineModel model) {
		try {
			stmt=conn.prepareStatement("update machineinfo set machinecode=? where mid=?");
			stmt.setString(1, model.getMachineCode());
			stmt.setInt(2, model.getId());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return false;
		}
	}

}
