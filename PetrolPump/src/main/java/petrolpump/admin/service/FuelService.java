package petrolpump.admin.service;

import java.util.List;

import petrolpump.admin.model.FuelTypeModel;

public interface FuelService {
	
	public boolean isAddFuelModel(FuelTypeModel model);
	public List<FuelTypeModel> getAllFuelTypes();
}
