package com.sponberg.fluid.android;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;

import com.sponberg.fluid.ResourceService;
import com.sponberg.fluid.util.StreamUtil;

public class DefaultResourceService implements ResourceService {

	private final Context context;

	private String kRoot = "fluid";
	
	public DefaultResourceService(Context context) {
		this.context = context;
	}
	
	@Override
	public String getResourceAsString(String dir, String name) {
		
		byte[] bytes = getResourceAsBytes(dir, name);
		if (bytes != null)
			try {
				return new String(bytes, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
				return new String(bytes);
			}
		else
			return null;
	}
	
	protected File getFile(File dir, String name) {
		return new File(dir.getAbsolutePath() + "/" + name);
	}
	
	@Override
	public byte[] getResourceAsBytes(String dir, String name) {
		
		File file;
		
		if (!dir.equals("")) {
			dir = dir + "/";
			File dirFile = context.getDir(kRoot, 0);
			dirFile = new File(dirFile, dir);
			file = getFile(dirFile, name);
		} else {
			file = getFile(context.getFilesDir(), name);
		}
				
		try {
			InputStream in;
			if (file.exists()) {
				in = new FileInputStream(file);
			} else {
				AssetManager am = context.getAssets();
				in = am.open(kRoot + "/" + dir + name);			
			}
		
			ByteArrayOutputStream out = new ByteArrayOutputStream();
			StreamUtil.copyInputStream(in, out);
			return out.toByteArray();	
		} catch (IOException e) {
			return null;
		}		
	}

	@Override
	public boolean resourceExists(String dir, String name) {
		
		File file;
		
		if (!dir.equals("")) {
			dir = dir + "/";
			File dirFile = context.getDir(kRoot, 0);
			dirFile = new File(dirFile, dir);
			file = getFile(dirFile, name);
		} else {
			file = getFile(context.getFilesDir(), name);
		}

		if (file.exists()) {
			return true;
		}
		
		AssetManager am = context.getAssets();

		try {
			am.open(kRoot + "/" + dir + name);
			return true;
		} catch (IOException e) {
			return false;
		}
	}

	@Override
	public void saveResource(String dir, String name, byte[] bytes, boolean excludeFromBackupIgnored)
			throws IOException {

		File file;
		
		if (!dir.equals("")) {
			dir = dir + "/";
			File dirFile = context.getDir(kRoot, 0);
			dirFile = new File(dirFile, dir);
			if (!dirFile.exists()) {
				dirFile.mkdirs();
			}
			file = getFile(dirFile, name);
		} else {
			file = getFile(context.getFilesDir(), name);
		}
		
		StreamUtil.copyInputStream(new ByteArrayInputStream(bytes), new FileOutputStream(file));
	}

	@Override
	public Object getImage(String dir, String name) {
		
		String defaultDir = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/com.example.hipages/photos";
		
		if (dir != null && !dir.equals("") && name != null && !name.equals("")) {
			File imageDir = null;
			try {
				imageDir = new File(dir);
			} catch (Exception e) {
				// set default dir in case we have an error
				imageDir = new File(defaultDir);
				e.printStackTrace();
			}
			
			try {
				// create directory if does not exist
				if (!imageDir.exists()) {
					imageDir.mkdirs();
				}
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
				
			try {
				Bitmap bitmap = BitmapFactory.decodeFile(dir + "/" + name);
				// COMPRESS HERE
				return bitmap;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		
		return null;
	}

	@Override
	public void saveImage(String dir, String name, Object object, boolean excludeFromBackup) throws IOException {
		
		String defaultDir = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/com.example.hipages/photos";
		
		if (object == null || !(object instanceof Bitmap)) {
			return;
		}
			
		if (dir != null && !dir.equals("") && name != null && !name.equals("")) {
			File imageDir = null;
			try {
				imageDir = new File(dir);
			} catch (Exception e) {
				// set default dir in case we have an error
				imageDir = new File(defaultDir);
				e.printStackTrace();
			}
			
			try {
				// create directory if does not exist
				if (!imageDir.exists()) {
					imageDir.mkdirs();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			try {
				FileOutputStream fOut = null;
				File file = new File(dir, name); // the File to save to
				fOut = new FileOutputStream(file);
	
				Bitmap pictureBitmap = (Bitmap)object; // obtaining the Bitmap
				pictureBitmap.compress(Bitmap.CompressFormat.PNG, 100, fOut);
				// COMPRESS HERE
				fOut.flush();
				fOut.close(); // do not forget to close the stream
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
