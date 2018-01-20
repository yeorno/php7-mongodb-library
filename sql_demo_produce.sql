
-- 存储过程，生成当然缓存数据
DROP PROCEDURE IF EXISTS  history_today_create;  
DELIMITER //  
CREATE PROCEDURE history_today_create(IN ctype CHAR(100) )
BEGIN
    
    -- 今日不存在记录，则添加
    set @id = null;
    SELECT id into @id FROM yx_history_today WHERE `type` = ctype AND ctime = CURDATE() order by id desc limit 1;
    set @now_hour = hour(curtime());
    IF ISNULL(@id) || LENGTH(trim(@id))<1 THEN
        #open_client
        CASE ctype 
			WHEN 'open_client' THEN 
          
			  if @now_hour = 0 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time1) values('open_client',curdate(),1);
			  elseif @now_hour = 1 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time2) values('open_client',curdate(),1);
			  elseif @now_hour = 2 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time3) values('open_client',curdate(),1);
			  elseif @now_hour = 3 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time4) values('open_client',curdate(),1);
			  elseif @now_hour = 4 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time5) values('open_client',curdate(),1);
			  elseif @now_hour = 5 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time6) values('open_client',curdate(),1);
			  elseif @now_hour = 6 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time7) values('open_client',curdate(),1);
			  elseif @now_hour = 7 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time8) values('open_client',curdate(),1);
			  elseif @now_hour = 8 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time9) values('open_client',curdate(),1);
			  elseif @now_hour = 9 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time10) values('open_client',curdate(),1);
			  elseif @now_hour = 10 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time11) values('open_client',curdate(),1);
			  elseif @now_hour = 11 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time12) values('open_client',curdate(),1);
			  elseif @now_hour = 12 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time13) values('open_client',curdate(),1);
			  elseif @now_hour = 13 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time14) values('open_client',curdate(),1);
			  elseif @now_hour = 14 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time15) values('open_client',curdate(),1);
			  elseif @now_hour = 15 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time16) values('open_client',curdate(),1);
			  elseif @now_hour = 16 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time17) values('open_client',curdate(),1);
			  elseif @now_hour = 17 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time18) values('open_client',curdate(),1);
			  elseif @now_hour = 18 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time19) values('open_client',curdate(),1);
			  elseif @now_hour = 19 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time20) values('open_client',curdate(),1);
			  elseif @now_hour = 20 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time21) values('open_client',curdate(),1);
			  elseif @now_hour = 21 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time22) values('open_client',curdate(),1);
			  elseif @now_hour = 22 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time23) values('open_client',curdate(),1);
			  elseif @now_hour = 23 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time24) values('open_client',curdate(),1);
	 
			  end if;
			  
        #new_user
			WHEN 'new_user' THEN 
          
			  if @now_hour = 0 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time1) values('new_user',curdate(),1);
			  elseif @now_hour = 1 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time2) values('new_user',curdate(),1);
			  elseif @now_hour = 2 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time3) values('new_user',curdate(),1);
			  elseif @now_hour = 3 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time4) values('new_user',curdate(),1);
			  elseif @now_hour = 4 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time5) values('new_user',curdate(),1);
			  elseif @now_hour = 5 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time6) values('new_user',curdate(),1);
			  elseif @now_hour = 6 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time7) values('new_user',curdate(),1);
			  elseif @now_hour = 7 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time8) values('new_user',curdate(),1);
			  elseif @now_hour = 8 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time9) values('new_user',curdate(),1);
			  elseif @now_hour = 9 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time10) values('new_user',curdate(),1);
			  elseif @now_hour = 10 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time11) values('new_user',curdate(),1);
			  elseif @now_hour = 11 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time12) values('new_user',curdate(),1);
			  elseif @now_hour = 12 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time13) values('new_user',curdate(),1);
			  elseif @now_hour = 13 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time14) values('new_user',curdate(),1);
			  elseif @now_hour = 14 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time15) values('new_user',curdate(),1);
			  elseif @now_hour = 15 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time16) values('new_user',curdate(),1);
			  elseif @now_hour = 16 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time17) values('new_user',curdate(),1);
			  elseif @now_hour = 17 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time18) values('new_user',curdate(),1);
			  elseif @now_hour = 18 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time19) values('new_user',curdate(),1);
			  elseif @now_hour = 19 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time20) values('new_user',curdate(),1);
			  elseif @now_hour = 20 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time21) values('new_user',curdate(),1);
			  elseif @now_hour = 21 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time22) values('new_user',curdate(),1);
			  elseif @now_hour = 22 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time23) values('new_user',curdate(),1);
			  elseif @now_hour = 23 then
				  INSERT  INTO  `yx_history_today`(type,ctime,time24) values('new_user',curdate(),1);
	 
			  end if; 
        
          
        END CASE; 
    ELSE
      case ctype 
		when 'new_user' THEN


          
			  if @now_hour = 0 then
				  update `yx_history_today` set time1= time1+1 where id = @id; 
			  elseif @now_hour = 1 then
				  update `yx_history_today` set time2= time2+1 where id = @id; 
			  elseif @now_hour = 2 then
				  update `yx_history_today` set time3= time3+1 where id = @id; 
			  elseif @now_hour = 3 then
				  update `yx_history_today` set time4= time4+1 where id = @id; 
			  elseif @now_hour = 4 then
				  update `yx_history_today` set time5= time5+1 where id = @id; 
			  elseif @now_hour = 5 then
				  update `yx_history_today` set time6= time6+1 where id = @id; 
			  elseif @now_hour = 6 then
				  update `yx_history_today` set time7= time7+1 where id = @id; 
			  elseif @now_hour = 7 then
				  update `yx_history_today` set time8= time8+1 where id = @id; 
			  elseif @now_hour = 8 then
				  update `yx_history_today` set time9= time9+1 where id = @id; 
			  elseif @now_hour = 9 then
				  update `yx_history_today` set time10= time10+1 where id = @id; 
			  elseif @now_hour = 10 then
				  update `yx_history_today` set time11= time11+1 where id = @id; 
			  elseif @now_hour = 11 then
				  update `yx_history_today` set time12= time12+1 where id = @id; 
			  elseif @now_hour = 12 then
				  update `yx_history_today` set time13= time13+1 where id = @id; 
			  elseif @now_hour = 13 then
				  update `yx_history_today` set time14= time14+1 where id = @id; 
			  elseif @now_hour = 14 then
				  update `yx_history_today` set time15= time15+1 where id = @id; 
			  elseif @now_hour = 15 then
				  update `yx_history_today` set time16= time16+1 where id = @id; 
			  elseif @now_hour = 16 then
				  update `yx_history_today` set time17= time17+1 where id = @id; 
			  elseif @now_hour = 17 then
				  update `yx_history_today` set time18= time18+1 where id = @id; 
			  elseif @now_hour = 18 then
				  update `yx_history_today` set time19= time19+1 where id = @id; 
			  elseif @now_hour = 19 then
				  update `yx_history_today` set time20= time20+1 where id = @id; 
			  elseif @now_hour = 20 then
				  update `yx_history_today` set time21= time21+1 where id = @id; 
			  elseif @now_hour = 21 then
				  update `yx_history_today` set time22= time22+1 where id = @id; 
			  elseif @now_hour = 22 then
				  update `yx_history_today` set time23= time23+1 where id = @id; 
			  elseif @now_hour = 23 then
				  update `yx_history_today` set time24= time24+1 where id = @id; 
			  end if;
        when 'open_client' THEN


          
			  if @now_hour = 0 then
				  update `yx_history_today` set time1= time1+1 where id = @id; 
			  elseif @now_hour = 1 then
				  update `yx_history_today` set time2= time2+1 where id = @id; 
			  elseif @now_hour = 2 then
				  update `yx_history_today` set time3= time3+1 where id = @id; 
			  elseif @now_hour = 3 then
				  update `yx_history_today` set time4= time4+1 where id = @id; 
			  elseif @now_hour = 4 then
				  update `yx_history_today` set time5= time5+1 where id = @id; 
			  elseif @now_hour = 5 then
				  update `yx_history_today` set time6= time6+1 where id = @id; 
			  elseif @now_hour = 6 then
				  update `yx_history_today` set time7= time7+1 where id = @id; 
			  elseif @now_hour = 7 then
				  update `yx_history_today` set time8= time8+1 where id = @id; 
			  elseif @now_hour = 8 then
				  update `yx_history_today` set time9= time9+1 where id = @id; 
			  elseif @now_hour = 9 then
				  update `yx_history_today` set time10= time10+1 where id = @id; 
			  elseif @now_hour = 10 then
				  update `yx_history_today` set time11= time11+1 where id = @id; 
			  elseif @now_hour = 11 then
				  update `yx_history_today` set time12= time12+1 where id = @id; 
			  elseif @now_hour = 12 then
				  update `yx_history_today` set time13= time13+1 where id = @id; 
			  elseif @now_hour = 13 then
				  update `yx_history_today` set time14= time14+1 where id = @id; 
			  elseif @now_hour = 14 then
				  update `yx_history_today` set time15= time15+1 where id = @id; 
			  elseif @now_hour = 15 then
				  update `yx_history_today` set time16= time16+1 where id = @id; 
			  elseif @now_hour = 16 then
				  update `yx_history_today` set time17= time17+1 where id = @id; 
			  elseif @now_hour = 17 then
				  update `yx_history_today` set time18= time18+1 where id = @id; 
			  elseif @now_hour = 18 then
				  update `yx_history_today` set time19= time19+1 where id = @id; 
			  elseif @now_hour = 19 then
				  update `yx_history_today` set time20= time20+1 where id = @id; 
			  elseif @now_hour = 20 then
				  update `yx_history_today` set time21= time21+1 where id = @id; 
			  elseif @now_hour = 21 then
				  update `yx_history_today` set time22= time22+1 where id = @id; 
			  elseif @now_hour = 22 then
				  update `yx_history_today` set time23= time23+1 where id = @id; 
			  elseif @now_hour = 23 then
				  update `yx_history_today` set time24= time24+1 where id = @id; 
			  end if;  
      end case;
    END IF;

    
END//  
DELIMITER ; 


-- 生成U盘相关的缓存数据
DROP PROCEDURE IF EXISTS  history_today_step;  
DELIMITER //  
CREATE PROCEDURE history_today_step(IN ctype CHAR(100) )
BEGIN
    
    -- 今日不存在记录，则添加
    set @id = null;
    SELECT id into @id FROM yx_history_today WHERE `type` = ctype AND ctime = CURDATE() order by id desc limit 1;
    set @now_hour = hour(curtime());
    IF ISNULL(@id) || LENGTH(trim(@id))<1 THEN
        #open_client
       
          
			if @now_hour = 0 then

			      case ctype 

			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time1) values('uefi_start',curdate(),1);
				  	   
				  end case;	   
			  elseif @now_hour = 1 then

				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time2) values('uefi_start',curdate(),1);
				  	   
				  end case;

			  elseif @now_hour = 2 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time3) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 3 then
				   case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time4) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 4 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time5) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 5 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time6) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 6 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time7) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 7 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time8) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 8 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time9) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 9 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time10) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 10 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time11) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 11 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 12 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time12) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 13 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time14) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 14 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time15) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 15 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time16) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 16 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time17) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 17 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time18) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 18 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time19) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 19 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time20) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 20 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time21) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 21 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time22) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 22 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time23) values('uefi_start',curdate(),1);
				  	   
				  end case;
			  elseif @now_hour = 23 then
				  case ctype 
			      
			           when 'mbr_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('mbr_lead',curdate(),1);
				  	   when 'gpt_lead' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('gpt_lead',curdate(),1);
				  	   when 'u_pan_initialize' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('u_pan_initialize',curdate(),1);
				  	   when 'u_pan_bios_start' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('u_pan_bios_start',curdate(),1);
				  	   when 'u_pan_back_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('u_pan_back_pe',curdate(),1);
				  	   when 'u_pan_restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('u_pan_restore_pe',curdate(),1);
				  	   when 'back_data' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('back_data',curdate(),1);
				  	   when 'restore_pe' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('restore_pe',curdate(),1);
				  	   when 'backup_system' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('backup_system',curdate(),1);
				  	   when 'restore_system' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('restore_system',curdate(),1);
				  	   when 'restore_mirroing' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('restore_mirroing',curdate(),1);
				  	   when 'uefi_start' then INSERT  INTO  `yx_history_today`(type,ctime,time24) values('uefi_start',curdate(),1);
				  	   
				  end case;
	 
			end if;
			  
            
    ELSE


    if @now_hour = 0 then

			      case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time1= time1+1 where id = @id; 
				  	   
				  end case;	   
			  elseif @now_hour = 1 then

				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time2= time2+1 where id = @id; 
				  	   
				  end case;	 

			  elseif @now_hour = 2 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time3= time3+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 3 then
				    case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time4= time4+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 4 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time5= time5+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 5 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time6= time6+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 6 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time7= time7+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 7 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time8= time8+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 8 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time9= time9+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 9 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time10= time10+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 10 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time11= time11+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 11 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time12= time12+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 12 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time13= time13+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 13 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time14= time14+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 14 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time15= time15+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 15 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time16= time16+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 16 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time17= time17+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 17 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time18= time18+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 18 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time19= time19+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 19 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time20= time20+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 20 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time21= time21+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 21 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time22= time22+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 22 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time23= time23+1 where id = @id; 
				  	   
				  end case;	 
			  elseif @now_hour = 23 then
				   case ctype 

			           when 'mbr_lead' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'gpt_lead' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'u_pan_initialize' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'u_pan_bios_start' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'u_pan_back_pe' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'u_pan_restore_pe' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'back_data' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'restore_pe' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'backup_system' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'restore_system' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'restore_mirroing' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   when 'uefi_start' then update `yx_history_today` set time24= time24+1 where id = @id; 
				  	   
				  end case;	 
	 
			end if;

			
      
    END IF;

    
END//  
DELIMITER ; 

// ***************************************

-- 触发器必需一次执行一个触发器
-- step 触发器1-31
drop trigger if exists add_new_step1;
create trigger add_new_step15
after insert on yx_statistics_step_1
for each row
begin
   if new.step_code = 'SC_INSTALL_OS_MBR_PC_RESTART' then 
      	call history_today_step('mbr_lead');
   elseif new.step_code = 'SC_INSTALL_OS_GPT_PC_RESTART' then 
		call history_today_step('gpt_lead');
   elseif new.step_code = 'SC_UDISK_INIT_RESTART' then 
		call history_today_step('u_pan_initialize');

   elseif new.step_code = 'SC_UDISK_MAKE_BIOS_VOLUME_RENAME' then 
		call history_today_step('u_pan_bios_start');
   elseif new.step_code = 'SC_BACKUP_CURRENT_PE_VER_CONFIG_EXPORT' then 
		call history_today_step('u_pan_back_pe');
   elseif new.step_code = 'SC_RESTORE_CURRENT_PE_VER_CONFIG_ENTRAN' then 
		call history_today_step('u_pan_restore_pe');
   elseif new.step_code = 'SC_BACKUP_DATA_START' then 
		call history_today_step('back_data');
   elseif new.step_code = 'SC_RESTORE_DATA_START' then 
		call history_today_step('restore_pe');
   elseif new.step_code = 'SC_BACKUP_OS_PC_RESTART' then 
		call history_today_step('backup_system');
   elseif new.step_code = 'SC_RESTORE_OS_PC_RESTART' then 
		call history_today_step('restore_system');
   elseif new.step_code = 'SC_RESTORE_GHO_PC_RESTART' then 
		call history_today_step('restore_mirroing');

   elseif new.step_code = 'SC_UDISK_MAKE_UEFI_VOLUME_RENAME' then 
		call history_today_step('uefi_start');
   end if;
end 

// ***************************************

-- 新设备 触发器
--

drop trigger if exists add_new_user;
create trigger add_new_user
after insert on yx_client
for each row
begin
   call history_today_create('new_user');
end 


-- 触发器1-31
--
drop trigger if exists add_new_user_count1;
create trigger add_new_user_count1
after insert on yx_client_1
for each row
begin
   call history_today_create('open_client');
end 

 -- 存储过程
 -- 生成缓存数据task

DELIMITER //  
 drop procedure if exists history_today_task;
 create procedure history_today_task(in ctype char(100))

 begin
    
    set @id = null;

    set @now_hour = hour(curtime());

    select id into @id from yx_upan_today where type=ctype and ctime = curdate();

    if ISNULL(@id) || LENGTH(trim(@id))<1 THEN

    	if @now_hour = 0  then
    	    case ctype

    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time1) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time1) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time1) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time1) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time1) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time1) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;
    	elseif @now_hour = 1  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time2) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time2) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time2) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time2) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time2) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time2) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;
    	elseif @now_hour = 2  then

			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time3) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time3) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time3) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time3) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time3) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time3) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;
    	elseif @now_hour = 3  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time4) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time4) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time4) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time4) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time4) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time4) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 4  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time5) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time5) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time5) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time5) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time5) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time5) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 5  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time6) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time6) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time6) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time6) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time6) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time6) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 6  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time7) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time7) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time7) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time7) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time7) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time7) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 7  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time8) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time8) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time8) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time8) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time8) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time8) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 8  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time9) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time9) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time9) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time9) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time9) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time9) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 9  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time10) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time10) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time10) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time10) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time10) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time10) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 10  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time11) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time11) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time11) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time11) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time11) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time11) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 11  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time12) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time12) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time12) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time12) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time12) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time12) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 12 then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time13) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time13) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time13) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time13) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time13) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time13) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 13  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time14) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time14) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time14) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time14) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time14) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time14) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 14  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time15) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time15) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time15) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time15) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time15) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time15) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 15  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time16) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time16) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time16) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time16) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time16) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time16) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour =  16 then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time17) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time17) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time17) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time17) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time17) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time17) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour =  17 then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time18) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time18) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time18) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time18) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time18) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time18) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour =  18 then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time19) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time19) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time19) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time19) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time19) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time19) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 19 then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time20) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time20) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time20) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time20) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time20) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time20) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 20  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time21) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time21) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time21) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time21) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time21) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time21) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 21  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time22) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time22) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time22) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time22) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time22) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time22) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 22  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time23) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time23) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time23) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time23) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time23) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time23) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	elseif @now_hour = 23  then
			case ctype
    	    
    	    when 'SCUS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time24) values('SCUS',curdate(),1);
    	    when 'TC_UDISK_INIT' then	INSERT  INTO  `yx_upan_today`(type,ctime,time24) values('TC_UDISK_INIT',curdate(),1);
    	    when 'TC_UDISK_MAKE_BIOS' then	INSERT  INTO  `yx_upan_today`(type,ctime,time24) values('TC_UDISK_MAKE_BIOS',curdate(),1);
    	    when 'TC_UDISK_MAKE_UEFI' then	INSERT  INTO  `yx_upan_today`(type,ctime,time24) values('TC_UDISK_MAKE_UEFI',curdate(),1);
    	    when 'TC_BACKUP_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time24) values('TC_BACKUP_PE_VER_CONF',curdate(),1);
    	    when 'TC_RESTORE_PE_VER_CONF' then	INSERT  INTO  `yx_upan_today`(type,ctime,time24) values('TC_RESTORE_PE_VER_CONF',curdate(),1);

    	    end case ;

    	

    	end if;

    else
    	if @now_hour = 0  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time1= time1+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time1= time1+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time1= time1+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time1= time1+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time1= time1+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time1= time1+1 where id = @id; 

    	    end case ;


    	elseif @now_hour = 1  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time2= time2+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time2= time2+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time2= time2+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time2= time2+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time2= time2+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time2= time2+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 2  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time3= time3+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time3= time3+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time3= time3+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time3= time3+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time3= time3+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time3= time3+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 3  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time4= time4+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time4= time4+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time4= time4+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time4= time4+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time4= time4+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time4= time4+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 4  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time5= time5+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time5= time5+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time5= time5+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time5= time5+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time5= time5+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time5= time5+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 5  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time6= time6+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time6= time6+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time6= time6+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time6= time6+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time6= time6+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time6= time6+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 6  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time7= time7+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time7= time7+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time7= time7+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time7= time7+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time7= time7+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time7= time7+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 7  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time8= time8+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time8= time8+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time8= time8+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time8= time8+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time8= time8+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time8= time8+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 8  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time9= time9+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time9= time9+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time9= time9+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time9= time9+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time9= time9+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time9= time9+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 9  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time10= time10+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time10= time10+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time10= time10+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time10= time10+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time10= time10+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time10= time10+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 10  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time1= time11+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time11= time11+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time11= time11+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time11= time11+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time11= time11+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time11= time11+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 11  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time12= time12+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time12= time12+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time12= time12+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time12= time12+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time12= time12+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time12= time12+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 12 then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time1= time13+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time13= time13+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time13= time13+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time13= time13+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time13= time13+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time13= time13+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 13  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time14= time14+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time14= time14+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time14= time14+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time14= time14+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time14= time14+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time14= time14+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 14  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time15= time15+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time15= time15+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time15= time15+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time15= time15+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time15= time15+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time15= time15+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 15  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time16= time16+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time16= time16+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time16= time16+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time16= time16+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time16= time16+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time16= time16+1 where id = @id; 

    	    end case ;

    	elseif @now_hour =  16 then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time17= time17+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time17= time17+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time17= time17+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time17= time17+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time17= time17+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time17= time17+1 where id = @id; 

    	    end case ;

    	elseif @now_hour =  17 then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time18= time18+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time18= time18+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time18= time18+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time18= time18+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time18= time18+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time18= time18+1 where id = @id; 

    	    end case ;

    	elseif @now_hour =  18 then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time19= time19+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time19= time19+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time19= time19+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time19= time19+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time19= time19+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time19= time19+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 19 then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time20= time20+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time20= time20+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time20= time20+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time20= time20+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time20= time20+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time20= time20+1 where id = @id; 

    	    end case ;

    	elseif @now_hour = 20  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time21= time21+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time21= time21+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time21= time21+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time21= time21+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time21= time21+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time21= time21+1 where id = @id; 

    	    end case ;


    	elseif @now_hour = 21  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time22= time22+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time22= time22+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time22= time22+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time22= time22+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time22= time22+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time22= time22+1 where id = @id; 

    	    end case ;


    	elseif @now_hour = 22  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time23= time23+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time23= time23+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time23= time23+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time23= time23+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time23= time23+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time23= time23+1 where id = @id; 

    	    end case ;


    	elseif @now_hour = 23  then
			case ctype
    	    
    	    when 'SCUS' then update `yx_upan_today` set time24= time24+1 where id = @id; 
    	    when 'TC_UDISK_INIT' then	update `yx_upan_today` set time24= time24+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_BIOS' then	update `yx_upan_today` set time24= time24+1 where id = @id; 
    	    when 'TC_UDISK_MAKE_UEFI' then	update `yx_upan_today` set time24= time24+1 where id = @id; 
    	    when 'TC_BACKUP_PE_VER_CONF' then	update `yx_upan_today` set time24= time24+1 where id = @id; 
    	    when 'TC_RESTORE_PE_VER_CONF' then	update `yx_upan_today` set time24= time24+1 where id = @id; 

    	    end case ;


    	

    	end if;

    end if ;
 end;
 DELIMITER ;



 -- 

 -- task 触发器1-31
drop trigger if exists add_new_task1;
create trigger add_new_task1
after insert on yx_statistics_task_1
for each row
begin
   if new.code_task = 'TC_UDISK_INIT' then 
   
      	call history_today_task('TC_UDISK_INIT');
   
   elseif new.code_task = 'TC_UDISK_MAKE_BIOS' then 
	
		call history_today_task('TC_UDISK_MAKE_BIOS');
   
   elseif new.code_task = 'TC_UDISK_MAKE_UEFI' then 
	
		call history_today_task('TC_UDISK_MAKE_UEFI');
   
   elseif new.code_task = 'TC_BACKUP_PE_VER_CONF' then 
	
		call history_today_task('TC_BACKUP_PE_VER_CONF');
   
   elseif new.code_task = 'TC_RESTORE_PE_VER_CONF' then 
		
		call history_today_task('TC_RESTORE_PE_VER_CONF');
   elseif new.code = 'SCUS' THEN
   		call history_today_task('SCUS');
   end if;
end 


drop trigger if exists add_new_task16;
create trigger add_new_task16
after insert on yx_statistics_task_16
for each row
begin
   if new.code = 'SCUS' THEN
   		call history_today_task('SCUS');
   end if;

   if new.code_task = 'TC_UDISK_INIT' then 
   
      	call history_today_task('TC_UDISK_INIT');
   
   elseif new.code_task = 'TC_UDISK_MAKE_BIOS' then 
	
		call history_today_task('TC_UDISK_MAKE_BIOS');
   
   elseif new.code_task = 'TC_UDISK_MAKE_UEFI' then 
	
		call history_today_task('TC_UDISK_MAKE_UEFI');
   
   elseif new.code_task = 'TC_BACKUP_PE_VER_CONF' then 
	
		call history_today_task('TC_BACKUP_PE_VER_CONF');
   
   elseif new.code_task = 'TC_RESTORE_PE_VER_CONF' then 
		
		call history_today_task('TC_RESTORE_PE_VER_CONF');
   
   end if;
end 


