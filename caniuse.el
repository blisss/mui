;;
;; @link https://github.com/Fyrd/caniuse/raw/master/data.json
;;

;; "agents": {
;;   "browser": {
;;      "abbr": "FF", // 缩写
;;      "browser": "Firefox", // 全称
;;      "prefix": "moz", // 前缀
;;      "type": "desktop" | "mobile", // 类型
;;      "versions": [...]
;;   }
;; }
;;
(defvar caniuse-browser-abbr
	'(("chr" . ("chrome" "and_chr"))
	 ("ff" . ("firefox" "and_ff"))
	 ("and" . ("android" "and_chr" "and_ff" "and_uc"))
	 ("and_chr" . ("and_chr"))
	 ("and_ff" . ("and_ff"))
	 ("and_uc" . ("and_uc"))
	 ("bb" . ("bb"))
	 ("edge" . ("edge"))
	 ("ie" . ("ie" "ie_mob"))
	 ("ie_mob" . ("ie_mob"))
	 ("ios" . ("ios_saf"))
	 ("saf" . ("safari" "ios_saf"))
	 ("ios_saf" . ("ios_saf"))
	 ("op" . ("opera" "op_mini" "op_mob"))
	 ("op_mini" . ("op_mini"))
	 ("op_mob" . ("op_mob"))))

(car (cdr (assoc "chr" caniuse-browser-abbr)))
;;
;;
;;
;;
;;
