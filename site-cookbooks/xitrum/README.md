xitrum Cookbook
===============

This cookbook makes your xitrum based application.

Requirements
------------
#### packages
- `git`
- `java`
- `iptables`


Attributes
----------
#### xitrum::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['xitrum']['appname']</tt></td>
    <td>String</td>
    <td>Your application's name</td>
    <td><tt>xitrum-new</tt></td>
  </tr>
  <tr>
    <td><tt>['xitrum']['apprepo']</tt></td>
    <td>String</td>
    <td>Your application's repository</td>
    <td><tt>git://github.com/ngocdaothanh/xitrum-new</tt></td>
  </tr>
  <tr>
    <td><tt>['xitrum']['appmain']</tt></td>
    <td>String</td>
    <td>Your application's main class</td>
    <td><tt>quickstart.Boot</tt></td>
  </tr></table>

Usage
-----
#### xitrum::default
Just include `xitrum` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[xitrum]"
  ]
}
```

# LICENSE and AUTHOR:

Author:: Takeharu.Oshida <georgeosddev@gmail.com>

Copyright:: 2013, Takeharu.Oshida

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
