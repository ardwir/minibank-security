package my.minibank.dao;

import my.minibank.model.NasabahModel;

public interface NasabahDao {
	
	public NasabahModel getNasabah(int theId);
	
	public NasabahModel getNasabahByUsername(String username);

	public void updatePassword(int theId, String newPassword);

}
