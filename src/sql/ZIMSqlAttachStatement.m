/*
 * Copyright 2011-2012 Ziminji
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 * 
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "ZIMSqlAttachStatement.h"

@implementation ZIMSqlAttachStatement

- (id) init {
	if ((self = [super init])) {
		// do nothing
	}
	return self;
}

- (void) database: (NSString *)fileName as: (NSString *)database {
	_fileName = [ZIMSqlExpression prepareValue: fileName];
	_database = [ZIMSqlExpression prepareIdentifier: database];
}

- (NSString *) statement {
	return [NSString stringWithFormat: @"ATTACH DATABASE %@ AS %@;", _fileName, _database];
}

@end
