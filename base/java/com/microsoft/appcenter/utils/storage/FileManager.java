package com.microsoft.appcenter.utils.storage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.microsoft.appcenter.utils.AppCenterLog;
import e.a.a.a.a;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;

public class FileManager {
    @SuppressLint({"StaticFieldLeak"})
    public static Context sContext;

    public static boolean delete(String str) {
        return delete(new File(str));
    }

    public static boolean deleteDir(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File deleteDir : listFiles) {
                deleteDir(deleteDir);
            }
        }
        return file.delete();
    }

    public static String[] getFilenames(String str, FilenameFilter filenameFilter) {
        File file = new File(str);
        return file.exists() ? file.list(filenameFilter) : new String[0];
    }

    public static synchronized void initialize(Context context) {
        synchronized (FileManager.class) {
            if (sContext == null) {
                sContext = context;
            }
        }
    }

    public static File lastModifiedFile(String str, FilenameFilter filenameFilter) {
        return lastModifiedFile(new File(str), filenameFilter);
    }

    public static void mkdir(String str) {
        new File(str).mkdirs();
    }

    public static String read(String str) {
        return read(new File(str));
    }

    public static byte[] readBytes(File file) {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[((int) file.length())];
        try {
            fileInputStream = new FileInputStream(file);
            new DataInputStream(fileInputStream).readFully(bArr);
            fileInputStream.close();
            return bArr;
        } catch (IOException e2) {
            StringBuilder a = a.a("Could not read file ");
            a.append(file.getAbsolutePath());
            AppCenterLog.error("AppCenter", a.toString(), e2);
            return null;
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }

    public static void write(String str, String str2) {
        write(new File(str), str2);
    }

    public static boolean delete(File file) {
        return file.delete();
    }

    public static File lastModifiedFile(File file, FilenameFilter filenameFilter) {
        File file2 = null;
        if (file.exists()) {
            File[] listFiles = file.listFiles(filenameFilter);
            long j2 = 0;
            if (listFiles != null) {
                for (File file3 : listFiles) {
                    if (file3.lastModified() > j2) {
                        j2 = file3.lastModified();
                        file2 = file3;
                    }
                }
            }
        }
        return file2;
    }

    public static String read(File file) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader(file));
            String property = System.getProperty("line.separator");
            StringBuilder sb = new StringBuilder();
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
                while (true) {
                    String readLine2 = bufferedReader.readLine();
                    if (readLine2 != null) {
                        sb.append(property);
                        sb.append(readLine2);
                    }
                }
                bufferedReader.close();
                return sb.toString();
            }
            bufferedReader.close();
            return sb.toString();
        } catch (IOException e2) {
            StringBuilder a = a.a("Could not read file ");
            a.append(file.getAbsolutePath());
            AppCenterLog.error("AppCenter", a.toString(), e2);
            return null;
        } catch (Throwable th) {
            bufferedReader.close();
            throw th;
        }
    }

    public static void write(File file, String str) {
        if (!TextUtils.isEmpty(str) && TextUtils.getTrimmedLength(str) > 0) {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            try {
                bufferedWriter.write(str);
            } finally {
                bufferedWriter.close();
            }
        }
    }
}
