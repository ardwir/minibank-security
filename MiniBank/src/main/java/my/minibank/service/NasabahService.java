package my.minibank.service;

import my.minibank.model.NasabahModel;

public interface NasabahService {
	
	public NasabahModel getNasabah(int id);

	public NasabahModel getNasabahByUsername(String username);
	
	public void changePassword(int theId, String newPassword);

}
