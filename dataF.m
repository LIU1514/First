%��֡����
function Frameout=dataF(x,Frame,Remove)
dataFx=length(x(:));            % ȡ���ݳ���
len = Frame;               % ֡��=Frame=���δ�
dataFSumF = fix((dataFx-len+Remove)/Remove); % ����֡��
Frameout=zeros(dataFSumF,len);            % ��ʼ��
indf= Remove*(0:(dataFSumF-1)).';     % ����ÿ֡λ��λ��
inds = (1:len);             % ÿ֡���ݶ�Ӧ1:len
Frameout(:) = x(indf(:,ones(1,len))+inds(ones(dataFSumF,1),:));   % �����ݷ�֡

