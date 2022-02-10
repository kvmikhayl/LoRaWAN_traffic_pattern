clearvars; 


if 0
    %number of connected devices vs time
    %clearvars calc_PDR_min calc_PDR_max calc_PDR_mean;
    calc_input_EDs=128;
    calc_input_period=160;
    calc_conf_iteration=33;
    calc_conf_plot=2;%1 - whole, 2 - zoomed
        
    %base 
    if(1)%just for structuring
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_base_3ch_%i_ED_%i_seconds.mat',calc_input_EDs,calc_input_period);
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            
            temp_num_zeros=sum(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:)==0);
            temp_max_timestamp=max(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:));
            
            temp_num_EDs_connected=calc_input_EDs-temp_num_zeros;
            temp_max_ED_connected=max(temp_num_EDs_connected);
            temp_max_timestamp_overall=max(temp_max_timestamp);

            calc_base_devices_connected=zeros(2,temp_max_ED_connected+2);
            calc_base_devices_connected(1,1:temp_num_EDs_connected+1)=0:1:temp_max_ED_connected;
            temp=sort(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:))
            calc_base_devices_connected(2,2:temp_num_EDs_connected+1)=temp(1,temp_num_zeros+1:end);
    end
            
    %rand_OTAA->rand_join
    if(1)%just for structuring
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_OTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs,calc_input_period);
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            
            temp_num_zeros=sum(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:)==0);
            temp_max_timestamp=max(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:));
            
            temp_num_EDs_connected=calc_input_EDs-temp_num_zeros;
            temp_max_ED_connected=max(temp_num_EDs_connected);
            temp_max_timestamp_overall=max(temp_max_timestamp);

            calc_rand_join_devices_connected=zeros(2,temp_max_ED_connected+2);
            calc_rand_join_devices_connected(1,1:temp_num_EDs_connected+1)=0:1:temp_max_ED_connected;
            temp=sort(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:))
            calc_rand_join_devices_connected(2,2:temp_num_EDs_connected+1)=temp(1,temp_num_zeros+1:end);
            if temp_num_zeros>0
                calc_rand_join_devices_connected(1,temp_num_EDs_connected+2:end)=temp_max_ED_connected;
                calc_rand_join_devices_connected(2,temp_num_EDs_connected+2:end)=temp_max_timestamp_overall;
            end            
    end
    
    %randx1->rand_activate
    if(1)%just for structuring
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_x1_3ch_%i_ED_%i_seconds.mat',calc_input_EDs,calc_input_period);
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            
            temp_num_zeros=sum(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:)==0);
            temp_max_timestamp=max(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:));
            
            temp_num_EDs_connected=calc_input_EDs-temp_num_zeros;
            temp_max_ED_connected=max(temp_num_EDs_connected);
            temp_max_timestamp_overall=max(temp_max_timestamp);

            calc_rand_activate_devices_connected=zeros(2,temp_max_ED_connected+2);
            calc_rand_activate_devices_connected(1,1:temp_num_EDs_connected+1)=0:1:temp_max_ED_connected;
            temp=sort(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:))
            calc_rand_activate_devices_connected(2,2:temp_num_EDs_connected+1)=temp(1,temp_num_zeros+1:end);
            
            if temp_num_zeros>0
                calc_rand_activate_devices_connected(1,temp_num_EDs_connected+2:end)=temp_max_ED_connected;
                calc_rand_activate_devices_connected(2,temp_num_EDs_connected+2:end)=temp_max_timestamp_overall;
            end 
    end
       
    %rand_data->rand_data
    if(1)%just for structuring
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_data_3ch_%i_ED_%i_seconds.mat',calc_input_EDs,calc_input_period);
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            
            temp_num_zeros=sum(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:)==0);
            temp_max_timestamp=max(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:));
            
            temp_num_EDs_connected=calc_input_EDs-temp_num_zeros;
            temp_max_ED_connected=max(temp_num_EDs_connected);
            temp_max_timestamp_overall=max(temp_max_timestamp);

            calc_rand_data_devices_connected=zeros(2,temp_max_ED_connected+2);
            calc_rand_data_devices_connected(1,1:temp_num_EDs_connected+1)=0:1:temp_max_ED_connected;
            temp=sort(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:))
            calc_rand_data_devices_connected(2,2:temp_num_EDs_connected+1)=temp(1,temp_num_zeros+1:end);
            
            if temp_num_zeros>0
                calc_rand_data_devices_connected(1,temp_num_EDs_connected+2:end)=temp_max_ED_connected;
                calc_rand_data_devices_connected(2,temp_num_EDs_connected+2:end)=temp_max_timestamp_overall;
            end 
    end
        
    %randOTAA->rand_all
    if(1)%just for structuring
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_randOTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs,calc_input_period);
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            
            temp_num_zeros=sum(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:)==0);
            temp_max_timestamp=max(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:));
            
            temp_num_EDs_connected=calc_input_EDs-temp_num_zeros;
            temp_max_ED_connected=max(temp_num_EDs_connected);
            temp_max_timestamp_overall=max(temp_max_timestamp);

            calc_rand_all_devices_connected=zeros(2,temp_max_ED_connected+2);
            calc_rand_all_devices_connected(1,1:temp_num_EDs_connected+1)=0:1:temp_max_ED_connected;
            temp=sort(result_iter_ED_connected_timestamp_perED(calc_conf_iteration,:))
            calc_rand_all_devices_connected(2,2:temp_num_EDs_connected+1)=temp(1,temp_num_zeros+1:end);
            
            if temp_num_zeros>0
                calc_rand_all_devices_connected(1,temp_num_EDs_connected+2:end)=temp_max_ED_connected;
                calc_rand_all_devices_connected(2,temp_num_EDs_connected+2:end)=temp_max_timestamp_overall;
            end 
    end
    
    temp_max_time=max([max(calc_base_devices_connected(2,:)) max(calc_rand_join_devices_connected(2,:))...
        max(calc_rand_activate_devices_connected(2,:)) max(calc_rand_data_devices_connected(2,:))...
        max(calc_rand_all_devices_connected(2,:))]);
    
    temp_max_time=temp_max_time+5000;
    calc_base_devices_connected(2,end)=temp_max_time;
    calc_rand_join_devices_connected(2,end)=temp_max_time;
    calc_rand_activate_devices_connected(2,end)=temp_max_time;
    calc_rand_data_devices_connected(2,end)=temp_max_time;
    calc_rand_all_devices_connected(2,end)=temp_max_time;
    
    temp_marker_size=15;
    close all;
    set(gcf, 'Color', 'w');
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 0.9 0.9]);
    set(gcf,'color','w');
    set(gca,'FontSize',18);  
    
    clearvars -except calc_*;

    stairs(calc_rand_all_devices_connected(2,:),calc_rand_all_devices_connected(1,:));  
    hold on;
    stairs(calc_rand_join_devices_connected(2,:),calc_rand_join_devices_connected(1,:));  
    hold on;
    stairs(calc_rand_activate_devices_connected(2,:),calc_rand_activate_devices_connected(1,:));      
    hold on;
    stairs(calc_rand_data_devices_connected(2,:),calc_rand_data_devices_connected(1,:));     
    hold on;    
    stairs(calc_base_devices_connected(2,:),calc_base_devices_connected(1,:));   
    hold on;

    %theoretical maximum
    num_devices=0;
    temp_calc_min_join_time_RX1_sec=calc_ToA_join_request_seconds(1)+5+calc_ToA_rx_join_accept(1);
    temp_calc_min_join_time_RX2_sec=calc_ToA_join_request_seconds(1)+6+calc_ToA_rx_join_accept(1);
    temp_calc_min_join_period_time_RX1_sec=calc_ToA_rx_join_accept(1)/0.01;
    temp_calc_min_join_period_time_RX2_sec=calc_ToA_rx_join_accept(1)/0.1;
    temp_calc_num_devices(1,:)=1:1:400;
    temp_calc_time_RX1_sec=temp_calc_min_join_time_RX1_sec;
    temp_calc_time_RX2_sec=temp_calc_min_join_time_RX2_sec;
    num_devices=0;
    while(num_devices<400)
        if(temp_calc_time_RX1_sec<temp_calc_time_RX2_sec)
            temp_calc_num_devices(2,num_devices+1)=temp_calc_time_RX1_sec;
            temp_calc_time_RX1_sec=temp_calc_time_RX1_sec+temp_calc_min_join_period_time_RX1_sec;
        else
            temp_calc_num_devices(2,num_devices+1)=temp_calc_time_RX2_sec;
            temp_calc_time_RX2_sec=temp_calc_time_RX2_sec+temp_calc_min_join_period_time_RX2_sec;           
        end
        num_devices=num_devices+1;
    end    
    %theory
    stairs(temp_calc_num_devices(2,:),temp_calc_num_devices(1,:));    
    hold on;
    
    ax = gca;
    ax.YAxis.FontSize = 24; %for y-axis 
    ax.XAxis.FontSize = 24; %for x-axis 
    %grid on;   
    
    lgd = legend('random delay for all frames','random delay for OTAA frames','random delay after activation','random delay for data frames','baseline','theoretic maximum');   
    lgd.FontSize = 18;
    lgd.NumColumns=3
    ylabel('Time, s','FontSize', 32);
    xlabel('Number of EDs','FontSize', 32);
    legend('Location','northoutside')
    
    switch calc_conf_plot
        case 1
            ylim([0 140])
            xlim([0 14000])            
            Filename='extra_160s_128ED_iter33_EDs_vs_time_whole.fig';
            savefig(Filename);
            Filename='extra_160s_128ED_iter33_EDs_vs_time_whole.png';
            saveas(gcf,Filename);            
        case 2
            ylim([65 130])
            xlim([1300 5000])            
            Filename='extra_160s_128ED_iter33_EDs_vs_time_zoomed.fig';
            savefig(Filename);
            Filename='extra_160s_128ED_iter33_EDs_vs_time_zoomed.png';
            saveas(gcf,Filename);                   
    end   
end

if 0
    %connection time (all nodes)
    clearvars calc_PDR_min calc_PDR_max calc_PDR_mean;
    calc_input_EDs=[128 64 32 16 8];
    calc_input_period=[160 200 240];
    
    calc_conf_period_index=3;
    
    %base 
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_base_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_base_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_base_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_base_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_base_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));             
        end
    end
  
    %rand_OTAA->rand_join
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_OTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_join_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_join_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_join_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_join_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end
    
    %randx1->rand_activate
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_x1_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_activate_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_activate_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_activate_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_activate_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end   
    
    %rand_data->rand_data
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_data_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_data_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_data_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_data_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_data_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end
    
    %randOTAA->rand_all
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_randOTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_all_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_all_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_all_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_all_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end    

    %calc_PDR_base_below=calc_PDR_base_mean-calc_PDR_base_min;
    %calc_PDR_base_above=calc_PDR_base_max-calc_PDR_base_mean;   
    %calc_temp_base=result_iter_GW_num_Data_messages_received_perED_all_connected./result_iter_ED_num_Data_messages_transmitted_perED_all_connecte;
    
    temp_marker_size=15;
    close all;
    set(gcf, 'Color', 'w');
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 0.9 0.9]);
    set(gcf,'color','w');
    set(gca,'FontSize',18);  
    
    x = [3:5:23]
    y=calc_rand_all_timestamp_connected_all_mean(:,calc_conf_period_index).'
    err=calc_rand_all_timestamp_connected_all_std(:,calc_conf_period_index).'
    xm=x-2;
    errorbar(xm,y,err,'vertical','o')
    hold on;
    
    y=calc_rand_join_timestamp_connected_all_mean(:,calc_conf_period_index)
    err=calc_rand_join_timestamp_connected_all_std(:,calc_conf_period_index)
    xm=x-1;
    errorbar(xm,y,err,'vertical','o')  
    
    y=calc_rand_activate_timestamp_connected_all_mean(:,calc_conf_period_index)
    err=calc_rand_activate_timestamp_connected_all_std(:,calc_conf_period_index)
    xm=x;
    errorbar(xm,y,err,'vertical','o')  
    
    y=calc_rand_data_timestamp_connected_all_mean(:,calc_conf_period_index)
    err=calc_rand_data_timestamp_connected_all_std(:,calc_conf_period_index)
    xm=x+1;
    errorbar(xm,y,err,'vertical','o')  
    hold on;
    
    y=calc_base_timestamp_connected_all_mean(:,calc_conf_period_index)
    err=calc_base_timestamp_connected_all_std(:,calc_conf_period_index)
    xm=x+2;
    errorbar(xm,y,err,'vertical','o')  
    
    xticks(x)
    %xticklabels({'8','16','32','64','128'})
    xticklabels({'128','64','32','16','8'})
    %ylim([0.2 1])
    
    ax = gca;
    ax.YAxis.FontSize = 24; %for y-axis 
    ax.XAxis.FontSize = 24; %for x-axis 
    %grid on;   
    
    lgd = legend('random delay for all frames','random delay for OTAA frames','random delay after activation','random delay for data frames','baseline');   
    lgd.FontSize = 18;
    lgd.NumColumns=3
    ylabel('Time, s','FontSize', 32);
    xlabel('Number of EDs','FontSize', 32);
    legend('Location','northoutside')
    
    switch calc_conf_period_index
        case 1
            Filename='extra_160s_time_allconnected_mean_std.fig';
            savefig(Filename);
            Filename='extra_160s_time_allconnected_mean_std.png';
            saveas(gcf,Filename);            
        case 2
            Filename='extra_200s_time_allconnected_mean_std.fig';
            savefig(Filename);
            Filename='extra_200s_time_allconnected_mean_std.png';
            saveas(gcf,Filename);            
        case 3
            Filename='extra_240s_time_allconnected_mean_std.fig';
            savefig(Filename);
            Filename='extra_240s_time_allconnected_mean_std.png';
            saveas(gcf,Filename);           
    end    
end


if 0
    %connection time (50 percent nodes)
    clearvars calc_PDR_min calc_PDR_max calc_PDR_mean;
    calc_input_EDs=[128 64 32 16 8];
    calc_input_period=[160 200 240];
    
    calc_conf_period_index=3;
    
    %base 
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_base_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_base_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_base_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_base_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_base_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));             
        end
    end
  
    %rand_OTAA->rand_join
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_OTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_join_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_join_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_join_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_join_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end
    
    %randx1->rand_activate
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_x1_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_activate_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_activate_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_activate_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_activate_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end   
    
    %rand_data->rand_data
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_data_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_data_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_data_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_data_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_data_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end
    
    %randOTAA->rand_all
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_randOTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            temp_timestamp_connected_randrand=sort(result_iter_ED_connected_timestamp_perED,2);
            temp_timestamp_connected_50percent_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED)/2);
            temp_timestamp_connected_all_randrand=temp_timestamp_connected_randrand(:,calc_input_EDs(calc_i_ED));
            calc_rand_all_timestamp_connected_50percent_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_50percent_randrand);
            calc_rand_all_timestamp_connected_50percent_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_50percent_randrand(:)));
            calc_rand_all_timestamp_connected_all_mean(calc_i_ED,calc_i_per)=mean(temp_timestamp_connected_all_randrand);
            calc_rand_all_timestamp_connected_all_std(calc_i_ED,calc_i_per)=std(rmmissing(temp_timestamp_connected_all_randrand(:)));           
          end
    end    

    %calc_PDR_base_below=calc_PDR_base_mean-calc_PDR_base_min;
    %calc_PDR_base_above=calc_PDR_base_max-calc_PDR_base_mean;   
    %calc_temp_base=result_iter_GW_num_Data_messages_received_perED_all_connected./result_iter_ED_num_Data_messages_transmitted_perED_all_connecte;
    
    temp_marker_size=15;
    close all;
    set(gcf, 'Color', 'w');
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 0.9 0.9]);
    set(gcf,'color','w');
    set(gca,'FontSize',18);  
    
    x = [3:5:23]
    y=calc_rand_all_timestamp_connected_50percent_mean(:,calc_conf_period_index).'
    err=calc_rand_all_timestamp_connected_50percent_std(:,calc_conf_period_index).'
    xm=x-2;
    errorbar(xm,y,err,'vertical','o')
    hold on;
    
    y=calc_rand_join_timestamp_connected_50percent_mean(:,calc_conf_period_index)
    err=calc_rand_join_timestamp_connected_50percent_std(:,calc_conf_period_index)
    xm=x-1;
    errorbar(xm,y,err,'vertical','o')  
    
    y=calc_rand_activate_timestamp_connected_50percent_mean(:,calc_conf_period_index)
    err=calc_rand_activate_timestamp_connected_50percent_std(:,calc_conf_period_index)
    xm=x;
    errorbar(xm,y,err,'vertical','o')  
    
    y=calc_rand_data_timestamp_connected_50percent_mean(:,calc_conf_period_index)
    err=calc_rand_data_timestamp_connected_50percent_std(:,calc_conf_period_index)
    xm=x+1;
    errorbar(xm,y,err,'vertical','o')  
    hold on;
    
    y=calc_base_timestamp_connected_50percent_mean(:,calc_conf_period_index)
    err=calc_base_timestamp_connected_50percent_std(:,calc_conf_period_index)
    xm=x+2;
    errorbar(xm,y,err,'vertical','o')  
    
    xticks(x)
    %xticklabels({'8','16','32','64','128'})
    xticklabels({'128','64','32','16','8'})
    %ylim([0.2 1])
    
    ax = gca;
    ax.YAxis.FontSize = 24; %for y-axis 
    ax.XAxis.FontSize = 24; %for x-axis 
    %grid on;   
    
    lgd = legend('random delay for all frames','random delay for OTAA frames','random delay after activation','random delay for data frames','baseline');   
    lgd.FontSize = 18;
    lgd.NumColumns=3
    ylabel('Time, s','FontSize', 32);
    xlabel('Number of EDs','FontSize', 32);
    legend('Location','northoutside')
    
    switch calc_conf_period_index
        case 1
            Filename='extra_160s_time_50percentconnected_mean_std.fig';
            savefig(Filename);
            Filename='extra_160s_time_50percentconnected_mean_std.png';
            saveas(gcf,Filename);            
        case 2
            Filename='extra_200s_time_50percentconnected_mean_std.fig';
            savefig(Filename);
            Filename='extra_200s_time_50percentconnected_mean_std.png';
            saveas(gcf,Filename);            
        case 3
            Filename='extra_240s_time_50percentconnected_mean_std.fig';
            savefig(Filename);
            Filename='extra_240s_time_50percentconnected_mean_std.png';
            saveas(gcf,Filename);           
    end    
end


if 1
    %distribution of PDR among EDs
    clearvars calc_PDR_min calc_PDR_max calc_PDR_mean;
    calc_input_EDs=[128 64 32 16 8];
    calc_input_period=[160 200 240];
    calc_conf_period_index=3;
    
    %base 
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_base_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            calc_temp_base=result_iter_GW_num_Data_messages_received_perED_all_connected./result_iter_ED_num_Data_messages_transmitted_perED_all_connecte;
            calc_base_PDR_devices_mean(calc_i_ED,calc_i_per)=mean(rmmissing(calc_temp_base),'all');
            calc_base_PDR_devices_std(calc_i_ED,calc_i_per)=std(rmmissing(calc_temp_base(:)));            
        end
    end
    
    %rand_OTAA->rand_join 
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_OTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            calc_temp_base=result_iter_GW_num_Data_messages_received_perED_all_connected./result_iter_ED_num_Data_messages_transmitted_perED_all_connecte;
            calc_rand_join_PDR_devices_mean(calc_i_ED,calc_i_per)=mean(rmmissing(calc_temp_base),'all');
            calc_rand_join_PDR_devices_std(calc_i_ED,calc_i_per)=std(rmmissing(calc_temp_base(:)));            
        end
    end    

    %randx1->rand_activate
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_x1_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            calc_temp_base=result_iter_GW_num_Data_messages_received_perED_all_connected./result_iter_ED_num_Data_messages_transmitted_perED_all_connecte;
            calc_rand_activate_PDR_devices_mean(calc_i_ED,calc_i_per)=mean(rmmissing(calc_temp_base),'all');
            calc_rand_activate_PDR_devices_std(calc_i_ED,calc_i_per)=std(rmmissing(calc_temp_base(:)));            
        end
    end  
    
    %rand_data->rand_data
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_rand_data_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            calc_temp_base=result_iter_GW_num_Data_messages_received_perED_all_connected./result_iter_ED_num_Data_messages_transmitted_perED_all_connecte;
            calc_rand_data_PDR_devices_mean(calc_i_ED,calc_i_per)=mean(rmmissing(calc_temp_base),'all');
            calc_rand_data_PDR_devices_std(calc_i_ED,calc_i_per)=std(rmmissing(calc_temp_base(:)));            
        end
    end  
    
    %randOTAA->rand_all
    for calc_i_ED=1:1:size(calc_input_EDs,2)
        for calc_i_per=1:1:size(calc_input_period,2)
            clearvars -except calc_*;
            temp_filename = sprintf('LoRaWAN_OTAA_randOTAA_3ch_%i_ED_%i_seconds.mat',calc_input_EDs(calc_i_ED),calc_input_period(calc_i_per));
            load(temp_filename);
            temp_num_iter=size(result_iter_GW_num_Data_messages_received_perED,1);
            calc_temp_base=result_iter_GW_num_Data_messages_received_perED_all_connected./result_iter_ED_num_Data_messages_transmitted_perED_all_connecte;
            calc_rand_all_PDR_devices_mean(calc_i_ED,calc_i_per)=mean(rmmissing(calc_temp_base),'all');
            calc_rand_all_PDR_devices_std(calc_i_ED,calc_i_per)=std(rmmissing(calc_temp_base(:)));            
        end
    end 
    
    temp_marker_size=15;
    close all;
    set(gcf, 'Color', 'w');
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 0.9 0.9]);
    set(gcf,'color','w');
    set(gca,'FontSize',18);  
    
    x = [3:5:23]
    y=calc_rand_all_PDR_devices_mean(:,calc_conf_period_index).'
    err=calc_rand_all_PDR_devices_std(:,calc_conf_period_index).'
    xm=x-2;
    errorbar(xm,y,err,'vertical','o')
    hold on;
    
    y=calc_rand_join_PDR_devices_mean(:,calc_conf_period_index)
    err=calc_rand_join_PDR_devices_std(:,calc_conf_period_index)
    xm=x-1;
    errorbar(xm,y,err,'vertical','o')  
    
    y=calc_rand_activate_PDR_devices_mean(:,calc_conf_period_index)
    err=calc_rand_activate_PDR_devices_std(:,calc_conf_period_index)
    xm=x;
    errorbar(xm,y,err,'vertical','o')  
    
    y=calc_rand_data_PDR_devices_mean(:,calc_conf_period_index)
    err=calc_rand_data_PDR_devices_std(:,calc_conf_period_index)
    xm=x+1;
    errorbar(xm,y,err,'vertical','o')  
    hold on;
    
    y=calc_base_PDR_devices_mean(:,calc_conf_period_index)
    err=calc_base_PDR_devices_std(:,calc_conf_period_index)
    xm=x+2;
    errorbar(xm,y,err,'vertical','o')  
    
    xticks(x)
    %xticklabels({'8','16','32','64','128'})
    xticklabels({'128','64','32','16','8'})
    ylim([0.0 1])
    
    ax = gca;
    ax.YAxis.FontSize = 24; %for y-axis 
    ax.XAxis.FontSize = 24; %for x-axis 
    %grid on;   
    
    lgd = legend('random delay for all frames','random delay for OTAA frames','random delay after activation','random delay for data frames','baseline');   
    lgd.FontSize = 18;
    lgd.NumColumns=3
    ylabel('Packet delivery probability','FontSize', 32);
    xlabel('Number of EDs','FontSize', 32);
    legend('Location','northoutside')
    
    if 1
        switch calc_conf_period_index
            case 1
                Filename='extra_160s_PDR_mean_std.fig';
                savefig(Filename);
                Filename='extra_160s_PDR_mean_std.png';
                saveas(gcf,Filename);            
            case 2
                Filename='extra_200s_PDR_mean_std.fig';
                savefig(Filename);
                Filename='extra_200s_PDR_mean_std.png';
                saveas(gcf,Filename);            
            case 3
                Filename='extra_240s_PDR_mean_std.fig';
                savefig(Filename);
                Filename='extra_240s_PDR_mean_std.png';
                saveas(gcf,Filename);           
        end
    end
end












