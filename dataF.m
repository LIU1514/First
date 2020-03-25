%分帧函数
function Frameout=dataF(x,Frame,Remove)
dataFx=length(x(:));            % 取数据长度
len = Frame;               % 帧长=Frame=矩形窗
dataFSumF = fix((dataFx-len+Remove)/Remove); % 计算帧数
Frameout=zeros(dataFSumF,len);            % 初始化
indf= Remove*(0:(dataFSumF-1)).';     % 设置每帧位移位置
inds = (1:len);             % 每帧数据对应1:len
Frameout(:) = x(indf(:,ones(1,len))+inds(ones(dataFSumF,1),:));   % 对数据分帧

