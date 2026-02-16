package petrolpump.admin.repository;

import java.util.ArrayList;
import java.util.List;

import petrolpump.admin.config.DBConfig;
import petrolpump.admin.model.FuelTypeModel;

public class FuelRepositoryImpl extends DBConfig implements FuelRepository{

	List<FuelTypeModel> list;
	
private int TypeId;
	
	private int generateTypeId() {
		try {
			stmt=conn.prepareStatement("select max(typeid) from fueltype");
			rs=stmt.executeQuery();
			if(rs.next()) {
				TypeId=rs.getInt(1);
			}
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return -1;
		}
		return ++TypeId;
	}
	
	@Override
	public boolean isAddFuelModel(FuelTypeModel model) {
		try {
			int TypeId=this.generateTypeId();
			stmt=conn.prepareStatement("insert into fueltype values(?,?)");
			stmt.setInt(1, TypeId);
			stmt.setString(2, model.getName());
			return stmt.executeUpdate()>0?true:false;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return false;
		}
	}

	@Override
	public List<FuelTypeModel> getAllFuelTypes() {
		try {
			list=new ArrayList<FuelTypeModel>();
			stmt=conn.prepareStatement("select *from fueltype");
			rs=stmt.executeQuery();
			while(rs.next()) {
				FuelTypeModel model=new FuelTypeModel();
				model.setId(rs.getInt(1));
				model.setName(rs.getString(2));
				list.add(model);
			}
			return list.size()>0?list:null;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return null;
		}
	}

}
