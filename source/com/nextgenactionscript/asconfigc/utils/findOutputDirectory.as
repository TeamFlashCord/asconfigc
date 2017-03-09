/*
Copyright 2016-2017 Bowler Hat LLC

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
package com.nextgenactionscript.asconfigc.utils
{
	public function findOutputDirectory(mainFile:String, outputPath:String, isSWF:Boolean):String
	{
		if(outputPath === null)
		{
			if(mainFile === null)
			{
				return process.cwd();
			}
			var mainPath:String = path.resolve(path.dirname(mainFile));
			if(!isSWF)
			{
				//FlexJS treats these directory structures as a special case
				if(mainPath.endsWith("/src/main/flex") ||
					mainPath.endsWith("\\src\\main\\flex") ||
					mainPath.endsWith("/src") ||
					mainPath.endsWith("\\src"))
				{
					return path.resolve(mainPath, "../");
				}
			}
			return mainPath;
		}
		return path.resolve(path.dirname(outputPath));
	}
}