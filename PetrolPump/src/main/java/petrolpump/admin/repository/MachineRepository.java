package petrolpump.admin.repository;

import java.util.List;

import petrolpump.admin.model.MachineModel;

public interface MachineRepository {
	
	public boolean isAddNewMachine(MachineModel model,String ftypeid[],String capacity[]);
	public List<Object[]> getAllMachines();
	public boolean isDeleteMachineById(int mid);
	public boolean isUpdateMachine(MachineModel model);

}
