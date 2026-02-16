package petrolpump.admin.repository;

import java.util.List;

import petrolpump.admin.model.FuelTypeModel;

public interface FuelRepository {
	
	public boolean isAddFuelModel(FuelTypeModel model);
	public List<FuelTypeModel> getAllFuelTypes();

}
