package petrolpump.admin.service;

import java.util.List;

import petrolpump.admin.model.MachineModel;
import petrolpump.admin.repository.MachineRepository;
import petrolpump.admin.repository.MachineRepositoryImpl;

public class MachineServiceImpl implements MachineService{
	
	MachineRepository m=new MachineRepositoryImpl(); 

	public boolean isAddNewMachine(MachineModel model,String ftypeid[],String capacity[]) {
		
		return m.isAddNewMachine(model,ftypeid,capacity);
	}

	@Override
	public List<Object[]> getAllMachines() {
		
		return m.getAllMachines();
	}

	@Override
	public boolean isDeleteMachineById(int mid) {
		
		return m.isDeleteMachineById(mid);
	}

	@Override
	public boolean isUpdateMachine(MachineModel model) {
		
		return m.isUpdateMachine(model);
	}

}
