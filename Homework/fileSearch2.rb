puts "Привет! Эта программа поиска файла"
puts "Введите имя файла для поиска, или Enter для выхода"
puts "Поиск будет произведен на диске, откуда запускается программа"
print "Итак, файл, что ищем:  "
 
@nfile = gets.strip.downcase
exit if @nfile == ''
 
@output = File.open("log.txt","w")
puts
@count_files = 0
 
def dir_find dir    
    #puts "seek in '#{dir}'"    
    #rint "\rseek in '#{dir}'"
    begin
        Dir.open dir
    rescue Exception => e
        #puts "#{e}"
        return true
    end
    begin
    Dir.chdir dir
    rescue Exception => e
        #puts "#{e}"
        return true
    end
    Dir.foreach(dir) do |d|     
        next if d == '.' || d == '..'
         
        if !Dir.exist? d#файл
            f = d.downcase
            if f == @nfile     
                @output.write "#{dir}/#{f}\n"  
                @count_files += 1          
            end
        else#директория         
            return false if !dir_find "#{dir}/#{d}"
            Dir.chdir dir
        end
    end
    return true
end
 
#определим корневую папку
m_dir = Dir.pwd
arr = m_dir.split("/")
#m_dir = arr[0]+"/"+arr[1]
m_dir = arr[0]+"/"+arr[1]
Dir.chdir m_dir
 
dir_find m_dir
 
@output.close
 
puts
puts
puts "Поиск закончен. Найдено #{@count_files} файла(ов)"