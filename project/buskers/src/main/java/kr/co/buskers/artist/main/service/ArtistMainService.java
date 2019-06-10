package kr.co.buskers.artist.main.service;

import java.util.List;
import java.util.Map;

import kr.co.buskers.repository.domain.Busker;
import kr.co.buskers.repository.domain.Follow;
import kr.co.buskers.repository.domain.MusicFile;
import kr.co.buskers.repository.domain.SocialUrl;

public interface ArtistMainService {
	Map<String,Object> artistMain(int buskerNo);
	
	List<MusicFile> selectMusicByBuskerNo(int buskerNo);

	int followBusker(Follow follow);
	
	int followBuskerStatus(Follow follow);
	
	void sociaUrlInsert(SocialUrl socialUrl);
	
	SocialUrl selectSocialUrl(int buskerNo);
	
	void updateIntro(Busker busker);
}
