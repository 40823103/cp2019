var tipuesearch = {"pages": [{'title': 'About', 'text': 'https://github.com/40823103/cp2019 \n \n https://mde.tw/dartpad/?id=2375f66f87da8e16946c7bfb58747643 \n \n', 'tags': '', 'url': 'About.html'}, {'title': '迴圈', 'text': '\n gist: https://gist.github.com/40823103/13646115563172f84a505f0f1a6b1a3e \n dartpad: https://mde.tw/dartpad/?id=13646115563172f84a505f0f1a6b1a3e \n main() {\n  for (int i = 0; i < 7; i++) {\n    print(\'你在哈囉 $i\');\n  }\n  print(\'你在哈囉嗎 讚\');\n} \n \n \n gist: https://gist.github.com/40823103/570700f30d8728172cdd58dcffb20132 \n dartpad: https://mde.tw/dartpad/?id=570700f30d8728172cdd58dcffb20132 \n  Run\nimport \'dart:html\';\n\nvoid main() {\n  // 每一組 10 人\n  int num = 10;\n  // 組序由 1 開始\n  int gth = 1;\n  // 迴圈序號變數\n  int i;\n  // 每組學員暫存數列\n  var gp_list = [];\n  // 全班分組數列\n  var cp2019 = [];\n\n  HttpRequest.getString(\n          \'https://mde.tw/cp2019/downloads/2019fall_cp_1a_list.txt\')\n      .then((String resp) {\n    // 利用 trim() 去除字串最後的跳行符號, 之後再利用 split() 根據 \\n 轉為數列\n    var stud_list = resp.trim().split("\\n");\n    // 數列利用 shuffle() 方法以隨機方法弄亂順序\n    stud_list.shuffle();\n    // 逐一讀取已經弄亂的學生學號數列, 利用模數運算每幾人分成一組\n    for (i = 0; i < stud_list.length; i++) {\n      // 0, 1~(num-1), num\n      if (i % num == 0) {\n        gp_list = [];\n        // 列印區隔符號\n        print(\'=\' * 20);\n        print("group $gth :");\n        print(stud_list[i]);\n        // 在各分組數列中加入將對應的學員學號\n        gp_list.add(stud_list[i]);\n        gth = gth + 1;\n      } else {\n        print(stud_list[i]);\n        // 在各分組數列中加入將對應的學員學號\n        gp_list.add(stud_list[i]);\n      }\n      if (i % num == 0) {\n        // 逐步將各組暫存的分組數列加入全班分組數列中\n        cp2019.add(gp_list);\n      }\n    }\n    // 列出全班分組數列\n    print(cp2019);\n  });\n}\n \n \n \n gist: https://gist.github.com/40823103/734a19c08c992f44e700eed0eba6d8a7 \n dartpad: https://mde.tw/dartpad/?id=734a19c08c992f44e700eed0eba6d8a7 \n int i;\nint sum;\n\nmain() {\n  sum = 0;\n  for(i=1;i <=10 ;i++){\n    sum += i;\n    print("$sum");\n  }\n print("sum = $sum");\n}\n\nfun1(){\n} \n \n', 'tags': '', 'url': '迴圈.html'}]};