package com.config;

import javax.crypto.*;
import java.security.*;
import javax.crypto.spec.*;
import org.apache.commons.codec.binary.Base64;
public class UserPasswordUtil {
	private static final String KEY = "SMARTPAY";//长度八位
	private static Cipher cipher = null;
	private static Key key;
	//生成秘钥
	private static void desEncrypt(String strkey) throws Exception{
			byte[] secretKey = strkey.getBytes();
			SecretKeyFactory kf = SecretKeyFactory.getInstance("DES");
			DESKeySpec keySpec = new DESKeySpec(secretKey);
			key = kf.generateSecret(keySpec);
			cipher = Cipher.getInstance("DES");
	}
		//解密
	public  String decode(String obj) throws Exception{
		if(obj==null) return null;
		String resultStr = null;
		desEncrypt(KEY);
			cipher.init(Cipher.DECRYPT_MODE, key);
			Base64 base64 = new Base64();
			byte[] objByte = base64.decode(obj.getBytes("UTF-8"));
			byte[] result = cipher.doFinal(objByte);
			resultStr = new String(result, "UTF-8");
		return resultStr;
	}
	//加密
	public  String encode(String obj)throws Exception {
		if(obj==null) return null;
		desEncrypt(KEY);
		String resultStr = null;
			cipher.init(Cipher.ENCRYPT_MODE, key);
			Base64 base64 = new Base64();
			byte[] objByte = obj.getBytes("UTF-8");
			byte[] result = cipher.doFinal(objByte);
			resultStr = new String(base64.encode(result), "UTF-8");
		return resultStr;
	}


}
