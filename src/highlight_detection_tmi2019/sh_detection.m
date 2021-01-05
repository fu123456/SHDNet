function highlight_mask = sh_detection(img,Ts,Tv)
% defalut optimal parameters
    if(~exist('Ts','var'))
        Ts=0.35;
    end
    if(~exist('Tv','var'))
        Tv=0.85;
    end
    img=im2double(img);
    [h,w,~]=size(img);
    HSV=rgb2hsv(img);
    hue=HSV(:,:,1);
    saturation=HSV(:,:,2);
    value=HSV(:,:,3);
    Ts=repmat(Ts,[h,w]);
    Tv=repmat(Tv,[h,w]);
    % if S(x) < T s and V (x) > T v , x belongs to highlight
    highlight_mask1= (1-exp((-2*max(Ts-saturation, 0).^2)/(0.01)));
    highlight_mask2= (1-exp((-2*max(value-Tv, 0).^2)/(0.01)));
    highlight_mask=highlight_mask1.*highlight_mask2;
end