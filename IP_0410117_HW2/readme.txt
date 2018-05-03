第一題
使用matlab內建函數做histogram equalization，說明如 HW2_1.m檔內的註解。
結果為: 1_before.jpg  1_after.jpg
(調整後的圖存成 1.jpg，將於第3題用到)


第二題
我使用的影像處理軟體是pixlr(類photoshop的線上免安裝版本)，
因為pixlr讀不了原本給的 tif檔，
所以先將檔案用小畫家打開，再存成jpg檔，
接著使用pixlr，
在「調整」這個選項下面有許多可以改變直方圖分布的工具，包括 曲線和色階等等我都有用上。
結果為: 2_before.jpg  2_after.jpg
(調整後的圖存成 2.jpg，將於第3題用到)


第三題
程式撰寫在 HW2_3.m檔，內有註解，
此題使用matlab內建的imhistmatch函數，並設定參數，使圖片為256bits表示。
我一共用了三個不一樣的histogram做matching，分別來自第一題、第二題equalization的結果、自己另外找的狗狗圖片。
其中第一題因equaliation後的圖較亮(過曝)，我把match後的圖和原本最一開始偏暗的圖取平均，
而第二題的matching結果已更清楚，便沒有再做其他調整。
結果為: 3_match_to_1_after.jpg  3_match_to_2_after.jpg  3_match_to_dog.jpg