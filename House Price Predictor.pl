% --- DATA ---
location_multiplier(suburbs, 50000).
location_multiplier(city_center, 150000).
location_multiplier(rural, 20000).

% --- LOGIC ---
calculate_price(Size, Rooms, Location, FinalPrice) :-
    location_multiplier(Location, LocValue),
    SizePrice is Size * 1000,
    RoomPrice is Rooms * 25000,
    FinalPrice is SizePrice + RoomPrice + LocValue.

% --- INTERFACE ---
start :-
    nl, write('--- House Price Predictor ---'), nl,
    
    write('Step 1: Enter size (e.g., 1500.)'), nl,
    read(Size),
    
    write('Step 2: Enter rooms (e.g., 3.)'), nl,
    read(Rooms),
    
    write('Step 3: Enter location (city_center. or suburbs. or rural.)'), nl,
    read(Location),
    
    (   location_multiplier(Location, _) ->
        calculate_price(Size, Rooms, Location, Price),
        nl, write('--- RESULT ---'), nl,
        write('PREDICTED PRICE: $'), write(Price), nl
    ;   write('Error: Invalid location entered.'), nl
    ),
    
    nl, write('Predict another? (yes. / no.)'), nl,
    read(Response),
    (Response == yes -> start ; write('Goodbye!'), nl, halt).

% --- THE INITIAL GOAL ---
% This tells GNU Prolog to run the 'start' predicate immediately upon execution.
:- initialization(start).