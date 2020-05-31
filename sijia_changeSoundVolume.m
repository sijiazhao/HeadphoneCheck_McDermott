clear;

path_in = 'assets/';
s = dir([path_in, '*.wav']);
soundFiles = {s.name}';

path_out = 'assets_sijia/'; mkdir(path_out);

for i = 1:numel(soundFiles)
    filename = soundFiles{i};
    [signal,fs] = audioread([path_in filename]);
    
    %     figure(i);clf;
    %     subplot(2,1,1);
    %     plot(signal(:,1));
    %
    %     subplot(2,1,2);
    %     plot(signal(:,2));
    
    signal = signal*0.5;
    disp(num2str(max(signal)));
    
    audiowrite([path_out filename '.flac'],signal,fs);
end