<?php

# 阿里云修复后的漏洞函数
    /**
     * boolean phpMyAdmin.Core::checkPageValidity(string &$page, array $whitelist)
     *
     * checks given $page against given $whitelist and returns true if valid
     * it optionally ignores query parameters in $page (script.php?ignored)
     *
     * @param string &$page     page to check
     * @param array  $whitelist whitelist to check page against
     *
     * @return boolean whether $page is valid or not (in $whitelist or not)
     */
    public static function checkPageValidity(&$page, array $whitelist = [])
    { if(strpos($page,'..')!==False) die('error');	# 很有可能加的就是这行代码
        if (empty($whitelist)) {
            $whitelist = self::$goto_whitelist;
        }
        if (! isset($page) || !is_string($page)) {
            return false;
        }

        if (in_array($page, $whitelist)) {
            return true;
        }

        $_page = mb_substr(
            $page,
            0,
            mb_strpos($page . '?', '?')
        );
        if (in_array($_page, $whitelist)) {
            return true;
        }

        $_page = urldecode($page);
        $_page = mb_substr(
            $_page,
            0,
            mb_strpos($_page . '?', '?')
        );
        if (in_array($_page, $whitelist)) {
            return true;
        }

        return false;
    }

