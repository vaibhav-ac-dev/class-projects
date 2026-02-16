package petrolpump.admin.service;

import java.util.List;

import petrolpump.admin.model.FuelTypeModel;
import petrolpump.admin.repository.FuelRepository;
import petrolpump.admin.repository.FuelRepositoryImpl;

public class FuelTypeServiceImpl implements FuelService{
	
	FuelRepository fuelRepo=new FuelRepositoryImpl();

	@Override
	public boolean isAddFuelModel(FuelTypeModel model) {
		
		return fuelRepo.isAddFuelModel(model);
	}

	@Override
	public List<FuelTypeModel> getAllFuelTypes() {
		
		return fuelRepo.getAllFuelTypes();
	}

}
