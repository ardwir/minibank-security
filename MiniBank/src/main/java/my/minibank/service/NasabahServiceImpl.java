package my.minibank.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import my.minibank.dao.NasabahDao;
import my.minibank.model.NasabahModel;

@Service
public class NasabahServiceImpl implements NasabahService, UserDetailsService{

	@Autowired
	private NasabahDao nasabahDao;
	
	@Override
	public NasabahModel getNasabah(int id) {
		return nasabahDao.getNasabah(id);
	}

	@Override
	@Transactional
	public NasabahModel getNasabahByUsername(String username) {
		return nasabahDao.getNasabahByUsername(username);
	}

	@Override
	@Transactional
	public void changePassword(int id, String newPassword) {
		nasabahDao.updatePassword(id, newPassword);
	}
	
	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		NasabahModel user = nasabahDao.getNasabahByUsername(username);

		if (user == null) {
			throw new UsernameNotFoundException("Bad credentials");
		}

		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_USER"));
		grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());

		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
				grantedAuthorities);

	}

}
