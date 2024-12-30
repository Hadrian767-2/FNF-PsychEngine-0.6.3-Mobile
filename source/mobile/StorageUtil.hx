/*
 * Copyright (C) 2024 Mobile Porting Team
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package mobile;

import lime.system.System as LimeSystem;
import haxe.io.Path;
import haxe.Exception;
#if android
import android.content.Context as AndroidContext;
import android.os.Environment as AndroidEnvironment;
import android.Permissions as AndroidPermissions;
import android.Settings as AndroidSettings;
import android.Tools as AndroidTools;
import android.os.Build.VERSION as AndroidVersion;
import android.os.Build.VERSION_CODES as AndroidVersionCode;
#end
#if sys
import sys.io.File;
import sys.FileSystem;
#end

using StringTools;

/**
 * A storage class for mobile.
 * @author Karim Akra and Lily Ross (mcagabe19)
 */
class StorageUtil
{
	#if sys
	// root directory, used for handling the saved storage type and path
	public static final rootDir:String = LimeSystem.applicationStorageDirectory;

	public static function getStorageDirectory(?force:Bool = false):String
	{
		var daPath:String = '';
		#if android
		if (!FileSystem.exists(rootDir + 'storagetype.txt'))
		{
		}

		return daPath;
	}

	public static function saveContent(fileName:String, fileData:String, ?alert:Bool = true):Void
	{
		try
		{
		}
		catch (e:Exception)
			if (alert)
			{
			}	
	}

	#if android
	public static function requestPermissions():Void
	{

		if (!AndroidEnvironment.isExternalStorageManager())
		{
		}

		try
		{
		}
		catch (e:Dynamic)
		{
		}
	}

	public static function checkExternalPaths(?splitStorage = false):Array<String>
	{
	}

	public static function getExternalDirectory(externalDir:String):String
	{
	}
	#end
	#end
}

#if android
@:runtimeValue
enum abstract StorageType(String) from String to String
{
	public static function fromStr(str:String):StorageType
	{
		return switch (str)
		{
		}
	}

	public static function fromStrForce(str:String):StorageType
	{
	}
}
#end
