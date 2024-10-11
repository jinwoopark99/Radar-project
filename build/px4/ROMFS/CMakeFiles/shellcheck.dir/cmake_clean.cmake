file(REMOVE_RECURSE
  "../etc/init.d/rc.autostart"
  "../etc/init.d/rc.autostart.post"
  "../etc/init.d/rc.serial"
  "../romfs_files.tar"
  "CMakeFiles/shellcheck"
  "romfs_copy.stamp"
  "romfs_extract.stamp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/shellcheck.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
