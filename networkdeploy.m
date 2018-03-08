function y = networkdeploy(number, range, scale)

parent = [0];
position = [[1:number]',rand(number,2)*range - range/2]; 
child = position;
route = {};
numlayer = 0;

while size(child,1) ~= 0
    flag = 1;%
    d = [];
    for i = 1 : 1 : size(parent, 1)
        p_id = parent(i,end);%%%%
        if p_id == 0
            p_x = 0;
            p_y = 0;
        else
            p_x = position(p_id,end-1);
            p_y = position(p_id,end);
        end
        for j =  1 : 1 : size(child, 1)

            c_id = child(j,1);
            c_x = child(j,end-1);
            c_y = child(j,end);
            
            if (c_x - p_x)^2 + (c_y - p_y)^2 <= scale^2 
                temp_route = {cell2mat(temp_route);[p_id,c_id]};
            end             
                flag = flag + 1;%
                d = [d;j];

        end
    end
    parent = route;
    for p = 1 : 1 : size(d,1)
        child(d(p,:)-p+1,:) = [];
    end

end

y = route;

end