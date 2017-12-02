package kr.co.beliefarm.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

import kr.co.beliefarm.dao.ProjectDao;
import kr.co.beliefarm.service.ProjectService;
import kr.co.beliefarm.vo.Project;

@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectDao dao;

	@Override
	public Project selectProjectById(int id) {
		System.out.println("할");
		return dao.selectProjectById(id);
	}

	@Override
	public List<Project> selectAllProjects() {
		return dao.selectAllProjects();
	}

	@Override
    public void makeQrCode(String projectId, String fileName) {
		String fileRoad = "/Users/juhyunlee/Desktop/qr/" + fileName + ".png";
		String url = "http://192.168.1.155:8080/Beliefarm/project/projectDetail.do?projectId=" + projectId;
		QRCodeWriter qrCodeWriter = new QRCodeWriter();
        try {
        	url = new String(url.getBytes("UTF-8"), "ISO-8859-1");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        BitMatrix bitMatrix= null;
		try {
			bitMatrix = qrCodeWriter.encode(url, BarcodeFormat.QR_CODE,
			        100, 100);
		} catch (WriterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			MatrixToImageWriter.writeToFile(bitMatrix, "png",
			        new File("qrcode_1.png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}        			
	}

}
