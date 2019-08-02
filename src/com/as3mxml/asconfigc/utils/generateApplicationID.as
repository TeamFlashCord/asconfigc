/*
Copyright 2016-2019 Bowler Hat LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
package com.as3mxml.asconfigc.utils
{
	public function generateApplicationID(mainFile:String, outputPath:String):String
	{
		if(!outputPath && !mainFile)
		{
			return null;
		}
		var fileName:String = null;
		if(outputPath == null)
		{
			fileName = path.basename(mainFile);
		}
		else
		{
			fileName = path.basename(outputPath);
		}
		var extensionIndex:int = fileName.indexOf(".");
		if(extensionIndex == -1)
		{
			return fileName;
		}
		return fileName.substr(0, extensionIndex);
	}
}