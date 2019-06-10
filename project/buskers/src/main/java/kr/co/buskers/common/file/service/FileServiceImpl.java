package kr.co.buskers.common.file.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.buskers.repository.domain.MusicFile;
import kr.co.buskers.repository.mapper.BuskerMapper;
import kr.co.buskers.repository.mapper.FileMapper;

@Service
public class FileServiceImpl implements FileService {
	
	@Autowired
	private FileMapper mapper;
	
	@Autowired
	private BuskerMapper bMapper;
	
	public void deleteFile(int groupNo) throws Exception {
		
		mapper.deleteFileAll(groupNo);
	}
	
	public Map<String, Object> selectFile(int groupNo) throws Exception {
		Map<String, Object> map = new HashMap<>();
		System.out.println("도달");
		map.put("file", mapper.selectFileByGroupNo(groupNo));
		System.out.println(mapper.selectFileByGroupNo(groupNo));
		return map;
	}
	
	public int insertFile(kr.co.buskers.repository.domain.File file) throws Exception {
		kr.co.buskers.repository.domain.File f = new kr.co.buskers.repository.domain.File();
		if (mapper.selectFileMaxNo() == null) {
			f.setGroupNo(1);
		} else {
			f.setGroupNo(mapper.selectFileMaxNo().getGroupNo() + 1);
		}
		if (file.getGroupNo() != 0) {
			f.setGroupNo(file.getGroupNo());
		}
		
		f.setName(file.getName());
		f.setPath(file.getPath());
		f.setSystemName(file.getSystemName());
		System.out.println("insert 전");
		mapper.insertFile(f);
		System.out.println("insert 후");
		
		return f.getGroupNo();
	}
	
	
	
	public kr.co.buskers.repository.domain.File uploadImage(MultipartFile multipartFile, String uriPath) throws Exception {
		UUID uuid = UUID.randomUUID();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String uploadRoot = "C:/bit2019/upload";
		String path = uriPath + sdf.format(new Date()) + "/";
		String orgFileName = multipartFile.getOriginalFilename();
		String sysFileName = uuid.toString() + orgFileName;
		String filePath = uploadRoot + path;
		
		kr.co.buskers.repository.domain.File file = new kr.co.buskers.repository.domain.File();
		file.setName(multipartFile.getOriginalFilename());
		file.setSystemName(sysFileName);
		file.setPath(filePath);
		
		File f = new File(filePath + sysFileName);
		
	    if(f.exists() == false) {
    	  f.mkdirs();
	    }
	    
	    multipartFile.transferTo(f);
		
		return file;
	}
	
	@Override
	public void insertMusic(MusicFile musicFile) throws Exception {
		musicFile.setPath(musicUpload(musicFile));
		mapper.insertMusic(musicFile);
	}
	
	@Override
	public void updateMusicByFileNo(MusicFile musicFile) throws Exception {
		musicFile.setPath(musicUpload(musicFile));
		mapper.updateMusic(musicFile);
	}
	
	public String musicUpload(MusicFile musicFile) throws Exception {
		MultipartFile attach = musicFile.getAttach();
		
		System.out.println("사용자가 선택한 파일명 : "+attach.getOriginalFilename());
		
		UUID uuid = UUID.randomUUID();
		
		musicFile.setSysname(uuid.toString());
		musicFile.setName(attach.getOriginalFilename());
		
	    String buskerName = bMapper.selectBuskerByNo(musicFile.getBuskerNo()).getActivityName();
		
		String path = "C:/bit2019/upload/"+"busker1";
//		String path = "/Users/kyujong/Documents/bit2019/upload/"+buskerName;
//		String path = "/Users/kyujong/Documents/bit2019/upload/"+musicFile.getBuskerName();
		File file = new File(path);
		if(!file.exists()) file.mkdirs();
		
//		path = "/Users/kyujong/Documents/bit2019/upload/"+ buskerName +"/"+musicFile.getSysname()+".mp3";
		path = "C:/bit2019/upload/"+ buskerName +"/"+musicFile.getSysname()+".mp3";
		attach.transferTo(new File(path));
		
		path = "/upload/" + buskerName;
//		path = "/upload/" + musicFile.getBuskerName();
		path = path + "/" +musicFile.getSysname()+".mp3";
		return path;
	}
}
