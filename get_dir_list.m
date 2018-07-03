function subdir = get_dir_list(dir_name)
    subdir=char();
    filelist=dir(dir_name);
    for i = 1:length(filelist)
        if( isequal(filelist(i).name, '.')...
            || isequal(filelist(i).name, '..')...
            || ~filelist(i).isdir)
            continue;
        end
        dirname=fullfile(dir_name, filelist(i).name);
        subdir=[subdir;dirname];
        subdir=cellstr(subdir);
    end
end